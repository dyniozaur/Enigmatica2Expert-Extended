#modloaded betteranimalsplus

val handOfFatelocalized = mods.zenutils.I18n.format(scripts.category.tooltip_utils.desc.local(<betteranimalsplus:handoffate>), 
	<minecraft:flint_and_steel>.displayName,
	<minecraft:nether_wart>.displayName,
	<betteranimalsplus:antler>.displayName,
	<betteranimalsplus:venisonraw>.displayName
);
<betteranimalsplus:handoffate>.addTooltip(handOfFatelocalized);
mods.jei.JEI.addDescription(<betteranimalsplus:handoffate>, handOfFatelocalized);

<entity:betteranimalsplus:zotzpyre>.addDrop(<harvestcraft:hardenedleatheritem> % 70, 1, 3);
<entity:betteranimalsplus:zotzpyre>.addPlayerOnlyDrop(<harvestcraft:netherwingsitem>, 1, 3);
<entity:betteranimalsplus:badger>.addDrop(<randomthings:fertilizeddirt>, 1, 2);
<entity:betteranimalsplus:badger>.addPlayerOnlyDrop(<twilightforest:uberous_soil>, 1, 4);
<entity:betteranimalsplus:bobbit_worm>.addPlayerOnlyDrop(<iceandfire:sea_serpent_scales_bronze> % 20, 1, 1);
<entity:betteranimalsplus:badger>.addDrop(<rats:garbage_pile>, 1, 3);
<entity:betteranimalsplus:feralwolf>.addDrop(<betteranimalsplus:wolf_pelt_timber>, 1, 3);
<entity:betteranimalsplus:fox>.addPlayerOnlyDrop(<mysticalagriculture:chunk:8>, 1, 3);
<entity:betteranimalsplus:goose>.addPlayerOnlyDrop(<bibliocraft:bell> % 5, 1, 1);
<entity:betteranimalsplus:horseshoecrab>.addDrop(<iceandfire:sea_serpent_scales_bronze> % 50, 1, 1);
<entity:betteranimalsplus:songbird>.addDrop(<twilightforest:raven_feather>, 1, 3);
<entity:betteranimalsplus:tarantula>.addPlayerOnlyDrop(<randomthings:ingredient:1> % 50, 1, 1);

<ore:pelt>.addItems([
	<betteranimalsplus:bear_skin_black>,
	<betteranimalsplus:bear_skin_brown>,
	<betteranimalsplus:bear_skin_kermode>,
	<betteranimalsplus:wolf_pelt_arctic>,
	<betteranimalsplus:wolf_pelt_black>,
	<betteranimalsplus:wolf_pelt_brown>,
	<betteranimalsplus:wolf_pelt_red>,
	<betteranimalsplus:wolf_pelt_snowy>,
	<betteranimalsplus:wolf_pelt_timber>,
]);

# Tallow
scripts.process.squeeze([<betteranimalsplus:blubber>], <liquid:lubricant> * 50, "except: CrushingTub Squeezer MechanicalSqueezer", null);

# This crab is unobtainable
utils.rh(<betteranimalsplus:crab_meat_cooked>);
furnace.remove(<betteranimalsplus:crab_meat_cooked>);

# Do not unify Venison so we could summon Hirschgeist
// scripts.loot.animal_drops.tweak("betteranimalsplus:deer","deer-venison","betteranimalsplus:venisonraw", <betteranimalsplus:venisonraw>, [<harvestcraft:venisonrawitem>], [1,3]);
// scripts.loot.animal_drops.tweak("betteranimalsplus:reindeer","reindeer","betteranimalsplus:venisonraw", <betteranimalsplus:venisonraw>, [<harvestcraft:venisonrawitem>], [1,3]);
// scripts.loot.animal_drops.tweak("betteranimalsplus:moose","moose-venison","betteranimalsplus:venisonraw", <betteranimalsplus:venisonraw>, [<harvestcraft:venisonrawitem>], [2,5]);
recipes.addShapeless("Venison conversion 1", <betteranimalsplus:venisonraw>, [<harvestcraft:venisonrawitem>]);
recipes.addShapeless("Venison conversion 2", <harvestcraft:venisonrawitem>, [<betteranimalsplus:venisonraw>]);

scripts.loot.animal_drops.tweak("betteranimalsplus:nautilus","nautilus","minecraft:fish", null, [<harvestcraft:oysterrawitem>], [1,3]);
scripts.loot.animal_drops.tweak("betteranimalsplus:crab","crab","betteranimalsplus:crab_meat_raw", <betteranimalsplus:crab_meat_raw>, [<harvestcraft:crabrawitem>], [1,3]);
scripts.loot.animal_drops.tweak("betteranimalsplus:hirschgeist","hirschgeist", null, null, [<randomthings:ingredient:2>, <mysticalagriculture:crafting:2>], [16,64], false, 200);

# [Raw Turkey] from [Raw Turkey]
craft.make(<betteranimalsplus:turkey_raw>, ["pretty",
  "A A A",
  "A A A",
  "A A A"], {
  "A": <ore:listAllturkeyraw>, # Raw Turkey
});
