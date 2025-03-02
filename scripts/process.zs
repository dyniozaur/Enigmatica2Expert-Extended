# ######################################################################
#
# process.zs
#
# Collects all machines's functions in one place
# using:
#   scripts.process.{action}([args]);
#
# Variable "exceptions" tells what machines should be excluded from adding recipes,
#   case unsensetive. Also can be reverted with keyword "only:" from left.
#   See functions body to see machine names.
#   Keyword "strict:" try to remove old recipe before add new (replacing recipe)
#   Warning: only few machines have "strict" functions.
#
#  "exceptions" variable examples:
# "macerator"                - recipe will me added in all machines except Macerator
# "MaceRATor"                - same as above
# "Except: Macerator oh my"  - same as above
# "macerator, SagMill"       - recipe will me added in all machines except Macerator and SagMill
# "only: Macerator"          - recipe will be added to Macerator only
# "only: Macerator SagMill"  - recipe will be added to Macerator and SagMill only
# "strict: manufactory"      - recipe will be added to Manufactory only, but removed old recipe first
# "maceratorSagMill"         - wrong, words should be delimited with word boundrys
# "only: blockCutter strict: shapeless" - added to blockCutter and shapeless,
#    but shapeless would be removed first
#
# ######################################################################


import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.data.IData;
import mods.jaopca.JAOPCA;
import mods.jaopca.OreEntry;

import scripts.processWork.work;
import scripts.processWork.workEx;
import scripts.processUtils.wholesCalc;

import mods.ctutils.utils.Math.min;
import mods.ctutils.utils.Math.max;

#priority 50

# ######################################################################
#
# Helpers
#
# ######################################################################

# Multiply item amount on double value
function iF(output as IItemStack, mult as double) as IItemStack  {
  if (isNull(output)) { return null; }
  return output * max(1, min(output.maxStackSize, (output.amount as double * mult) as int));
}

static fluidSteps as double[] = [144, 666, 100, 250] as double[];

# Multiply liquid amount on double value
function lF(output as ILiquidStack, mult as double) as ILiquidStack  {
  if (isNull(output)) { return null; }
  var damount = output.amount as double;
  var dresult = 0.0d;
  var dmult = damount * mult;
  for step in fluidSteps {
    if (dresult == 0.0d && damount % step == 0) {
      dresult = max(step, step * ((dmult / step) as int)) as double;
    }
  }
  if (dresult == 0) { dresult = dmult; }

  return output * (dresult as int);
}

# ######################################################################
#
# Aliases functions
#
# ######################################################################


# Use sawblade to split item into pieces
# 📦 → 📦
function saw(input as IIngredient, output as IItemStack, exceptions as string = null, extra as IItemStack = null, extraChance as float = 0.0f) {

  work(["shapeless", "BlockCutter", "mekSawmill", "manufactory", "TESawmill", "AdvRockCutter"],
    exceptions, [input], null, [output], null, [extra], [extraChance]);
}

# Takes Wood Log and saw it
# Item amount recalculated automatically
# Always output one type of wood dust
# 📦 → 📦
function sawWood(input as IIngredient, output as IItemStack, exceptions as string = null) {

  val pulp = <ore:dustWood>.firstItem;

  work(["shapeless"],    exceptions, [input], null, [output * 2], null, [pulp], null);
  work(["BlockCutter"],  exceptions, [input], null, [output * 4], null, [pulp], null);
  work(["mekSawmill"],   exceptions, [input], null, [output * 4], null, [pulp], null);
  work(["manufactory"],  exceptions, [input], null, [output * 5], null, [pulp], null);
  work(["TESawmill"],    exceptions, [input], null, [output * 6], null, [pulp], null);
  work(["AdvRockCutter"],exceptions, [input], null, [output *10], null, [pulp], null);
}

# Crush (grind) item to get it dusts and byproducts
# 📦 → 📦 + [📦]?
function crush(input as IIngredient, output as IItemStack, exceptions as string = null, extra as IItemStack[] = null, extraChance as float[] = null, opts as IData = null) {
  for machine in [
    "manufactory"  , "Macerator"  , "eu2Crusher"        ,
    "AACrusher"    , "IECrusher"  , "SagMill"           ,
    "Grindstone"   , "AEGrinder"  , "ThermalCentrifuge" ,
    "Pulverizer"   , "mekCrusher" , "crushingBlock"     ,
    "MekEnrichment",
  ] as string[] {
    workEx(machine, exceptions, [input], null, [output], null, extra, extraChance, opts);
  }
}

# Compress item to another
# 📦 → 📦
function compress(input as IIngredient, output as IItemStack, exceptions as string = null) {

  work(["Pressurizer", "Compressor", "Compactor"], exceptions, [input], null, [output], null, null, null);
}

# Enrich or Extract item from another
# 📦 → 📦
function extract(input as IIngredient, output as IItemStack, exceptions as string = null) {

  work(["extractor", "mekEnrichment"],    exceptions, [input], null, [output], null, null, null);
}

# Mash item. Use sharp knives on soft objects to turn them into pile of pieces
# 📦 → 📦
function mash(input as IIngredient, output as IItemStack, exceptions as string = null) {

  workEx("MetalPress", exceptions, [input], null, [output], null, null, null, {mold: "unpack"});
}

# Alloy two or more metals into one
# [📦+] → 📦
function alloy(input as IIngredient[], output as IItemStack, exceptions as string = null) {

  work(["alloyFurnace", "induction", "alloySmelter", "arcFurnance", "AdvRockArc", "kiln"],
    exceptions, input, null, [output], null, null, null);
}

# Takes plant or seed and grow it
# 📦 → 📦 + 📦?
function grow(input as IIngredient, output as IItemStack, exceptions as string = null,
      secondaryOutput as IItemStack = null, secondaryChance as float = 1.0f) {

  workEx("Insolator", exceptions, [input, <thermalfoundation:fertilizer>  ], null, [iF(output, 0.333f)], null, [secondaryOutput], [secondaryChance], {energy: 4800});
  workEx("Insolator", exceptions, [input, <thermalfoundation:fertilizer:1>], null, [iF(output, 0.666f)], null, [secondaryOutput], [secondaryChance], {energy: 7200});
  workEx("Insolator", exceptions, [input, <thermalfoundation:fertilizer:2>], null, [output            ], null, [secondaryOutput], [secondaryChance], {energy: 9600});

  # Hydroponics special behaviour
  val maxFertilizers = 8.0d;
  val a = min(64, max(1.0f, (1.0f - output.amount as float / 16.0f) * maxFertilizers) as int);
  val combo = [
    <minecraft:dye:15> * a,
    <mysticalagriculture:mystical_fertilizer> * a,
    <actuallyadditions:item_fertilizer> * a,
    <forestry:fertilizer_compound> * a,
    <industrialforegoing:fertilizer> * a,
    <thermalfoundation:fertilizer:2> * a,
    input * 5,
  ] as IIngredient[];
  work(["Hydroponics"], exceptions, combo, [<fluid:water> * 40000], [output * (64 * 3)], null, !isNull(secondaryOutput) ? [secondaryOutput * 5] : null, [secondaryChance]);
}

# Crushing rocks (like granite, andesite, etc..) to obtain dusts
# 📦 → [📦📦📦]
function crushRock(input as IIngredient, output as IItemStack[], chances as float[] = null, exceptions as string = null) {

  work(["rockCrusher", "crushingBlock"], exceptions, [input], null, null, null, output, chances);
}

# Takes soft or moist item, squeeze it to get liquid or another item
# 📦 → 💧? + 📦?
function squeeze(input as IIngredient[], fluidOutput as ILiquidStack, exceptions as string = null, itemOutput as IItemStack = null) {

  work(["CrushingTub"],         exceptions, input, null, [iF(itemOutput, 0.5d)],  [lF(fluidOutput, 0.5d)],      null, null);
  work(["Squeezer"],            exceptions, input, null, [iF(itemOutput, 0.5d)],  [lF(fluidOutput, 0.666667d)], null, null);
  work(["MechanicalSqueezer"],  exceptions, input, null, [iF(itemOutput, 0.5d)],  [lF(fluidOutput, 0.75d)],     null, null);
  work(["ForestrySqueezer"],    exceptions, input, null, [iF(itemOutput, 0.5d)],  [lF(fluidOutput, 0.9d)],      null, null);
  work(["TECentrifuge"],        exceptions, input, null, [iF(itemOutput, 0.75d)], [fluidOutput], null, null);
  work(["IndustrialSqueezer"],  exceptions, input, null, [itemOutput], [fluidOutput], null, null);
  work(["FluidExtractor"],      exceptions, input, null, [itemOutput], [fluidOutput], null, null);
}

# Solute (mix, dissolve) 1+ items in 1+ liquids to get new 1+ liquids
# [📦+] ⤵
#         [💧+]
# [💧+]  ⤴
function solution(inputItems as IIngredient[], inputLiquids as ILiquidStack[], outputLiquids as ILiquidStack[], inputChance as float[] = null, exceptions as string = null) {

  work(["vat", "canner", "fluidenricher", "highoven", "ChemicalReactor", "Mixer"],
    exceptions, inputItems, inputLiquids, null, outputLiquids, null, inputChance);
}

# Electrolyze
# 💧 → [💧+]
function electrolyze(inputLiquid as ILiquidStack, outputLiquids as ILiquidStack[], exceptions as string = null) {

  work(["NCelectrolyzer", "AdvRockElectrolyzer"], exceptions, null, [inputLiquid], null, outputLiquids, null, null);

  # Temporary disabled during IC2 Tweaker bug
  # work(["ic2electrolyzer"],    exceptions, null, [inputLiquid], null, outputLiquids, null, null);
}

# Evaporate (dry) liquid to leave precipitate
# 💧 → 📦
function evaporate(inputLiquid as ILiquidStack, output as IItemStack, exceptions as string = null) {

  work(["EvaporatingBasin"],      exceptions, null, [inputLiquid], [iF(output, 0.5d)],  null, null, null);
  work(["DryingBasin"],           exceptions, null, [inputLiquid], [iF(output, 0.75d)], null, null, null);
  work(["MechanicalDryingBasin"], exceptions, null, [inputLiquid], [iF(output, 1.0d)],  null, null, null);
}

# Perform recycling on item made from metal
# Output can be liquid or item form, based on machine
# 📦 → 📦|💧
function recycleMetal(input as IIngredient, output as IItemStack, liquid as ILiquidStack = null, exceptions as string = null) {

  work(["arcFurnance"], exceptions, [input], null, [output], null, null, null);
  work(["induction"],   exceptions, [input, <minecraft:sand>], null, [output], null, [itemUtils.getItem("thermalfoundation:material",864)], [0.1f]);

  if (!isNull(liquid)) {
    work(["smeltery"],    exceptions, [input], null, [output], [lF(liquid, 0.75d)], null, null);
  }
}

# Melts item in liquid form
# 📦 → 💧
function melt(input as IIngredient, output as ILiquidStack, exceptions as string = null, options as IData = null) {

  work(["smeltery", "melter", "crucible"],   exceptions, [input], null, null, [output], null, null, options);
}

# Fill an item with liquid
# 📦 ⤵
#     📦
# 💧  ⤴
function fill(itemInput as IIngredient, fluidInput as ILiquidStack, output as IItemStack, exceptions as string = null) {

  val newAmount1 = min(1000, lF(fluidInput, 1.6d).amount);
  val newAmount2 = min(1000, lF(fluidInput, 1.4d).amount);
  work(["Casting"],                exceptions, [itemInput], [lF(fluidInput, 1.8d)], [output], null, null, null);
  work(["DryingBasin"],            exceptions, [itemInput], [fluidInput * newAmount1], [output], null, null, null);
  work(["MechanicalDryingBasin"],  exceptions, [itemInput], [fluidInput * newAmount2], [output], null, null, null);
  work(["NCInfuser"],              exceptions, [itemInput], [lF(fluidInput, 1.2d)], [output], null, null, null);
  work(["Transposer"],             exceptions, [itemInput], [fluidInput], [output], null, null, null);
}

# Perfor some magic over item(s) to create new item(s)
# [📦+] → [📦+]
function magic(input as IIngredient[], output as IItemStack[], exceptions as string = null) {

  work(["starlightInfuser"], exceptions, input, null, output, null, null, null);
}

# Takes raw material (like Ore block) and enrich (process, treat) it to get materials
# 📦 → 📦|💧
function beneficiate(
  _input as IIngredient,    # Raw item (mostly ore) that would be processed (amount account)
  _oreName as string,       # Ore name of this material, for example "Gold"
  _amount as double = 1.0d, # Amount of default simple output (like smelting ore in furnace)
  opts as IData = null,     # Special options
  step as int = 1           # Each next tier of machine add this amount to output
) {

  val calc = wholesCalc(_input.amount, _amount);
  val amount = calc.outs as int;
  val newOutAmount = _input.amount * calc.ins as int;
  val input = (newOutAmount == 1 && _input.amount == 1) ? _input : _input * newOutAmount;

  val oreName = (_oreName == "Aluminum") ? "Aluminium" : _oreName;

  var exceptions = D(opts).getString('exceptions','');
  exceptions = exceptions==''?null:exceptions;

  # Determine extra output based on JAOPCA
  val JA = mods.jaopca.JAOPCA.getOre(oreName);
  var extraChances = [
    min(1.0, 1.0/6 * amount),
    min(1.0, 0.1   * amount),
    min(1.0, 0.05  * amount)] as float[];

  # Infernal Furnace
  if (!isNull(JA)) {
    val outTriple = (amount as double * calc.out1 as double) as int;
    val nuggetExtra = utils.getSomething(JA.secondExtraName, ["nugget"], outTriple);
    if (!isNull(nuggetExtra)) {
      val input1 = input.itemArray[0].anyAmount();
      workEx("infernalfurnace", exceptions, [input1], null, null, null, [nuggetExtra], extraChances, null);
    }
  }

  # Crush Dust or Gem
  val dustOrGem = utils.getSomething(oreName, ["dust", "gem", "any"], amount + step);
  if (!isNull(dustOrGem)) {
    var extraList = [] as IItemStack[];
    if (!isNull(JA)) {
      var cx as IItemStack = null;
      cx = utils.getSomething(JA.extraName,       ["dust", "gem"]); if (!isNull(cx)) extraList += cx;
      cx = utils.getSomething(JA.secondExtraName, ["dust", "gem"]); if (!isNull(cx)) extraList += cx;
      cx = utils.getSomething(JA.thirdExtraName,  ["dust", "gem"]); if (!isNull(cx)) extraList += cx;
    }
    crush(input, dustOrGem, exceptions ~ "macerator thermalCentrifuge crushingBlock", extraList, extraChances, {bonusType: "MULTIPLY_OUTPUT"});
  }

  # Crush IC2
  val crushedOrDust = utils.getSomething(oreName, ["crushed", "dust", "any"], amount + step);
  if (!isNull(crushedOrDust)) {
    crush(input, crushedOrDust, "only: macerator", null, null);
  }

  # Magic
  val ingotOrGem = utils.getSomething(oreName, ["ingot", "gem", "any"], amount + step * 2);
  if (!isNull(ingotOrGem)) {
    magic([input], [ingotOrGem], exceptions);
  }

  # Melt
  val molten as ILiquidStack = !isNull(JA) ? JA.getLiquidStack("molten") : null;
  val altLiquid as ILiquidStack = game.getLiquid((oreName=='Aluminium'?'Aluminum':oreName).toLowerCase());
  val liquid = isNull(molten) ? altLiquid : molten;
  if (!isNull(liquid) && !isNull(JA)) {
    var meltingExceptions = D(opts).get('meltingExceptions',{d:[]}).asList();
    var meltAllowed = true;
    for meltExc in meltingExceptions { if(meltExc.asString() == oreName) meltAllowed=false; }
    if(meltAllowed) {
      if (JA.oreType.toLowerCase() == "ingot") { melt(input * 1, liquid * (144*(amount + step) / input.amount), exceptions); }
      if (JA.oreType.toLowerCase() == "gem")   { melt(input * 1, liquid * (666*(amount + step) / input.amount), exceptions); }
    }
  }

  # Mekanism machines can't work with NBT tags for inputs
  # So check if we have NBT first
  if (!input.itemArray[0].hasTag) {

    val clump = utils.getSomething(oreName, ["clump"], amount + step * 2);
    if(!isNull(clump)) {
      workEx("mekpurification", exceptions, [input], null, [clump], null, null, null, null);
    }

    val slurryName = "slurry" ~ oreName;
    val slurry = mods.mekanism.MekanismHelper.getGas(slurryName);
    if(!isNull(slurry)) {
      val gasAmount = (amount + step * 4) * 200;
      workEx("mekdissolution", exceptions, [input], null, null, null, null, null, {gasOutput: slurryName, gasOutputAmount: gasAmount});
    }

    val shard = utils.getSomething(oreName, ["shard"], amount + step * 3);
    if(!isNull(shard)) {
      workEx("mekinjection", exceptions, [input], null, [shard], null, null, null, null);
    }
  }
}