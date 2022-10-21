/**
 * @file This file will be evaluated when Patchouli.js generating book
 *
 * @author Krutoy242
 * @link https://github.com/Krutoy242
 */

// @ts-check

import { loadJson, renameDeep } from '../lib/utils.js'

export function init(Patchouli_js, helpers) {
  // ----------------------------------------------------
  // World
  // ----------------------------------------------------
  Patchouli_js('World/Rules', [
    {
      item: 'minecraft:torch',
      title: 'Important Nerfs',
      _text: `Significant changes from E2E:
      $(li) Vanilla and Stone $(l)Torches/$ light level nerfed. Use modded.
      $(li) FTB chunk claiming $(l)not preventing/$ explosions.`,
    },
  ])
  
  // ----------------------------------------------------
  // Skyblock
  // ----------------------------------------------------
  Patchouli_js('Skyblock/Skyblock: A Getting Started', [
    {
      item : 'minecraft:log',
      title: 'Wood',
      _text: 'You get plenty with the first quest. Use excavator modifier as explained in the quest book. Dark oak trees are great.',
    },
	{
      item : 'minecraft:leaves',
      title: 'Saplings',
      type : 'item_spread',
      _text: 'Use TC crooks to get different kinds of saplings.',
      ...helpers.item$i(['integrateddynamics:menril_sapling', 'rustic:sapling', 'rustic:sapling:1', 'exnihilocreatio:item_material:2']),
    },
    {
      item  : 'minecraft:water_bucket',
      title : 'Water',
      type  : 'grid_text',
      _text : 'Crush cacti in crushing tub, or fill barrels with rain. You can use bowls or a clay bucket to carry water, but be careful with the bowl!',
      item12: 'rustic:crushing_tub',
      item13: 'minecraft:bowl',
      item14: 'forestry:pipette',
      item15: 'minecraft:dirt',
      item16: 'minecraft:reeds',
    },
    {
      item : 'minecraft:dirt',
      title: 'Dirt',
      _text: 'Compost greens in barrels. Sugar cane on IC2 crops is great for larger quantities.',
    },
    {
      item : 'minecraft:cobblestone',
      title: 'Rocks',
      _text: 'Sieve dirt to get pebbles, craft them into cobble, andesite, diorite, granite.',
    },
    {
      item : 'mysticalagriculture:fire_essence',
      title: 'Fire',
      _text: 'Break wooden plank slab with stick.',
    },
    {
      item : 'minecraft:coal:1',
      title: 'Charcoal',
      _text: 'To craft a furnace, you need (char)coal. Use Forestry wood piles: surround it with dirt from all directions but top, place fire on top, then place dirt in place of fire. After a few minutes the burning is over and you can collect charcoal and ash.',
    },
    {
      item : 'minecraft:iron_ingot',
      title: 'Iron',
      _text: 'As said in the quest book, you can use ironwood. Crush ironberries in the crushing tub to get iron juice, then put the juice to drying basin to get iron ore piece, and combine them into iron ore.',
    },
    {
      item : 'tconstruct:seared_tank',
      title: 'Smeltery fuel',
      _text: 'For starters, use canola oil. Get it by growing canola and crushing it in a crushing tub.',
    },
    {
      item : 'minecraft:blaze_powder',
      title: 'Blaze',
      _text: 'Sieve sand to obtain cinderpearl seeds. Place them on sand to grow and craft blaze from them.',
    },
    {
      item : 'minecraft:lava_bucket',
      title: 'Lava',
      _text: 'Squeeze blaze in Integrated Dynamics squeezer.',
    },
  ])
  
  Patchouli_js('Skyblock/Skyblock: B Tips', [
    {
      item : 'ic2:crop_seed_bag',
      title: 'IC2 crops',
      _text: 'IC2 crops are great. They are very fast and can be used to get large quantities of many basic plants like sugar canes. \r\n The second thing is cross breeding. You need some to progress plants, like terra warts, and some higher tier plants are a great alternative source of expensive resources.',

    },
    {
      item : 'ic2:crop_seed_bag',
      title: 'IC2 crops',
      _text: 'Explore crops in JEI, and use Cropanalyzer calculator (default: press C while holding it). \r\n You can automate crop\'s harvest with IC2 Crop Harvester, or a forestry multifarm (emerald tubes).',

    },
    {
      item : 'rustic:crushing_tub',
      title: 'Crushing tub',
      _text: 'This is one of your best friends in early game. Check out the recipes in JEI. Can be automated by putting a slime or rabbit on it, or you can get creative with armor stands and pistons.',
    },
    {
      item : 'exnihilocreatio:item_mesh:1',
      title: 'Sieving',
      _text: 'You\'ll sieve a lot. Note that string sieve only gives you some materials, and other meshes are very expensive. Check out the resources tab to see how to obtain other materials.',
    },
    {
      item : 'tconstruct:seared_tank',
      title: 'Smeltery fuels',
      _text: 'For early game fuel sources, try canola oil, creosode oil, or lava. For complete guide go to Liquids section of this book.',
    },
    {
      item : 'farmingforblockheads:market',
      title: 'Market',
      _text: 'You can buy almost any sapling, seed or spawn egg here.',
    },
    {
      item : 'minecraft:iron_pickaxe',
      title: 'Early automation',
      _text: 'Use Random Things Block Breaker to break blocks. It uses no power nor redstone and outputs broken items to an inventory behind it. Check out "Liquid Interaction" in JEI (under lava bucket). The cheaper ones include cobble, andesite/diorite/granite, sand, flesh->dirt, dirt itself, snow, gravel, netherrack, basalt.',
    },
    {
      item : 'integrateddynamics:squeezer',
      title: 'Squeezer',
      _text: 'Cheap and useful in early game. Check out the JEI recipes.',
    },
    {
      item : 'minecraft:obsidian',
      title: 'Nether portal',
      _text: 'Nether portal spread is a very important source of resources. Check out the recipes in JEI using Obsidian. They include aluminum, quartz, sky stone, nether wart, netherrack, blood. \r\n Note that a 1x2 portal is enough for the spread to work.',
    },
  ])
  
  Patchouli_js('Skyblock/Skyblock: C Metals', [
    {
      item : 'minecraft:iron_ingot',
      title: 'Iron',
      _text: 'Use ironwood or ferrous juniper. The latter can be burned with fire to yield more iron.',
    },
	{
      item : 'thermalfoundation:material:128',
      title: 'Copper',
      _text: 'Sieve red sand. Yes, you need a smeltery to obtain copper. Later on, sieve dried sand and use Mekanism\'s enrichment chamber.',
    },
	{
      item : 'thermalfoundation:material:129',
      title: 'Tin',
      _text: 'Sieve white sand or garbage piles. Later on, sieve crushed andesite and use Mekanism\'s enrichment chamber.',
    },
	{
      item : 'minecraft:gold_ingot',
      title: 'Gold',
      _text: 'Bathe pigs in witchwater and kill the resulting zombie pigmen.',
    },
	{
      item : 'thermalfoundation:material:131',
      title: 'Lead',
      _text: 'Sieve garbage piles.',
    },
	{
      item : 'thermalfoundation:material:132',
      title: 'Aluminum',
      _text: 'Nether portal spread. Later alternatively sieve compressed gunpowder and use mekanism.',
    },
	{
      item : 'tconstruct:ingots:1',
      title: 'Ardite',
      _text: 'Sieve Garbage Piles.',
    },
	{
      item : 'tconstruct:ingots:0',
      title: 'Cobalt',
      _text: 'Emerald blocks turn into cobalt via nether portal spread.',
    },
	{
      item : 'mekanism:ingot:1',
      title: 'Osmium',
      _text: 'Crook prime wool.',
    },
	{
      item : 'thermalfoundation:material:133',
      title: 'Nickel',
      _text: 'Many possible ways, for example grindstone forms of iron, like native iron cluster or dirty iron.',
    },
  ])
  
  Patchouli_js('Skyblock/Skyblock: D Resources', [
    {
      item : 'minecraft:quartz',
        title: 'Quartz',
      _text: 'Nether portal spread.',
      },
      {
      item : 'minecraft:coal',
          title: 'Coal',
      _text: 'IC2 crops, or ash from wood piles or nether spread on leaves.',
        },
        {
      item : 'appliedenergistics2:sky_stone_block',
            title: 'Sky stone',
      _text: 'Nether portal spread.',
          },
          {
      item : 'minecraft:lava_bucket',
              title: 'Lava',
      _text: 'Squeeze blaze, or alloy fiery essence milked from an angry chicken with seared stone. Explore other ways in JEI.',
            },
            {
      item : 'actuallyadditions:item_misc:5',
                title: 'Black Quartz',
      _text: 'IC2 crops or prime wool.',
              },
              {
      item : 'mechanics:fuel_dust',
                  title: 'Heavy Fuel',
      _text: 'Prime wool.',
                },
	{
      item : 'minecraft:emerald',
      title: 'Emerald',
      _text: 'Trade.',
    },
	{
      item : 'minecraft:diamond',
      title: 'Diamond',
      _text: 'Use IC2 coal ball recipe, or IC2 crops. Later starlight infusion.',
    },
  ])
  
  Patchouli_js('Skyblock/Skyblock: E Animals', [
	{
      item : 'draconicevolution:mob_soul{EntityName:"excompressum:angry_chicken"}',
      title: 'Angry chicken',
      _text: 'Hit a chicken with a stick.',
    },
	{
      item : 'draconicevolution:mob_soul{EntityName:"minecraft:pig"}',
      title: 'Vanila animals',
      _text: 'Use baits.',
    },
	{
      item : 'draconicevolution:mob_soul{EntityName:"animania:bull_friesian"}',
      title: 'Animania animals',
      _text: 'Use rustic\'s alchemy to craft spawn eggs.',
    },
  ])
  
  Patchouli_js('Skyblock/Skyblock: F Advance Tips', [
    {
      item : 'thaumcraft:thaumonomicon',
      title: 'Alien Hedge Alchemy',
      _text: 'To unlock this research, you normally need to enter Nether and the End, which you can\'t do in skyblock. The research is unlocked once you enter Hell/The End biome, which you can obtain by using a Terraformer.',
    },
    {
      item : 'minecraft:diamond_pickaxe',
      title: 'Mining the nether',
      _text: 'This is a crazy idea but it works. OpenComputers Drones CAN enter nether through the portal. You can program it to place a miner and mine nether. You can also build there any structure. \r\n If you place a teleporter there and want to loophole the system, don\'t worry, you\'ll be teleported to the overworld after just one tick.',
    },
  ])
  // ----------------------------------------------------
  // Cyclic
  // ----------------------------------------------------
  Patchouli_js(
    'Items/Magic Bean',
    helpers.paged(
      {
        title: 'Magic Bean Drops',
        icon: 'cyclicmagic:sprout_seed',
        type: 'grid',
      },
      helpers
        .config('../../config/cyclicmagic.cfg')
        .cyclicmagic.blocks.magicbean.MagicBeanDropList.map((l) =>
          l.replace(/\*(\d+)$/, ':$1')
        )
    )
  )

  // ----------------------------------------------------
  // TCon
  // ----------------------------------------------------
  Patchouli_js('Items/Recycling', [
    {
      item: 'requious:tinkers_disassembler',
      title: 'Tool recycling',
      _text: `Tools and Armor can be disassembled in $(l)Disassembler/$.
      $(li)The disassembler will try to deliver the strongest material
      $(li)Both of tools should have most or equal harvest level
      $(li)Output amount based on material cost
      $(li)Also sum more math`,
    },
  ])

  // ----------------------------------------------------
  // Mob spawn changes
  // ----------------------------------------------------
  Patchouli_js('Mobs/Spawn Changes', [
    {
      item: `draconicevolution:mob_soul{EntityName:"minecraft:enderman"}`,
      title: 'Enderman',
      _text: `When spawn in $(n)Overworld/$, 10% of times carry $(n)Compressed End Stone/$, or $(n)End Ore/$ with lower probabilities.`,
    },
    {
      item: `draconicevolution:mob_soul{EntityName:"emberroot:dire_wolf"}`,
      title: 'Dire Wolf',
      _text: `Spawns only in the dark.`,
    },
    {
      item: `draconicevolution:mob_soul{EntityName:"quark:stoneling"}`,
      title: 'Stoneling',
      _text: `Spawns $(n)only on Stone blocks/$ and not more than 3.`,
    },
    {
      item: `draconicevolution:mob_soul{EntityName:"rats:rat"}`,
      title: 'Rat',
      _text: `Spawns only on $(n)Garbage Piles/$.`,
    },
    {
      item: `draconicevolution:mob_soul{EntityName:"endreborn:watcher"}`,
      title: 'Watcher',
      _text: `Spawns in Overworld, only on $(n)any Endstone/$.`,
    },
    {
      item: `draconicevolution:mob_soul{EntityName:"endreborn:endguard"}`,
      title: 'Purpur Guard',
      _text: `Spawns anywhere, but only on $(n)Purpur blocks/$ or $(n)Cursed Earth/$.`,
    },
  ])

  Patchouli_js('Mobs/Additional Drop', [
    {
      item: `draconicevolution:mob_soul{EntityName:"emberroot:rootsonespriteboss"}`,
      title: 'Guardian of Sprites',
      _text: `Hitting this mob would spawn $(#2af)Supermium Essence/$
        Essence amount depends on damage dealt.`,
    },
  ])
}
