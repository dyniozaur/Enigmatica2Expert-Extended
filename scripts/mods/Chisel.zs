import mods.chisel.Carving.addVariation;
import crafttweaker.item.IItemStack as IItemStack;
#modloaded chisel

addVariation("basalt", <quark:basalt:1>);
addVariation("basalt", <quark:basalt>);
addVariation("basalt", <environmentalmaterials:basalt>);
addVariation("basalt", <environmentalmaterials:basalt_paver>);
addVariation("basalt", <environmentalmaterials:basalt_bricks>);
addVariation("basalt", <environmentalmaterials:basalt_tiles>);

addVariation("marble", <quark:marble>);

addVariation("limestone", <quark:limestone>);
addVariation("limestone", <quark:limestone:1>);

addVariation("sootymarble", <astralsorcery:blockblackmarble:0>);
addVariation("sootymarble", <astralsorcery:blockblackmarble:1>);
addVariation("sootymarble", <astralsorcery:blockblackmarble:2>);
addVariation("sootymarble", <astralsorcery:blockblackmarble:3>);
addVariation("sootymarble", <astralsorcery:blockblackmarble:4>);
addVariation("sootymarble", <astralsorcery:blockblackmarble:5>);
addVariation("sootymarble", <astralsorcery:blockblackmarble:6>);

addVariation("castlebrickrune", <twilightforest:castle_rune_brick:0>);
addVariation("castlebrickrune", <twilightforest:castle_rune_brick:1>);
addVariation("castlebrickrune", <twilightforest:castle_rune_brick:2>);
addVariation("castlebrickrune", <twilightforest:castle_rune_brick:3>);

addVariation("castlebrickdoor", <twilightforest:castle_door:0>);
addVariation("castlebrickdoor", <twilightforest:castle_door:1>);
addVariation("castlebrickdoor", <twilightforest:castle_door:2>);
addVariation("castlebrickdoor", <twilightforest:castle_door:3>);

# Environmental Materials
for i in 0 to 16 {
	addVariation("alabaster " ~ i, <environmentalmaterials:alabaster>.definition.makeStack(i));
	addVariation("alabaster " ~ i, <environmentalmaterials:alabaster_paver>.definition.makeStack(i));
	addVariation("alabaster " ~ i, <environmentalmaterials:alabaster_bricks>.definition.makeStack(i));
	addVariation("alabaster " ~ i, <environmentalmaterials:alabaster_tiles>.definition.makeStack(i));
}

addVariation("hardened_stone", <environmentalmaterials:hardened_stone>);
addVariation("hardened_stone", <environmentalmaterials:hardened_stone_paver>);
addVariation("hardened_stone", <environmentalmaterials:hardened_stone_bricks>);
addVariation("hardened_stone", <environmentalmaterials:hardened_stone_tiles>);

# Sonar Core
val sonarColors as string[] = [
	"normal",	"lightgrey", "plain", "lime", "blue",
  "cyan", "magenta", "pink", "yellow", "purple",
  "lightblue", "green", "orange", "red", "black", "brown"];

for i in 0 to 16 {
	val col = sonarColors[i];
  addVariation("sonar " ~ col, itemUtils.getItem("sonarcore:stablestone_" ~ col));
	addVariation("sonar " ~ col, itemUtils.getItem("sonarcore:stablestonerimmed_" ~ col));
	addVariation("sonar " ~ col, itemUtils.getItem("sonarcore:stablestoneblackrimmed_" ~ col));
}

# Rats
addVariation("marbledCheese", <rats:marbled_cheese>);
addVariation("marbledCheese", <rats:marbled_cheese_tile>);
addVariation("marbledCheese", <rats:marbled_cheese_chiseled>);
addVariation("marbledCheese", <rats:marbled_cheese_pillar>);
addVariation("marbledCheese", <rats:marbled_cheese_brick>);
addVariation("marbledCheese", <rats:marbled_cheese_brick_chiseled>);
addVariation("marbledCheese", <rats:marbled_cheese_brick_cracked>);

# Remove clear glass from chisel
mods.chisel.Carving.removeVariation("glass", <tconstruct:clear_glass>);

for glass, col in {
	<tconstruct:clear_stained_glass>    : "white",
	<tconstruct:clear_stained_glass:1>  : "orange",
	<tconstruct:clear_stained_glass:2>  : "magenta",
	<tconstruct:clear_stained_glass:3>  : "lightblue",
	<tconstruct:clear_stained_glass:4>  : "yellow",
	<tconstruct:clear_stained_glass:5>  : "lime",
	<tconstruct:clear_stained_glass:6>  : "pink",
	<tconstruct:clear_stained_glass:7>  : "gray",
	<tconstruct:clear_stained_glass:8>  : "lightgray",
	<tconstruct:clear_stained_glass:8>  : "silver",
	<tconstruct:clear_stained_glass:9>  : "cyan",
	<tconstruct:clear_stained_glass:10> : "purple",
	<tconstruct:clear_stained_glass:11> : "blue",
	<tconstruct:clear_stained_glass:12> : "brown",
	<tconstruct:clear_stained_glass:13> : "green",
	<tconstruct:clear_stained_glass:14> : "red",
	<tconstruct:clear_stained_glass:15> : "black",
} as string[IItemStack] {
	mods.chisel.Carving.removeVariation("glassdyed"~col, glass);
}


# Harder  Iron chisel
recipes.remove(<chisel:chisel_iron>);
recipes.addShaped(<chisel:chisel_iron>, [
	[null, <tcomplement:chisel_head>.withTag({Material: "iron"}).onlyWithTag({Material: "iron"})],
	[<ore:stickTreatedWood>, null]]);

# Harder diamond chisel
recipes.remove(<chisel:chisel_diamond>);
craft.reshapeless(<chisel:chisel_diamond>, "AAB", {A: <minecraft:diamond>, B: <chisel:chisel_iron>});

# Harder I-Chisel
recipes.remove(<chisel:chisel_hitech>);
recipes.addShapeless(<chisel:chisel_hitech>, 
	[<ore:sheetHDPE>,<ore:sheetHDPE>,<chisel:chisel_diamond>]);


# Chests
addVariation("chest", <minecraft:chest>);
addVariation("chest", <quark:custom_chest>);
addVariation("chest", <quark:custom_chest:1>);
addVariation("chest", <quark:custom_chest:2>);
addVariation("chest", <quark:custom_chest:3>);
addVariation("chest", <quark:custom_chest:4>);

addVariation("endstone", <endreborn:block_end_stone_smooth>);
addVariation("endstone", <endreborn:block_end_stone_pillar>);
addVariation("endstone", <endreborn:chiseled_end_bricks>);

addVariation("engineers_sign", <engineersdecor:sign_hotwire>);
addVariation("engineers_sign", <engineersdecor:sign_danger>);
addVariation("engineers_sign", <engineersdecor:sign_defense>);
addVariation("engineers_sign", <engineersdecor:sign_factoryarea>);
addVariation("engineers_sign", <engineersdecor:sign_exit>);
addVariation("engineers_sign", <engineersdecor:sign_radioactive>);
addVariation("engineers_sign", <engineersdecor:sign_laser>);
addVariation("engineers_sign", <engineersdecor:sign_caution>);
addVariation("engineers_sign", <engineersdecor:sign_magichazard>);
addVariation("engineers_sign", <engineersdecor:sign_firehazard>);
addVariation("engineers_sign", <engineersdecor:sign_hotsurface>);
addVariation("engineers_sign", <engineersdecor:sign_magneticfield>);
addVariation("engineers_sign", <engineersdecor:sign_frost>);
