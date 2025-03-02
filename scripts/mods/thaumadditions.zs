#modloaded thaumadditions

# [Entity Cell] from [Simple Arcane Mechanism][+8]
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe(
  "dna_sample", # Name
  "TAR_MOB_SUMMONING@1", # Research
  50, # Vis cost
  [<aspect:aer>, <aspect:aqua>, <aspect:ordo>, <aspect:perditio>, <aspect:terra>, <aspect:ignis>],
  <thaumadditions:dna_sample>, # Output
  [
  <animania:hamster_ball_clear:*> | <animania:hamster_ball_colored:*>, # Clear Hamster Ball
  <thaumcraft:mechanism_simple>, # Simple Arcane Mechanism
]);

# [Adaminite Block] from [Mithrillium Block][+9]
mods.thaumcraft.Infusion.removeRecipe(<thaumadditions:adaminite_ingot>);
mods.thaumcraft.Infusion.registerRecipe(
  "thaumadditions:adaminite_block", # Name
  "TAR_ADAMINITE", # Research
  <thaumadditions:adaminite_block>, # Output
  15, # Instability
  [<aspect:infernum> * 200, <aspect:draco> * 200, <aspect:visum> * 200, <aspect:spiritus> * 200],
  <thaumadditions:mithrillium_block>, # Central Item
  scripts.craft.grid.Grid(["pretty",
  "▬ r ▬",
  "c   c",
  "▬ D ▬"], {
  "▬": <ore:ingotMithril>,                        # Mana Infused Ingot
  "r": <thaumcraft:primordial_pearl>.anyDamage(), # Primordial Pearl
  "c": <ore:carminite>,                           # Carminite
  "D": <thaumicwonders:disjunction_cloth>.anyDamage(), # Disjunction Cloth
}).spiral(1));

# Remove Rattus and Mythus because they cant be planted
mods.thaumcraft.Crucible.removeRecipe(<thaumadditions:vis_seeds>.withTag({Aspect: "rattus"}));
mods.thaumcraft.Crucible.removeRecipe(<thaumadditions:vis_seeds>.withTag({Aspect: "mythus"}));

val bookWithAllKnowledge = <thaumadditions:knowledge_tome>.withTag({
  KnowledgeOwner:"Thaumaturge Cow",
  KnowledgeTimestamp:"12.07.22",
  Knowledge:[
    {K:"!BrainyZombie",C:1 as byte},
    {K:"!CrimsonCultist",C:1 as byte},
    {K:"!EldritchCrab",C:1 as byte},
    {K:"!EldritchGuardian",C:1 as byte},
    {K:"!Firebat",C:1 as byte},
    {K:"!Pech",C:1 as byte},
    {K:"!Taintacle",C:1 as byte},
    {K:"!TaintCrawler",C:1 as byte},
    {K:"!TaintSeed",C:1 as byte},
    {K:"!TaintSwarm",C:1 as byte},
    {K:"!TARBlueWolf",C:1 as byte},
    {K:"!ThaumSlime",C:1 as byte},
    {K:"!TWOND_CORRUPTION_AVATAR",C:1 as byte},
    {K:"!VOIDSTONE",C:1 as byte},
    {K:"!Wisp",C:1 as byte},
    {K:"ADVANCEDTURRET",C:1 as byte},
    {K:"ALUMENTUM",C:1 as byte},
    {K:"ARCANE_DOOR",C:1 as byte},
    {K:"ARCANE_TERRAFORMER",C:1 as byte},
    {K:"ARCANEBORE",C:1 as byte},
    {K:"ARCANEEAR",C:1 as byte},
    {K:"ARCANELAMP",C:1 as byte},
    {K:"ARCANEPATTERNCRAFTER",C:1 as byte},
    {K:"ARCANESPA",C:1 as byte},
    {K:"ARCANETERMINAL",C:1 as byte},
    {K:"ARMORFORTRESS",C:1 as byte},
    {K:"AUTOCASTER",C:1 as byte},
    {K:"BASEALCHEMY",C:1 as byte},
    {K:"BASEARTIFICE",C:1 as byte},
    {K:"BASEAUROMANCY",C:1 as byte},
    {K:"BASEELDRITCH",C:1 as byte},
    {K:"BASEENERGISTICS",C:1 as byte},
    {K:"BASEGOLEMANCY",C:1 as byte},
    {K:"BASEINFUSION",C:1 as byte},
    {K:"BASICTURRET",C:1 as byte},
    {K:"BATHSALTS",C:1 as byte},
    {K:"BELLOWS",C:1 as byte},
    {K:"BOOTS_VOID",C:1 as byte},
    {K:"BOOTSTRAVELLER",C:1 as byte},
    {K:"BOTTLETAINT",C:1 as byte},
    {K:"CELESTIAL_OBSERVER",C:1 as byte},
    {K:"CELESTIALSCANNING",C:1 as byte},
    {K:"CENTRIFUGE",C:1 as byte},
    {K:"CHARMUNDYING",C:1 as byte},
    {K:"CLOUDRING",C:1 as byte},
    {K:"CONTROLSEALS",C:1 as byte},
    {K:"CrimsonRites",C:1 as byte},
    {K:"CRYSTALFARMER",C:1 as byte},
    {K:"CURIOSITYBAND",C:1 as byte},
    {K:"DIGISENTIA",C:1 as byte},
    {K:"DIMENSIONAL_MODIFIERS",C:1 as byte},
    {K:"DIOPTRA",C:1 as byte},
    {K:"ELDRITCH_EPIPHANY",C:1 as byte},
    {K:"ELDRITCH_SPIRE",C:1 as byte},
    {K:"ELEMENTALTOOLS",C:1 as byte},
    {K:"ELYTRA_BOOSTER",C:1 as byte},
    {K:"ELYTRA_HARNESS",C:1 as byte},
    {K:"EMPTINESS_MODIFIER",C:1 as byte},
    {K:"ENTERING_FRACTURE",C:1 as byte},
    {K:"ESSENTIABUSES",C:1 as byte},
    {K:"ESSENTIASMELTER",C:1 as byte},
    {K:"ESSENTIASMELTERTHAUMIUM",C:1 as byte},
    {K:"ESSENTIASMELTERVOID",C:1 as byte},
    {K:"ESSENTIASTORAGE1k",C:1 as byte},
    {K:"ESSENTIASTORAGE4k",C:1 as byte},
    {K:"ESSENTIASTORAGE16k",C:1 as byte},
    {K:"ESSENTIASTORAGE64k",C:1 as byte},
    {K:"ESSENTIATERMINAL",C:1 as byte},
    {K:"ESSENTIATRANSPORT",C:1 as byte},
    {K:"EVERFULLURN",C:1 as byte},
    {K:"EXPERIENCE_MODIFIER",C:1 as byte},
    {K:"FIRSTSTEPS",C:1 as byte},
    {K:"FLUX",C:1 as byte},
    {K:"FLUXCLEANUP",C:1 as byte},
    {K:"FLUXRIFT",C:1 as byte},
    {K:"FOCUS_LIGHT",C:1 as byte},
    {K:"FOCUS_SHIELD",C:1 as byte},
    {K:"FOCUS_WARD",C:1 as byte},
    {K:"FOCUS_WATER",C:1 as byte},
    {K:"FOCUSADVANCED",C:1 as byte},
    {K:"FOCUSBOLT",C:1 as byte},
    {K:"FOCUSBREAK",C:1 as byte},
    {K:"FOCUSCLOUD",C:1 as byte},
    {K:"FOCUSCURSE",C:1 as byte},
    {K:"FOCUSELEMENTAL",C:1 as byte},
    {K:"FOCUSEXCHANGE",C:1 as byte},
    {K:"FOCUSFLUX",C:1 as byte},
    {K:"FOCUSGREATER",C:1 as byte},
    {K:"FOCUSHEAL",C:1 as byte},
    {K:"FOCUSMINE",C:1 as byte},
    {K:"FOCUSPLAN",C:1 as byte},
    {K:"FOCUSPOUCH",C:1 as byte},
    {K:"FOCUSPROJECTILE",C:1 as byte},
    {K:"FOCUSRIFT",C:1 as byte},
    {K:"FOCUSSCATTER",C:1 as byte},
    {K:"FOCUSSPELLBAT",C:1 as byte},
    {K:"FOCUSSPLIT",C:1 as byte},
    {K:"FORTIFIED_GLASS",C:1 as byte},
    {K:"FORTRESSMASK",C:1 as byte},
    {K:"FRACTURE_THEORY",C:1 as byte},
    {K:"FRENZY_MODIFIER",C:1 as byte},
    {K:"GAUNTLET_AUGMENTATION",C:1 as byte},
    {K:"GAUNTLET_THAUMIUM",C:1 as byte},
    {K:"GAUNTLET_VOID",C:1 as byte},
    {K:"GLASS_TUBE",C:1 as byte},
    {K:"GOLEMBREAKER",C:1 as byte},
    {K:"GOLEMCLIMBER",C:1 as byte},
    {K:"GOLEMCOMBATADV",C:1 as byte},
    {K:"GOLEMDIRECT",C:1 as byte},
    {K:"GOLEMFLYER",C:1 as byte},
    {K:"GOLEMLOGISTICS",C:1 as byte},
    {K:"GOLEMVISION",C:1 as byte},
    {K:"GRAPPLEGUN",C:1 as byte},
    {K:"HARNESS_BASE",C:1 as byte},
    {K:"HEDGEALCHEMY",C:1 as byte},
    {K:"HUNGRYCHEST",C:1 as byte},
    {K:"IMPETUS_GATE",C:1 as byte},
    {K:"IMPETUS_GENERATOR",C:1 as byte},
    {K:"IMPETUS_MATRIX",C:1 as byte},
    {K:"IMPETUS_MIRROR",C:1 as byte},
    {K:"IMPETUS",C:1 as byte},
    {K:"IMPROVEDSMELTING",C:1 as byte},
    {K:"IMPROVEDSMELTING2",C:1 as byte},
    {K:"IMPULSE_CANNON_AUGMENT_BURST",C:1 as byte},
    {K:"IMPULSE_CANNON_AUGMENT_RAILGUN",C:1 as byte},
    {K:"IMPULSE_CANNON",C:1 as byte},
    {K:"INFERNALFURNACE",C:1 as byte},
    {K:"INFUSION",C:1 as byte},
    {K:"INFUSIONANCIENT",C:1 as byte},
    {K:"INFUSIONBOOST",C:1 as byte},
    {K:"INFUSIONELDRITCH",C:1 as byte},
    {K:"INFUSIONENCHANTMENT",C:1 as byte},
    {K:"INFUSIONPROVIDER",C:1 as byte},
    {K:"INFUSIONSTABLE",C:1 as byte},
    {K:"ITEM_GRATE",C:1 as byte},
    {K:"JARBRAIN",C:1 as byte},
    {K:"KNOWLEDGETYPES",C:1 as byte},
    {K:"LAMPFERTILITY",C:1 as byte},
    {K:"LAMPGROWTH",C:1 as byte},
    {K:"LEVITATOR",C:1 as byte},
    {K:"LIQUIDDEATH",C:1 as byte},
    {K:"MATSTUDBRASS",C:1 as byte},
    {K:"MATSTUDCLAY",C:1 as byte},
    {K:"MATSTUDIRON",C:1 as byte},
    {K:"MATSTUDTHAUMIUM",C:1 as byte},
    {K:"MATSTUDVOID",C:1 as byte},
    {K:"MATSTUDWOOD",C:1 as byte},
    {K:"METALLURGY",C:1 as byte},
    {K:"METALPURIFICATION",C:1 as byte},
    {K:"MIA.VOID_CREATOR",C:1 as byte},
    {K:"MINDBIOTHAUMIC",C:1 as byte},
    {K:"MINDCLOCKWORK",C:1 as byte},
    {K:"MIRROR",C:1 as byte},
    {K:"MIRRORESSENTIA",C:1 as byte},
    {K:"MIRRORHAND",C:1 as byte},
    {K:"MORE_AUROMANCY",C:1 as byte},
    {K:"MORE_GOLEMANCY",C:1 as byte},
    {K:"MORE_MECHANISMS",C:1 as byte},
    {K:"MORPHIC_ARMOR",C:1 as byte},
    {K:"MORPHIC_TOOL",C:1 as byte},
    {K:"ORE",C:1 as byte},
    {K:"PAVINGSTONES",C:1 as byte},
    {K:"PLANTS",C:1 as byte},
    {K:"POTIONSPRAYER",C:1 as byte},
    {K:"PRIMAL_CUTTER",C:1 as byte},
    {K:"PRIMALCRUSHER",C:1 as byte},
    {K:"PRIMORDIAL_WISP",C:1 as byte},
    {K:"PRIMPEARL",C:1 as byte},
    {K:"RECHARGEPEDESTAL",C:1 as byte},
    {K:"REDSTONERELAY",C:1 as byte},
    {K:"RIFT_FEEDER",C:1 as byte},
    {K:"RIFT_MANAGEMENT",C:1 as byte},
    {K:"RIFT_MONITOR",C:1 as byte},
    {K:"RIFT_MOVING",C:1 as byte},
    {K:"RIFT_POWER",C:1 as byte},
    {K:"RIFT_STUDIES",C:1 as byte},
    {K:"RIFTCLOSER",C:1 as byte},
    {K:"RUNICSHIELDING",C:1 as byte},
    {K:"SANESOAP",C:1 as byte},
    {K:"SEAL_COPIER",C:1 as byte},
    {K:"SEAL_SECURE",C:1 as byte},
    {K:"SEALBREAK",C:1 as byte},
    {K:"SEALBUTCHER",C:1 as byte},
    {K:"SEALCOLLECT",C:1 as byte},
    {K:"SEALEMPTY",C:1 as byte},
    {K:"SEALGUARD",C:1 as byte},
    {K:"SEALHARVEST",C:1 as byte},
    {K:"SEALLUMBER",C:1 as byte},
    {K:"SEALPROVIDE",C:1 as byte},
    {K:"SEALSTOCK",C:1 as byte},
    {K:"SEALSTORE",C:1 as byte},
    {K:"SEALUSE",C:1 as byte},
    {K:"STABILITY_FIELD_GENERATOR",C:1 as byte},
    {K:"STARFIELD_GLASS_FRACTURE",C:1 as byte},
    {K:"STARFIELD_GLASS_MIRROR",C:1 as byte},
    {K:"STARFIELD_GLASS_RIFT",C:1 as byte},
    {K:"TAR_ADAMINITE_FABRIC",C:1 as byte},
    {K:"TAR_ADAMINITE_JAR",C:1 as byte},
    {K:"TAR_ADAMINITE_SMELTER",C:1 as byte},
    {K:"TAR_ADAMINITE_SWORD",C:1 as byte},
    {K:"TAR_ADAMINITE",C:1 as byte},
    {K:"TAR_ASPECT_COMBINER",C:1 as byte},
    {K:"TAR_AURA_CHARGER",C:1 as byte},
    {K:"TAR_AURA_DISPERSER",C:1 as byte},
    {K:"TAR_BRASS_JAR",C:1 as byte},
    {K:"TAR_CAKE",C:1 as byte},
    {K:"TAR_CHESTER",C:1 as byte},
    {K:"TAR_CRYSTAL_BAG",C:1 as byte},
    {K:"TAR_CRYSTAL_BLOCK",C:1 as byte},
    {K:"TAR_CRYSTAL_BORE",C:1 as byte},
    {K:"TAR_CRYSTAL_CRUSHER",C:1 as byte},
    {K:"TAR_CRYSTAL_LAMP",C:1 as byte},
    {K:"TAR_CRYSTAL_WATER",C:1 as byte},
    {K:"TAR_DISENCHANT_FABRIC",C:1 as byte},
    {K:"TAR_ELDRITCH_JAR",C:1 as byte},
    {K:"TAR_ELDRITCH",C:1 as byte},
    {K:"TAR_ENCHANTED_GOLDEN_APPLE",C:1 as byte},
    {K:"TAR_ESSENCE_SALT",C:1 as byte},
    {K:"TAR_ESSENTIA_PISTOL",C:1 as byte},
    {K:"TAR_FLUX_CONCENTRATOR",C:1 as byte},
    {K:"TAR_FRAGNANT_PENDANT",C:1 as byte},
    {K:"TAR_GROWTH_CHAMBER",C:1 as byte},
    {K:"TAR_KNOWLEDGE_TOME",C:1 as byte},
    {K:"TAR_METEOR_BELT",C:1 as byte},
    {K:"TAR_MITHMINITE_BELT",C:1 as byte},
    {K:"TAR_MITHMINITE_BOOTS",C:1 as byte},
    {K:"TAR_MITHMINITE_FABRIC",C:1 as byte},
    {K:"TAR_MITHMINITE_HOOD",C:1 as byte},
    {K:"TAR_MITHMINITE_JAR",C:1 as byte},
    {K:"TAR_MITHMINITE_ROBE",C:1 as byte},
    {K:"TAR_MITHMINITE_SCYTHE",C:1 as byte},
    {K:"TAR_MITHMINITE_SMELTER",C:1 as byte},
    {K:"TAR_MITHMINITE",C:1 as byte},
    {K:"TAR_MITHRILLIUM_JAR",C:1 as byte},
    {K:"TAR_MITHRILLIUM_SMELTER",C:1 as byte},
    {K:"TAR_MITHRILLIUM",C:1 as byte},
    {K:"TAR_MOB_SUMMONING",C:1 as byte},
    {K:"TAR_PURIFLOWER",C:1 as byte},
    {K:"TAR_SEAL_GLOBE",C:1 as byte},
    {K:"TAR_SEAL_SYMBOLS",C:1 as byte},
    {K:"TAR_SEAL",C:1 as byte},
    {K:"TAR_SHADOW_BEAM_STAFF",C:1 as byte},
    {K:"TAR_SHADOW_ENCHANTER",C:1 as byte},
    {K:"TAR_STRIDING_BELT",C:1 as byte},
    {K:"TAR_THAUMADDS",C:1 as byte},
    {K:"TAR_THAUMIUM_JAR",C:1 as byte},
    {K:"TAR_THE_BEHEADER",C:1 as byte},
    {K:"TAR_TOTEMS",C:1 as byte},
    {K:"TAR_TRAVELLER_BELT",C:1 as byte},
    {K:"TAR_VIS_SCRIBING_TOOLS",C:1 as byte},
    {K:"TAR_VIS_SEEDS",C:1 as byte},
    {K:"TAR_VOID_ANVIL",C:1 as byte},
    {K:"TAR_VOID_CROP",C:1 as byte},
    {K:"TAR_VOID_ELEMENTAL_AXE",C:1 as byte},
    {K:"TAR_VOID_ELEMENTAL_HOE",C:1 as byte},
    {K:"TAR_VOID_ELEMENTAL_PICKAXE",C:1 as byte},
    {K:"TAR_VOID_ELEMENTAL_SHOVEL",C:1 as byte},
    {K:"TAR_VOID_THAUMOMETER",C:1 as byte},
    {K:"TAR_WORMHOLE_MIRROR",C:1 as byte},
    {K:"TCONEVO_BASE",C:1 as byte},
    {K:"TCONEVO_PRIMALMETAL",C:1 as byte},
    {K:"TCONEVO_TCONINFUSIONENCH",C:1 as byte},
    {K:"THAUMATORIUM",C:1 as byte},
    {K:"THAUMIC_AUGMENTATION_BASE",C:1 as byte},
    {K:"THAUMIUM_ROBES",C:1 as byte},
    {K:"THAUMOSTATIC_GIRDLE",C:1 as byte},
    {K:"THAUMOSTATIC_GYROSCOPE",C:1 as byte},
    {K:"THAUMOSTATIC_HARNESS",C:1 as byte},
    {K:"THEORYRESEARCH",C:1 as byte},
    {K:"TT_BLACK_QUARTZ",C:1 as byte},
    {K:"TT_DISLOCATE",C:1 as byte},
    {K:"TT_DISSIMULATION",C:1 as byte},
    {K:"TT_ENCHANTER",C:1 as byte},
    {K:"TT_ENERGETIC_NITOR",C:1 as byte},
    {K:"TT_ESSENTIA_FUNNEL",C:1 as byte},
    {K:"TT_PRISMARINE",C:1 as byte},
    {K:"TT_REPAIRER",C:1 as byte},
    {K:"TT_SHARE_TOME",C:1 as byte},
    {K:"TT_SPELLBINDING_CLOTH",C:1 as byte},
    {K:"TT_TABLET",C:1 as byte},
    {K:"TT_TELEKENESIS",C:1 as byte},
    {K:"TT_THAUMIC_MAGNETS",C:1 as byte},
    {K:"TT_TRANSVECTOR_INTERFACE",C:1 as byte},
    {K:"TUBES",C:1 as byte},
    {K:"TWOND_ALIENIST_STONE",C:1 as byte},
    {K:"TWOND_ALKAHEST",C:1 as byte},
    {K:"TWOND_BASE",C:1 as byte},
    {K:"TWOND_BONE_BOW",C:1 as byte},
    {K:"TWOND_CATALYZATION_CHAMBER",C:1 as byte},
    {K:"TWOND_CLEANSING_CHARM",C:1 as byte},
    {K:"TWOND_COALESCENCE_MATRIX",C:1 as byte},
    {K:"TWOND_DIMENSIONAL_RIPPER",C:1 as byte},
    {K:"TWOND_DISJUNCTION_CLOTH",C:1 as byte},
    {K:"TWOND_END_HEDGE",C:1 as byte},
    {K:"TWOND_EVERBURNING_URN",C:1 as byte},
    {K:"TWOND_FLUX_CAPACITOR",C:1 as byte},
    {K:"TWOND_FLUX_DISTILLER",C:1 as byte},
    {K:"TWOND_FLYING_CARPET",C:1 as byte},
    {K:"TWOND_HEXAMITE",C:1 as byte},
    {K:"TWOND_INSPIRATION_ENGINE",C:1 as byte},
    {K:"TWOND_LETHE_WATER",C:1 as byte},
    {K:"TWOND_MADNESS_ENGINE",C:1 as byte},
    {K:"TWOND_MEATY_ORB",C:1 as byte},
    {K:"TWOND_METEORB",C:1 as byte},
    {K:"TWOND_MYSTIC_GARDENING",C:1 as byte},
    {K:"TWOND_NETHER_HEDGE",C:1 as byte},
    {K:"TWOND_NV_GOGGLES",C:1 as byte},
    {K:"TWOND_ORE_DIVINER",C:1 as byte},
    {K:"TWOND_PANACEA",C:1 as byte},
    {K:"TWOND_PRIMAL_ARROWS",C:1 as byte},
    {K:"TWOND_PRIMAL_DESTROYER",C:1 as byte},
    {K:"TWOND_PRIMORDIAL_ACCELERATOR",C:1 as byte},
    {K:"TWOND_PRIMORDIAL_ACCRETION_CHAMBER",C:1 as byte},
    {K:"TWOND_STRUCTURE_DIVINER",C:1 as byte},
    {K:"TWOND_TIMEWINDER",C:1 as byte},
    {K:"TWOND_TRANSMUTER_STONE",C:1 as byte},
    {K:"TWOND_VOID_BEACON",C:1 as byte},
    {K:"TWOND_VOID_FORTRESS_ARMOR",C:1 as byte},
    {K:"TWOND_VOID_PORTAL",C:1 as byte},
    {K:"UNLOCKALCHEMY",C:1 as byte},
    {K:"UNLOCKARTIFICE",C:1 as byte},
    {K:"UNLOCKAUROMANCY",C:1 as byte},
    {K:"UNLOCKELDRITCH",C:1 as byte},
    {K:"UNLOCKGOLEMANCY",C:1 as byte},
    {K:"UNLOCKINFUSION",C:1 as byte},
    {K:"VERDANTCHARMS",C:1 as byte},
    {K:"VIS_BATTERY_AUGMENT",C:1 as byte},
    {K:"VIS_REGENERATOR",C:1 as byte},
    {K:"VISAMULET",C:1 as byte},
    {K:"VISBATTERY",C:1 as byte},
    {K:"VISGENERATOR",C:1 as byte},
    {K:"VOID_RECHARGE_PEDESTAL",C:1 as byte},
    {K:"VOID_STONE_USAGE",C:1 as byte},
    {K:"VOIDROBEARMOR",C:1 as byte},
    {K:"VOIDSEERPEARL",C:1 as byte},
    {K:"VOIDSIPHON",C:1 as byte},
    {K:"WARD_KEYS",C:1 as byte},
    {K:"WARD_OPENERS",C:1 as byte},
    {K:"WARDED_ARCANA",C:1 as byte},
    {K:"WARDEDJARS",C:1 as byte},
    {K:"WARP",C:1 as byte},
    {K:"WORKBENCHCHARGER",C:1 as byte},
  ]
});

# [Tome of Sharing] from [Tome of Sharing][+3]
craft.remake(bookWithAllKnowledge, ["pretty",
  "▬ § ▬",
  "§ T §",
  "R R R"], {
  "▬": <ore:dragonsteelIngot>, # Dragonsteel Ingot
  "§": scripts._init.variables.bookWrittenBy_ingr["Cow"], # A book written by a Cow
  "T": <thaumadditions:knowledge_tome>, # Tome of Sharing
  "R": <rats:marbled_cheese_raw>,       # Raw Marbled Cheese
});
