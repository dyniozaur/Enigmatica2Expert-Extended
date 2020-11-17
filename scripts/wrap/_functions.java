// This file contains all functions that should bee looked up from .zs files
// Blocks of comments like "//" or "/**/" ignored
// Empty lines is ignored

mods.bloodmagic.AlchemyArray.addRecipe(IItemStack output, IItemStack input, IItemStack catalyst, @Optional string textureLocation)
mods.bloodmagic.AlchemyTable.addRecipe(IItemStack output, IItemStack[] inputs, int syphon, int ticks, int minTier)
// mods.bloodmagic.AlchemyTable.addPotionRecipe(IItemStack[] inputs, IPotionEffect effects, int syphon, int ticks, int minTier)
mods.bloodmagic.BloodAltar.addRecipe(IItemStack output, IItemStack input, int minimumTier, int syphon, int consumeRate, int drainRate)
mods.bloodmagic.TartaricForge.addRecipe(IItemStack output, IIngredient[] inputs, double minSouls, double soulDrain)

mods.appliedenergistics2.Grinder.addRecipe(IItemStack output, IItemStack input, int turns, @Optional IItemStack secondary1Output, @Optional float secondary1Chance, @Optional IItemStack secondary2Output, @Optional float secondary2Chance)
mods.appliedenergistics2.Inscriber.addRecipe(IItemStack output, IItemStack input, boolean inscribe, @Optional IItemStack topInput, @Optional IItemStack bottomInput)

mods.enderio.AlloySmelter.addRecipe(IItemStack output, IIngredient[] input, @Optional int energyCost, @Optional float xp)
// mods.enderio.Enchanter.addRecipe(IEnchantmentDefinition output, IIngredient input, int amountPerLevel, double costMultiplier)
mods.enderio.SagMill.addRecipe(IItemStack[] output, float[] chances, IIngredient input, @Optional String bonusType, @Optional int energyCost, @Optional float[] xp)
mods.enderio.SliceNSplice.addRecipe(IItemStack output, IIngredient[] input, @Optional int energyCost, @Optional float xp)
mods.enderio.SoulBinder.addRecipe(IItemStack output, IIngredient input, String[] entities, int xp, int energyCost)
mods.enderio.Vat.addRecipe(ILiquidStack output, ILiquidStack input, IIngredient[] slot1Solids, float[] slot1Mults, IIngredient[] slot2Solids, float[] slot2Mults, @Optional int energyCost)

mods.exnihilocreatio.Compost.addRecipe(IIngredient, Float chance, String color, IItemStack)
mods.exnihilocreatio.Crook.addRecipe(IIngredient, IItemStack, Float, Float)
mods.exnihilocreatio.Hammer.addRecipe(IIngredient, IItemStack, Int, Float, Float)
mods.exnihilocreatio.Sieve.addStringMeshRecipe(IIngredient, IItemStack, Float chance)

mods.ic2.BlastFurnace.addRecipe(IItemStack[] outputs, IIngredient input, int totalFluidCost, int time)
mods.ic2.BlockCutter.addRecipe(IItemStack output, IIngredient input, @Optional int hardness)
mods.ic2.Canner.addBottleRecipe(IItemStack output, IIngredient container, IIngredient filler)
mods.ic2.Canner.addEnrichRecipe(ILiquidStack output, ILiquidStack input, IIngredient additive)
mods.ic2.Compressor.addRecipe(IItemStack output, IIngredient input)
mods.ic2.Electrolyzer.addRecipe(ILiquidStack[] outputs, ILiquidStack input, int power, @Optional int time)
mods.ic2.Extractor.addRecipe(IItemStack output, IIngredient input)
mods.ic2.Fermenter.addRecipe(ILiquidStack output, ILiquidStack input, int heat)
mods.ic2.HeatExchanger.addFluidCoolDown(ILiquidStack output, ILiquidStack input, int heat)
mods.ic2.HeatExchanger.addFluidCoolDown(ILiquidDefinition output, ILiquidDefinition input, int heat)
mods.ic2.HeatExchanger.addFluidHeatUp(ILiquidStack output, ILiquidStack input, int heat)
mods.ic2.HeatExchanger.addFluidHeatUp(ILiquidDefinition output, ILiquidDefinition input, int heat)
mods.ic2.Macerator.addRecipe(IItemStack output, IIngredient input)
mods.ic2.MetalFormer.addCuttingRecipe(IItemStack output, IIngredient input)
mods.ic2.MetalFormer.addExtrudingRecipe(IItemStack output, IIngredient input)
mods.ic2.MetalFormer.addRollingRecipe(IItemStack output, IIngredient input)
mods.ic2.OreWasher.addRecipe(IItemStack[] outputs, IIngredient input, @Optional int water)
mods.ic2.Recycler.addBlacklist(IIngredient ingredient)
mods.ic2.ScrapBox.addDrop(WeightedItemStack weightedItem)
mods.ic2.ScrapBox.addDrop(IItemStack item, float weight)
mods.ic2.SemiFluidGenerator.addFluid(ILiquidStack liquid, double powerOutput)
mods.ic2.ThermalCentrifuge.addRecipe(IItemStack[] outputs, IIngredient input, @Optional int minHeat)

mods.immersiveengineering.AlloySmelter.addRecipe(IItemStack output, IIngredient first, IIngredient second, int time)
mods.immersiveengineering.ArcFurnace.addRecipe(IItemStack output, IIngredient input, IItemStack slag, int time, int energyPerTick, @Optional IIngredient[] additives, @Optional String specialRecipeType)
mods.immersiveengineering.BlastFurnace.addRecipe(IItemStack output, IIngredient input, int time, @Optional IItemStack slag)
mods.immersiveengineering.BlastFurnace.addFuel(IIngredient input, int time)
mods.immersiveengineering.Blueprint.addRecipe(String category, IItemStack output, IIngredient[] inputs)
mods.immersiveengineering.BottlingMachine.addRecipe(IItemStack output, IIngredient input, ILiquidStack fluid)
mods.immersiveengineering.CokeOven.addRecipe(IItemStack output, int fuelOutput, IIngredient input, int time)
mods.immersiveengineering.Crusher.addRecipe(IItemStack output, IIngredient input, int energy, @Optional IItemStack secondaryOutput, @Optional double secondaryChance)
mods.immersiveengineering.DieselHandler.addFuel(ILiquidStack fuel, int time)
mods.immersiveengineering.DieselHandler.addDrillFuel(ILiquidStack fuel)
mods.immersiveengineering.Fermenter.addRecipe(IItemStack output, ILiquidStack fluid, IIngredient input, int energy)
mods.immersiveengineering.MetalPress.addRecipe(IItemStack output, IIngredient input, IItemStack mold, int energy, @Optional int inputSize)
mods.immersiveengineering.Mixer.addRecipe(ILiquidStack output, ILiquidStack fluidInput, IIngredient[] itemInputs, int energy)
mods.immersiveengineering.Refinery.addRecipe(ILiquidStack output, ILiquidStack input0, ILiquidStack input1, int energy)
mods.immersiveengineering.Squeezer.addRecipe(IItemStack output, ILiquidStack fluid, IIngredient input, int energy)
// mods.immersiveengineering.Thermoelectric.addTemperatureSource(IIngredient source, int temperature)
// mods.immersiveengineering.Excavator.addMineral(String name, int mineralWeight, double failChance, String[] ores, double[] chances, @Optional int[] dimensionWhitelist, @Optional boolean blacklist)
mods.immersivepetroleum.Distillation.addRecipe(ILiquidStack[] fluidOutputs, IItemStack[] itemOutputs, ILiquidStack fluidInput, int energy, int time, float[] chance)
mods.immersivepetroleum.Motorboat.registerMotorboatFuel(ILiquidStack fuelEntry, int mbPerTick)
mods.immersivepetroleum.PortableGenerator.registerPortableGenFuel(ILiquidStack fuelEntry, int fluxPerTick, int mbPerTick)
mods.immersivepetroleum.Lubricant.registerLubricant(ILiquidStack lubricantEntry, int amount)
mods.immersivepetroleum.Reservoir.registerReservoir(String name, ILiquidStack fluid, int minSize, int maxSize, int replenishRate, int weight)

mods.industrialforegoing.SludgeRefiner.add(IItemStack output, int ItemWeight)
mods.industrialforegoing.Extractor.add(IItemStack output, ILiquidStack fluid)

mods.integrateddynamics.DryingBasin.addRecipe(IItemStack inputStack, @Optional ILiquidStack inputFluid, @Optional IItemStack outputStack, @Optional ILiquidStack outputFluid, @Optional int duration)
mods.integrateddynamics.MechanicalDryingBasin.addRecipe(IItemStack inputStack, @Optional ILiquidStack inputFluid, @Optional IItemStack outputStack, @Optional ILiquidStack outputFluid, @Optional int duration)
mods.integrateddynamics.MechanicalSqueezer.addRecipe(IItemStack, IItemStack, float, IItemStack, float, ILiquidStack)
mods.integrateddynamics.MechanicalSqueezer.addRecipe(IItemStack, IItemStack, float, IItemStack, float, IItemStack, float, ILiquidStack)
mods.integrateddynamics.Squeezer.addRecipe(IItemStack, IItemStack, float, IItemStack, float, ILiquidStack)
mods.integrateddynamics.Squeezer.addRecipe(IItemStack, IItemStack, float, IItemStack, float, IItemStack, float, ILiquidStack)

mods.mekanism.chemical.crystallizer.addRecipe(IGasStack inputGas, IItemStack outputStack)
mods.mekanism.chemical.dissolution.addRecipe(IIngredient inputStack, IGasStack outputGas)
mods.mekanism.chemical.infuser.addRecipe(IGasStack inputGas1, IGasStack inputGas2, IGasStack outputGas)
mods.mekanism.chemical.injection.addRecipe(IIngredient inputStack, IGasStack inputGas, IItemStack outputStack)
mods.mekanism.chemical.oxidizer.addRecipe(IIngredient inputStack, IGasStack outputGas)
mods.mekanism.chemical.washer.addRecipe(IGasStack inputGas, IGasStack outputGas)
mods.mekanism.combiner.addRecipe(IIngredient itemInput, /* @Optional IIngredient extraInput,  */IItemStack itemOutput)
mods.mekanism.crusher.addRecipe(IIngredient inputStack, IItemStack outputStack)
mods.mekanism.separator.addRecipe(ILiquidStack inputFluid, double inputRF, IGasStack outputGas1, IGasStack outputGas2)
mods.mekanism.smelter.addRecipe(IIngredient inputStack, IItemStack outputStack)
mods.mekanism.enrichment.addRecipe(IIngredient inputStack, IItemStack outputStack)
mods.mekanism.GasConversion.register(IIngredient ingredient, IGasStack gas)
mods.mekanism.GasConversion.unregister(IIngredient ingredient, IGasStack gas)
mods.mekanism.infuser.addRecipe(String infusionType, int infusionConsumed, IIngredient inputStack, IItemStack outputStack)
mods.mekanism.compressor.addRecipe(IIngredient inputStack, /* @Optional IGasStack inputGas,  */IItemStack outputStack)
mods.mekanism.sawmill.addRecipe(IIngredient inputStack, IItemStack outputStack, @Optional IItemStack bonusOutput, @Optional double bonusChance)
mods.mekanism.reaction.addRecipe(IIngredient itemInput, ILiquidStack liquidInput, IGasStack gasInput, IItemStack itemOutput, IGasStack gasOutput, double energy, int duration)
mods.mekanism.purification.addRecipe(IIngredient itemInput, /* @Optional IGasStack gasInput,  */IItemStack itemOutput)
mods.mekanism.solarneutronactivator.addRecipe(IGasStack gasInput, IGasStack gasOutput)
mods.mekanism.thermalevaporation.addRecipe(ILiquidStack liquidInput, ILiquidStack liquidOutput)

mods.actuallyadditions.AtomicReconstructor.addRecipe(IItemStack output, IItemStack input, int energyUsed)
mods.actuallyadditions.BallOfFur.addReturn(IItemStack output, int chance)
mods.actuallyadditions.Compost.addRecipe(IItemStack output, IItemStack outputDisplay, IItemStack input, IItemStack inputDisplay)
mods.actuallyadditions.Crusher.addRecipe(IItemStack output, IItemStack input, @Optional IItemStack outputSecondary, @Optional int outputSecondaryChance)
mods.actuallyadditions.Empowerer.addRecipe(IItemStack output, IItemStack input, IItemStack modifier1, IItemStack modifier2, IItemStack modifier3, IItemStack modifier4, int energyPerStand, int time)
mods.actuallyadditions.Empowerer.addRecipe(IItemStack output, IItemStack input, IItemStack modifier1, IItemStack modifier2, IItemStack modifier3, IItemStack modifier4, int energyPerStand, int time, float[] particleColourArray)
// mods.actuallyadditions.MiningLens.addStoneOre(IOreDictEntry ore, int weight)
// mods.actuallyadditions.MiningLens.addNetherOre(IOreDictEntry ore, int weight)
mods.actuallyadditions.OilGen.addRecipe(ILiquidStack fluid, int genAmount)
mods.actuallyadditions.OilGen.addRecipe(ILiquidStack fluid, int genAmount, int genTime)
mods.actuallyadditions.TreasureChest.addLoot(IItemStack returnItem, int chance, int minAmount, int maxAmount)

// mods.botania.Apothecary.addRecipe(IItemStack output, IIngredient[] input)
// mods.botania.Apothecary.addRecipe(String output, IIngredient[] input)
// mods.botania.Brew.addRecipe(IIngredient[] input, String brewName)
// mods.botania.ElvenTrade.addRecipe(IIngredient[] outputs, IIngredient[] input)
// mods.botania.ManaInfusion.addInfusion(IItemStack output, IIngredient input, int mana)
// mods.botania.ManaInfusion.addAlchemy(IItemStack output, IIngredient input, int mana)
// mods.botania.ManaInfusion.addConjuration(IItemStack output, IIngredient input, int mana)
// mods.botania.Orechid.addOre(IOreDictEntry oreDict, int weight)
// mods.botania.Orechid.addOre(String oreDict, int weight)
// mods.botania.OrechidIgnem.addOre(IOreDictEntry oreDict, int weight)
// mods.botania.OrechidIgnem.addOre(String oreDict, int weight)
mods.botania.PureDaisy.addRecipe(IIngredient blockInput, IItemStack blockOutput, @Optional int time)
// mods.botania.RuneAltar.addRecipe(IItemStack output, IIngredient[] input, int mana)

mods.extrautils2.Crusher.add(IItemStack output, IItemStack input, @Optional IItemStack secondaryOutput, @Optional float secondaryChance)
mods.extrautils2.Resonator.add(IItemStack output, IItemStack input, int energy, @Optional boolean addOwnerTag)

mods.forestry.Carpenter.addRecipe(IItemStack output, IIngredient[][] ingredients, int packagingTime, @Optional ILiquidStack fluidInput, @Optional IItemStack box)
mods.forestry.Centrifuge.addRecipe(WeightedItemStack[] output, IItemStack ingredients, int packagingTime)
mods.forestry.CharcoalWall.addWall(IBlock block, int amount)
// mods.forestry.CharcoalWall.addWallState(IBlockState state, int amount)
mods.forestry.CharcoalWall.addWallStack(IItemStack stack, int amount)
mods.forestry.Fermenter.addRecipe(ILiquidStack fluidOutput, IItemStack resource, ILiquidStack fluidInput, int fermentationValue, float fluidOutputModifier)
mods.forestry.Fermenter.addFuel(IItemStack item, int fermentPerCycle, int burnDuration)
mods.forestry.Moistener.addRecipe(IItemStack output, IItemStack input, int packagingTime)
mods.forestry.Moistener.addFuel(IItemStack item, IItemStack product, int moistenerValue, int stage)
mods.forestry.Squeezer.addRecipe(ILiquidStack fluidOutput, IItemStack[] ingredients, int timePerItem, @Optional WeightedItemStack itemOutput)
mods.forestry.Still.addRecipe(ILiquidStack fluidOutput, ILiquidStack fluidInput, int timePerUnit)
mods.forestry.ThermionicFabricator.addCast(IItemStack output, IIngredient[][] ingredients, ILiquidStack liquidStack, @Optional IItemStack plan)
mods.forestry.ThermionicFabricator.addSmelting(ILiquidStack liquidStack, IItemStack itemInput, int meltingPoint)

mods.tcomplement.Blacklist.addRecipe(ILiquidStack output, IItemStack input)
mods.tcomplement.Overrides.addRecipe(ILiquidStack output, IItemStack input, @Optional int temp)

mods.tconstruct.Alloy.addRecipe(ILiquidStack output, ILiquidStack[] inputs)
mods.tconstruct.Casting.addTableRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time)
mods.tconstruct.Casting.addBasinRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time)
mods.tconstruct.Drying.addRecipe(IItemStack output, IIngredient input, int time)
// mods.tconstruct.Fuel.registerFuel(ILiquidStack fuel, int duration)
mods.tconstruct.Melting.addRecipe(ILiquidStack output, IIngredient input, @Optional int temp)

mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(String name, String research, int vis, CTAspectStack[] aspectList, IItemStack output, IIngredient[][] input)
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe(String name, String research, int vis, CTAspectStack[] aspectList, IItemStack output, IIngredient[] input)
mods.thaumcraft.Crucible.registerRecipe(String name, String researchKey, IItemStack output, IIngredient input, CTAspectStack[] aspects)
mods.thaumcraft.Infusion.registerRecipe(String name, String research, IItemStack output, int instability, CTAspectStack[] aspects, IIngredient centralItem, IIngredient[] recipe)
mods.thaumcraft.LootBag.addLoot(WeightedItemStack stack, int[] bagTypes)
mods.thaumcraft.SalisMundus.addSingleConversion(IBlock in, IItemStack out, @Optional String research)
mods.thaumcraft.SalisMundus.addSingleConversion(IOreDictEntry in, IItemStack out, @Optional String research)
mods.thaumcraft.SalisMundus.addSingleConversion(IOreDictEntry in, IItemStack out, @Optional String research)
mods.thaumcraft.SmeltingBonus.addSmeltingBonus(IIngredient input, WeightedItemStack stack)
mods.thaumcraft.Warp.setWarp(IItemStack stack, int amount)

mods.thermalexpansion.Centrifuge.addRecipe(WeightedItemStack[] outputs, IItemStack input, ILiquidStack fluid, int energy)
// mods.thermalexpansion.Centrifuge.addRecipeMob(IEntityDefinition entity, WeightedItemStack[] outputs, @Nullable ILiquidStack fluid, int energy, int xp)
mods.thermalexpansion.Compactor.addMintRecipe(IItemStack output, IItemStack input, int energy)
mods.thermalexpansion.Compactor.addPressRecipe(IItemStack output, IItemStack input, int energy)
mods.thermalexpansion.Compactor.addStorageRecipe(IItemStack output, IItemStack input, int energy)
mods.thermalexpansion.Compactor.addGearRecipe(IItemStack output, IItemStack input, int energy)
// mods.thermalexpansion.Coolant.addCoolant(ILiquidStack fluid, int coolantRf, int coolantFactor)
mods.thermalexpansion.Crucible.addRecipe(ILiquidStack output, IItemStack input, int energy)
mods.thermalexpansion.Enchanter.addRecipe(IItemStack output, IItemStack input, IItemStack secondInput, int energy, int experience, boolean empowered)
mods.thermalexpansion.Infuser.addRecipe(IItemStack output, IItemStack input, int energy)
mods.thermalexpansion.Factorizer.addRecipeSplit(IItemStack in, IItemStack out)
mods.thermalexpansion.Factorizer.addRecipeCombine(IItemStack in, IItemStack out)
mods.thermalexpansion.Factorizer.addRecipeBoth(IItemStack combined, IItemStack split)
mods.thermalexpansion.Transposer.addExtractRecipe(ILiquidStack output, IItemStack input, int energy)
mods.thermalexpansion.Transposer.addExtractRecipe(ILiquidStack output, IItemStack input, int energy, WeightedItemStack itemOut)
mods.thermalexpansion.Transposer.addFillRecipe(IItemStack output, IItemStack input, ILiquidStack fluid, int energy)
mods.thermalexpansion.Imbuer.addRecipe(ILiquidStack output, IItemStack input, ILiquidStack inputFluid, int energy)
mods.thermalexpansion.InductionSmelter.addRecipe(IItemStack primaryOutput, IItemStack primaryInput, IItemStack secondaryInput, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance)
mods.thermalexpansion.Insolator.addRecipe(IItemStack primaryOutput, IItemStack primaryInput, IItemStack secondaryInput, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance)
mods.thermalexpansion.Pulverizer.addRecipe(IItemStack output, IItemStack input, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance)
mods.thermalexpansion.RedstoneFurnace.addRecipe(IItemStack output, IItemStack input, int energy)
mods.thermalexpansion.RedstoneFurnace.addPyrolysisRecipe(IItemStack output, IItemStack input, int energy, int creosote)
mods.thermalexpansion.Sawmill.addRecipe(IItemStack output, IItemStack input, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance)
// mods.thermalexpansion.CompressionDynamo.addFuel(ILiquidStack stack, int energy)
// mods.thermalexpansion.EnervationDynamo.addFuel(IItemStack stack, int energy)
// mods.thermalexpansion.MagmaticDynamo.addFuel(ILiquidStack stack, int energy)
// mods.thermalexpansion.NumisticDynamo.addFuel(IItemStack stack, int energy)
// mods.thermalexpansion.NumisticDynamo.addGemFuel(IItemStack stack, int energy)
mods.thermalexpansion.ReactantDynamo.addReaction(IItemStack item, ILiquidStack liquid, int energy)
mods.thermalexpansion.ReactantDynamo.addElementalReaction(IItemStack item, ILiquidStack liquid, int energy)
// mods.thermalexpansion.SteamDynamo.addFuel(IItemStack stack, int energy)

// mods.nuclearcraft.radiation.getRadiationLevel(itemInput)
// mods.nuclearcraft.radiation.addBlockMutation(blockInput, blockOutput, double radiationThreshold)
// mods.nuclearcraft.radiation.setRadiationImmunityGameStages(boolean defaultImmunity, string[] stageNames)

// mods.nuclearcraft.alloy_furnace.addRecipe([itemInput1, itemInput2, itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation])
// mods.nuclearcraft.centrifuge.addRecipe([fluidInput, fluidOutput1, fluidOutput2, fluidOutput3, fluidOutput4 , @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation])
// mods.nuclearcraft.chemical_reactor.addRecipe([fluidInput1, fluidInput2, fluidOutput1, fluidOutput2, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation])
// mods.nuclearcraft.condenser.addRecipe([fluidInput, fluidOutput, @Optional double coolingRequired, @Optional int condensingTemperature])
// mods.nuclearcraft.crystallizer.addRecipe([fluidInput, itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation])
// mods.nuclearcraft.decay_generator.addRecipe([blockInput, blockOutput, double lifetimeTicks, double energyPerSecond, @Optional double processRadiation])
// mods.nuclearcraft.decay_hastener.addRecipe([itemInput, itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation])
// mods.nuclearcraft.electrolyser.addRecipe([fluidInput, fluidOutput1, fluidOutput2, fluidOutput3, fluidOutput4, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation])
// mods.nuclearcraft.fission.addRecipe([itemInput, itemOutput, double baseTime, double basePower, double baseHeat, String guiName, @Optional double processRadiation])
// mods.nuclearcraft.dissolver.addRecipe([itemInput, fluidInput, fluidOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation])
// mods.nuclearcraft.extractor.addRecipe([itemInput, itemOutput, fluidOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation])
// mods.nuclearcraft.fuel_reprocessor.addRecipe([itemInput, itemOutput1, itemOutput2, itemOutput3, itemOutput4, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation])
// mods.nuclearcraft.fusion.addRecipe([fluidInput1, fluidInput2, fluidOutput1, fluidOutput2, fluidOutput3, fluidOutput4, double comboTime, double comboPower, double comboHeatVar, @Optional double processRadiation])
// mods.nuclearcraft.heat_exchanger.addRecipe([fluidInput, fluidOutput, double heatRequired, int temperatureIn, int temperatureOut])
// mods.nuclearcraft.infuser.addRecipe([itemInput, fluidInput, itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation])
// mods.nuclearcraft.ingot_former.addRecipe([fluidInput, itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation])
// mods.nuclearcraft.irradiator.addRecipe([fluidInput1, fluidInput2, fluidOutput1, fluidOutput2, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation])
// mods.nuclearcraft.isotope_separator.addRecipe([itemInput, itemOutput1, itemOutput2, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation])
// mods.nuclearcraft.manufactory.addRecipe([itemInput, itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation])
// mods.nuclearcraft.melter.addRecipe([itemInput, fluidOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation])
// mods.nuclearcraft.pressurizer.addRecipe([itemInput, itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation])
// mods.nuclearcraft.rock_crusher.addRecipe([itemInput, itemOutput1, itemOutput2, itemOutput3, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation])
// mods.nuclearcraft.salt_fission.addRecipe([fluidInput, fluidOutput, double baseTime, double basePower, @Optional double processRadiation])
// mods.nuclearcraft.salt_mixer.addRecipe([fluidInput1, fluidInput2, fluidOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation])
// mods.nuclearcraft.turbine.addRecipe([fluidInput, fluidOutput, double powerPerMB, double expansionLevel])
// mods.nuclearcraft.supercooler.addRecipe([fluidInput, fluidOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation])

mods.astralsorcery.Altar.addAttunementAltarRecipe(string recipeLocation, IItemStack output, int starlight, int craftTickTime, IIngredient[] inputs)
mods.astralsorcery.Altar.addConstellationAltarRecipe(string recipeLocation, IItemStack output, int starlight, int craftTickTime, IIngredient[] inputs)
mods.astralsorcery.Altar.addDiscoveryAltarRecipe(string recipeLocation, IItemStack output, int starlight, int craftTickTime, IIngredient[] inputs)
mods.astralsorcery.Altar.addTraitAltarRecipe(string recipeLocation, IItemStack output, int starlight, int craftTickTime, IIngredient[] inputs, @optional String iRequiredConstellationFocusName)
mods.astralsorcery.Grindstone.addRecipe(IItemStack input, IItemStack output, @optional float doubleChance)
mods.astralsorcery.StarlightInfusion.addInfusion(IItemStack input, IItemStack output, boolean consumeMultiple, float consumptionChance, int craftingTickTime)
mods.astralsorcery.LightTransmutation.addTransmutation(IItemStack stackIn, IItemStack stackOut, double cost)
mods.astralsorcery.Lightwell.addLiquefaction(IItemStack input, ILiquidStack output, float productionMultiplier, float shatterMultiplier, int colorhex)

mods.extendedcrafting.CompressionCrafting.addRecipe(IItemStack output, IIngredient input, int inputCount, IIngredient catalyst, int rfCost, int rfRate)
mods.extendedcrafting.CombinationCrafting.addRecipe(IItemStack output, long rf, int rf_t, IItemStack centerItem, IIngredient[] ingredients)
mods.extendedcrafting.EnderCrafting.addShaped(IItemStack output, IIngredient[][] input2d)
mods.extendedcrafting.TableCrafting.addShaped(@optional int level, IItemStack output, IIngredient[][] inputs)
mods.extendedcrafting.TableCrafting.addShapeless(@optional int level, IItemStack output, IIngredient[] inputs)