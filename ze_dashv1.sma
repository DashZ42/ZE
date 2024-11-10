/*================================================================================
	
		***********************************************
		*********** [Zombie Escape] ***********
		***********************************************
		by DASH :D
		   
=================================================================================*/

/*================================================================================
 [Plugin Customization]
=================================================================================*/

// All customization settings have been moved
// to external files to allow easier editing
new const ZA_CUSTOMIZATION_FILE[] = "zombie_escape.ini"
new const ZA_EXTRAITEMS_FILE[] = "ze_extraitems.ini"
new const ZA_HUMANCLASSES_FILE[] = "ze_humanclasses.ini"
new const ZA_ZOMBIECLASSES_FILE[] = "ze_zombieclasses.ini"

new const iClassName[] = { "entclas" }
new const ent_model2[] = { "models/w_kevlar.mdl" }


new g_szDirFile[128]
native diamondmenu(id);
native eg_camara(id);
native zp_get_user_zombie(id);
native zp_get_user_nemesis(id);
native za_get_user_alien(id);
native zp_get_user_assassin(id);
native zp_get_user_survivor(id);
native za_get_user_wesker(id);
native zp_get_user_sniper(id);
native zp_get_user_angel(id);
native zp_make_user_nemesis(id);
native za_make_user_alien(id);
native zp_make_user_assassin(id);
native zp_make_user_survivor(id);
native za_make_user_wesker(id);
native zp_make_user_sniper(id);
native get_anti_infection(id);
native give_item_bomb_jump(id);
native give_weapon_plasmagun(id);

// Weapons
new const v_model_galil_lg[] = { "models/zp_models/new_armas/v_galil.mdl" }
new const v_model_m4a1_lg[] = { "models/zp_models/new_armas/v_m4sopmod.mdl" }
new const v_model_ak47_lg[] = { "models/zp_models/new_armas/v_ak47.mdl" }
new const v_model_m3_lg[] = { "models/zp_models/new_armas/v_m3_rlz.mdl" }
new const v_model_xm1014_lg[] = { "models/zp_models/new_armas/v_BM4.mdl" }
new const v_model_mp5_lg[] = { "models/zp_models/new_armas/v_mp5_laser.mdl" }
new const v_model_glock18_lg[] = { "models/zp_models/new_armas/v_glock.mdl" }
new const v_model_usp_lg[] = { "models/zp_models/new_armas/v_usp.mdl" }
new const v_model_deagle_lg[] = { "models/zp_models/new_armas/v_deagle.mdl" }
new const v_model_elite_lg[] = { "models/zp_models/new_armas/v_elite.mdl" }
new const v_model_galil_lg_2[] = { "models/zp_models/xmas_armas/v_galil_ze.mdl" }
new const v_model_m4a1_lg_2[] = { "models/zp_models/xmas_armas/v_m4a1_ze.mdl" }
new const v_model_ak47_lg_2[] = { "models/zp_models/xmas_armas/v_ak47_ze.mdl" }
new const v_model_m3_lg_2[] = { "models/zp_models/xmas_armas/v_m3_ze.mdl" }
new const v_model_xm1014_lg_2[] = { "models/zp_models/xmas_armas/v_xm1014_ze.mdl" }
new const v_model_mp5_lg_2[] = { "models/zp_models/xmas_armas/v_mp5_ze.mdl" }
new const v_model_usp_lg_2[] = { "models/zp_models/xmas_armas/v_usp_ze.mdl" }
new const v_model_deagle_lg_2[] = { "models/zp_models/xmas_armas/v_deagle_ze.mdl" }
new const v_model_galil_lg_3[] = { "models/zp_models/ze_armas/v_galil_ze.mdl" }
new const v_model_m4a1_lg_3[] = { "models/zp_models/ze_armas/v_m4a1_ze.mdl" }
new const v_model_ak47_lg_3[] = { "models/zp_models/ze_armas/v_ak47_ze.mdl" }
new const v_model_m3_lg_3[] = { "models/zp_models/ze_armas/v_m3_ze.mdl" }
new const v_model_xm1014_lg_3[] = { "models/zp_models/ze_armas/v_xm1014_ze.mdl" }
new const v_model_mp5_lg_3[] = { "models/zp_models/ze_armas/v_mp5_ze.mdl" }
new const v_model_m249_lg_3[] = { "models/zp_models/xmas_armas/v_m249_ze.mdl" }
new const v_model_glock18_lg_3[] = { "models/zp_models/ze_armas/v_glock18_ze.mdl" }
new const v_model_usp_lg_3[] = { "models/zp_models/ze_armas/v_usp_ze.mdl" }
new const v_model_deagle_lg_3[] = { "models/zp_models/ze_armas/v_deagle_ze.mdl" }
new const v_model_elite_lg_3[] = { "models/zp_models/ze_armas/v_elite_ze.mdl" }

// Knifes
new const v_model_knife[] = { "models/ze_knifes/v_hands.mdl" }
new const p_model_knife[] = { "models/ze_knifes/p_hands.mdl" }
new const v_model_knife1[] = { "models/ze_knifes/v_razor.mdl" }
new const p_model_knife1[] = { "models/ze_knifes/p_razor.mdl" }
new const v_model_knife2[] = { "models/ze_knifes/v_strong.mdl" }
new const p_model_knife2[] = { "models/ze_knifes/p_strong.mdl" }
new const v_model_knife3[] = { "models/ze_knifes/v_combat.mdl" }
new const p_model_knife3[] = { "models/ze_knifes/p_combat.mdl" }
new const v_model_knife4[] = { "models/ze_knifes/v_xmas.mdl" }
new const p_model_knife4[] = { "models/ze_knifes/p_xmas.mdl" }
new const v_model_knife5[] = { "models/ze_knifes/v_crowbar.mdl" }
new const p_model_knife5[] = { "models/ze_knifes/p_crowbar.mdl" }
new const v_model_knife6[] = { "models/ze_knifes/v_hammer2.mdl" }
new const p_model_knife6[] = { "models/ze_knifes/p_hammer2.mdl" }
new const v_model_knife7[] = { "models/ze_knifes/v_machete.mdl" }
new const p_model_knife7[] = { "models/ze_knifes/p_machete.mdl" }
new const v_model_knife8[] = { "models/ze_knifes/v_katana.mdl" }
new const p_model_knife8[] = { "models/ze_knifes/p_katana.mdl" }
new const v_model_knife9[] = { "models/ze_knifes/v_skullaxe.mdl" }
new const p_model_knife9[] = { "models/ze_knifes/p_skullaxe.mdl" }
new const v_model_knife10[] = { "models/ze_knifes/v_katanad.mdl" }
new const p_model_knife10[] = { "models/ze_knifes/p_katanad.mdl" }
new const v_model_knife11[] = { "models/ze_knifes/v_moto.mdl" }
new const p_model_knife11[] = { "models/ze_knifes/p_moto.mdl" }
new const v_model_knife_angel[] = { "models/zp_models/v_knife_angel.mdl" }
new const p_model_knife_angel[] = { "models/zp_models/p_knife_angel.mdl" }

// Knifes
new const hat_1[] = { "" }
new const hat_2[] = { "models/hats_ze/flaglancelot.mdl" }
new const hat_3[] = { "models/hats_ze/czerwony_sonic.mdl" }
new const hat_4[] = { "models/hats_ze/santahat2.mdl" }
new const hat_5[] = { "models/hats_ze/cannibal.mdl" }
new const hat_6[] = { "models/hats_ze/bomba.mdl" }
new const hat_7[] = { "models/hats_ze/clon.mdl" }
new const hat_8[] = { "models/hats_ze/clon_2.mdl" }
new const hat_9[] = { "models/hats_ze/drdoom.mdl" }
new const hat_10[] = { "models/hats_ze/sheih.mdl" }
new const hat_11[] = { "models/hats_ze/svarshik.mdl" }
new const hat_12[] = { "models/hats_ze/gazowa.mdl" }
new const hat_13[] = { "models/hats_ze/marsjanin.mdl" }
new const hat_14[] = { "models/hats_ze/alien.mdl" }
new const hat_15[] = { "models/hats_ze/zelazny.mdl" }
new const hat_16[] = { "models/hats_ze/mummy.mdl" }
new const hat_17[] = { "models/hats_ze/diabel.mdl" }
new const hat_18[] = { "models/hats_ze/doccabi.mdl" }
new const hat_19[] = { "models/hats_ze/bruja.mdl" }
new const hat_20[] = { "models/hats_ze/frankenstein.mdl" }
new const hat_21[] = { "models/hats_ze/monin.mdl" }
new const hat_22[] = { "models/hats_ze/scream.mdl" }
new const hat_23[] = { "models/hats_ze/jack.mdl" }
new const hat_24[] = { "models/hats_ze/futbolista.mdl" }
new const hat_25[] = { "models/hats_ze/darkvader.mdl" }
new const hat_26[] = { "models/hats_ze/rotwaila.mdl" }
new const hat_27[] = { "models/hats_ze/mario.mdl" }



/*======================
		MENU FPS
========================*/

new FogMode[33], ModelMode[33], WeaponMode[33]

new bool:invisible[33]
/*==============================================*/


// Experience system
#define cost_levelup(%1)    (%1 * %1 * 25)
#define cost_rangeup(%1)    (%1 * 10)

#define ADMINACCESS ADMIN_CHAT
#define MAX_PLAYERS 32
#define MAX_SKINS  13 // Número máximo de skins disponibles
#define MAX_SKINS_PER_PAGE 7

// Marker HUD
new const mode_names[][] = { "Infeccion", "Multi Infeccion", "Swarm", "Nemesis", "Alien", "Assassin", "Demon", "Survivor", "Wesker", "Sniper", "Predator", "Angel", "Plague", "Cooperative", "Nemesis Extremo", "Synapsis", "Left 4 Dead", "Armageddon", "Crysis", "Assassins vs Snipers", "Apocalypse", "Nightmare", "Ultimate" }
new const mode_colors[sizeof(mode_names)][3] =
{
//	R	G	B
	{245, 	134, 	12},		// Normal Infection
	{200, 	50, 	0},		// Multiple Infection
	{20, 	150, 	20},		// Swarm Mode
	{255, 	0, 	0}, 		// Nemesis Mode
	{25, 	25, 	100},		// Alien Mode
	{255, 	150, 	20},		// Assassin Mode
	{186, 	0, 	255}, 		// Demon Mode
	{20, 	20, 	255},		// Survivor Mode
	{255, 	215, 	0},		// Wesker Mode
	{0, 	255, 	255},		// Sniper Mode
	{255, 	255, 	255},		// Predator Mode
	{255, 	100, 	0},		// Angel Mode
	{0, 	50, 	200},		// Plague Mode
	{0, 	0, 	255}, 		// Cooperative Mode
	{0, 	0, 	255}, 		// Nemesis Extremo Mode	
	{125, 	30, 	120},		// Synapsis Mode
	{20, 	100, 	20},		// Left 4 Dead Mode
	{0, 	255, 	0},		// Armageddon Mode
	{200, 	20, 	150},		// Crysis Mode
	{250, 	186, 	0},		// Assassins vs Snipers Mode
	{255, 	20, 	20},		// Apocalypse Mode
	{255, 	0, 	255},		// Nightmare Mode
	{125, 	125, 	125}		// Ultimate Mode
}

// Skills customization
#define experience 200
#define skill_cost(%1)        (%1 * 2) + 1 // skill's cost
#define quest_cost(%1)        (%1 * 15) + 15 // skill's cost
#define round_cost(%1)        (%1 * 30) + 30 // skill's cost
#define experience_cost(%1)        (%1 * 200) // skill's cost
#define ammount_hdamage(%1)         (%1 + 0) * 0.004 // human damage skill
#define ammount_hhealth(%1)         (%1 * 2) // human health skill
#define ammount_hspeed(%1)         (%1 * 0.4) // human speed skill
#define ammount_hgravity(%1)     ((%1 * 0.0005) * 5.0) // human gravity skill
#define ammount_zhealth(%1)         (%1 * 7) // zombie health skill
#define ammount_zspeed(%1)         (%1 * 0.4) // zombie speed skill
#define ammount_zgravity(%1)     ((%1 * 0.0005) * 5.0) // zombie gravity skill
#define ammount_sdamage(%1)         (%1 * 0.4) // human damage skill
#define ammount_sgravity(%1)         (%1 * 2) // human damage skill
#define ammount_sspeed(%1)         (%1 * 40) // human damage skill


// Human and zombie max skills
new const g_skill_max[][] =
{
    	{ 0, 0, 0, 0, 0 }, // HUMANS
    	{ 0, 0, 0, 0, 0 }  // ZOMBIES
}

new const g_quest_max[][] =
{
    	{ 25, 25, 25, 25, 25, 25, 25, 25 }
}

// FVault saves
new const g_VaultCreated[] = "ze_created" // save accounts and character counts
new const g_VaultAccounts[] = "ze_accounts" // save accounts
new const g_VaultCharacters[] = "ze_characters" // save characters
new const g_VaultExp[] = "ze_experience" // save experience
new const g_VaultClasses[] = "ze_classes" // save class
new const g_VaultKills[] = "ze_kills" // save kills
new const g_VaultQuests[] = "ze_quests" // save quests
new const g_VaultTime[] = "ze_time" // save time and rounds
new const g_VaultColors[] = "ze_colors" // colors experience
new const g_VaultPj[] = "ze_pj" // colors experience

// Limiters for stuff not worth making dynamic arrays out of (increase if needed)
const MAX_CSDM_SPAWNS = 128

const m_pPlayer = 41

/*================================================================================
 Customization ends here! Editing anything beyond
 here is not officially supported. Proceed at your own risk...
=================================================================================*/

#include <amxmodx>
#include <amxmisc>
#include <cstrike>
#include <cs_player_models_api>
#include <engine>
#include <fakemeta>
#include <fun>
#include <fvault>
#include <hamsandwich>
#include <xs>
#include <csx>
#include <weapons>


/*================================================================================
 [Constants, Offsets, Macros]
=================================================================================*/

// Plugin Version
new const PLUGIN_VERSION[] = "1.0"

// Plugin Authors
new const PLUGIN_AUTHOR[] = "DASH"
new const PLUGIN_COAUTHOR[] = "DASH"

// Customization file sections
enum
{
	SECTION_NONE = 0,
	SECTION_ACCOUNT,
	SECTION_XP,
	SECTION_COMBO,
	SECTION_CHAT,
	SECTION_ADMINS,
	SECTION_ACCESS_FLAGS,
	SECTION_PLAYER_MODELS,
	SECTION_WEAPON_MODELS,
	SECTION_GRENADE_SPRITES,
	SECTION_OTHER_MODELS_SPRITES,
	SECTION_SOUNDS,
	SECTION_AMBIENCE_SOUNDS,
	SECTION_BUY_MENU_WEAPONS,
	SECTION_EXTRA_ITEMS_WEAPONS,
	SECTION_HARD_CODED_ITEMS,
	SECTION_WEATHER_EFFECTS,
	SECTION_SKY,
	SECTION_LIGHTNING,
	SECTION_ZOMBIE_DECALS,
	SECTION_KNOCKBACK,
	SECTION_OBJECTIVE_ENTS
}

// Access flags
enum
{
	ACCESS_ENABLE_MOD = 0,
	ACCESS_ADMIN_MENU,
	ACCESS_START_MODES,
	ACCESS_RESPAWN_PLAYERS,
	ACCESS_EXTRA_ITEMS_FREE,
	ACCESS_CLASSES_FREE,
	ACCESS_WEAPONS_FREE,
	ACCESS_ADMIN_MODELS,
	MAX_ACCESS_FLAGS
}

// Task offsets
enum (+= 100)
{
	TASK_TEAM = 2000,
	TASK_SPAWN,
	TASK_BLOOD,
	TASK_AURA,
	TASK_BURN,
	TASK_NVISION,
	TASK_FLASH,
	TASK_CHARGE,
	TASK_SHOWHUD,
	TASK_MAKEZOMBIE,
	TASK_WELCOMEMSG,
	TASK_THUNDER_PRE,
	TASK_THUNDER,
	TASK_TIME,
	TASK_COMBO,
	TASK_MARKER,
	TASK_HEALTH,
	TASK_COUNTDOWN,
	TASK_INFO_COMBO,
	TASK_FINISH_COMBO,
	TASK_RESET_COMBO
}

// Player status
enum
{
	OFFLINE = 0,
	CHARACTER_MENU,
	ONLINE_SPEC,
	ONLINE
}

// IDs inside tasks
#define ID_TEAM (taskid - TASK_TEAM)
#define ID_SPAWN (taskid - TASK_SPAWN)
#define ID_BLOOD (taskid - TASK_BLOOD)
#define ID_AURA (taskid - TASK_AURA)
#define ID_BURN (taskid - TASK_BURN)
#define ID_NVISION (taskid - TASK_NVISION)
#define ID_FLASH (taskid - TASK_FLASH)
#define ID_CHARGE (taskid - TASK_CHARGE)
#define ID_SHOWHUD (taskid - TASK_SHOWHUD)
#define ID_TIME (taskid - TASK_TIME)
#define ID_COMBO (taskid - TASK_COMBO)
#define ID_HEALTH (taskid - TASK_HEALTH)
#define ID_INFO_COMBO (taskid - TASK_INFO_COMBO)
#define ID_FINISH_COMBO (taskid - TASK_FINISH_COMBO)
#define ID_RESET_COMBO (taskid - TASK_RESET_COMBO)  
#define TAG    "[ZE-Party]"
#define ID_HUD    (taskid - TASK_HUD)

enum (+= 77) 
{
    TASK_HUD = 777,
    TASK_ACEPT
}

enum 
{
    NONE = -1,
    Master,
    Start_Amount
}

enum _:pdata 
{
    In_Party,
    Position,
    Amount_In_Party,
    Block_Party,
    UserName[32]
}

enum _:DataCallBack 
{
    MASTER,
    USER
}

// For select a character
#define SELECTED_CHARACTER g_character[id]

// BP Ammo Refill task
#define REFILL_WEAPONID args[0]

// For weapon buy menu handlers
#define WPN_STARTID g_menu_data[id][1]
#define WPN_MAXIDS ArraySize(g_primary_items)
#define WPN_SELECTION (g_menu_data[id][1]+key)

// For player list menu handlers
#define PL_ACTION g_menu_data[id][0]
#define PL_RESPAWN g_menu_data[id][0]


// For remembering menu pages
#define MENU_PAGE_HCLASS g_menu_data[id][5]
#define MENU_PAGE_ZCLASS g_menu_data[id][6]
#define MENU_PAGE_EXTRAS g_menu_data[id][7]
#define MENU_PAGE_PLAYERS g_menu_data[id][8]
#define MENU_PAGE_LEVELS g_menu_data[id][9]

// For some menu handlers
#define CONFIRM_MENU g_menu_data[id][10]
#define STATISTICS_MENU g_menu_data[id][11]
#define SKILL_MENU g_menu_data[id][12]
#define COLOR_MENU g_menu_data[id][13]

#define ADMIN ADMIN_KICK	// Custom admin level

// For extra items menu handlers
#define EXTRAS_CUSTOM_STARTID (EXTRA_WEAPONS_STARTID + ArraySize(g_extraweapon_names))

#define HattrickRange(%1,%2) entity_range(%1,%2)
#define HE_MODEL_EXPLODE	"sprites/zerogxplode.spr"
//#define HE_SOUND_EXPLODE		"fvox/flatline.wav"

#define TASK_AMB 3256

// Comment the following line to disable ambience sounds
// Just add two slashes ( // )
#define AMBIENCE_SOUNDS
#define AMBIENCE_SOUNDS2
#define AMBIENCE_SOUNDS3
#define AMBIENCE_SOUNDS4

#if defined AMBIENCE_SOUNDS
// Ambience Sounds (only .wav and .mp3 formats supported)
// Add as many as you want [Randomly chosen if more than one]
new const g_sound_ambience[][] =
{ 
    "ze_sound/ze_ambiente_xmas.mp3"
}

// Duration in seconds of each sound
new const Float:g_sound_ambience_duration[] = { 210.0 , 210.0 }
#endif

#if defined AMBIENCE_SOUNDS2
// Ambience Sounds (only .wav and .mp3 formats supported)
// Add as many as you want [Randomly chosen if more than one]
new const g_sound_ambience2[][] =
{ 
    "ze_sound/ze_nemesis.mp3"
}

// Duration in seconds of each sound
new const Float:g_sound_ambience_duration2[] = { 128.0 , 128.0 }
#endif

#if defined AMBIENCE_SOUNDS3
// Ambience Sounds (only .wav and .mp3 formats supported)
// Add as many as you want [Randomly chosen if more than one]
new const g_sound_ambience3[][] =
{ 
    "ze_sound/ze_survivor.mp3"
}

// Duration in seconds of each sound
new const Float:g_sound_ambience_duration3[] = { 74.0 , 74.0 }
#endif

#if defined AMBIENCE_SOUNDS4
// Ambience Sounds (only .wav and .mp3 formats supported)
// Add as many as you want [Randomly chosen if more than one]
new const g_sound_ambience4[][] =
{ 
    "ze_sound/ze_left_4_dead.mp3"
}

// Duration in seconds of each sound
new const Float:g_sound_ambience_duration4[] = { 188.0 , 188.0 }
#endif

// Menu selections
const MENU_KEY_BACK = 7
const MENU_KEY_NEXT = 8
const MENU_KEY_EXIT = 9

// Hard coded extra items
enum
{
	EXTRA_NVISION = 0,
	EXTRA_FIRE,
	EXTRA_FROST,
	EXTRA_GAS,
	EXTRA_ANTI,
	EXTRA_ANTIDOTE,
	EXTRA_MADNESS,
	EXTRA_INFBOMB,
	EXTRA_ANTI_ICE,
	EXTRA_ANTI_FIRE,
	EXTRA_WEAPONS_STARTID
}

// Classes
enum
{
	HUMAN = 0,
	LAST_HUMAN,
	SURVIVOR,
	WESKER,
	SNIPER,
	PREDATOR,
	ANGEL,
	ZOMBIE,
	FIRST_ZOMBIE,
	LAST_ZOMBIE,
	NEMESIS,
	ALIEN,
	ASSASSIN,
	DEMON
}

// Game modes
enum
{
	MODE_NONE = 0,
	MODE_INFECTION,
	MODE_MULTI,
	MODE_SWARM,
	MODE_NEMESIS,
	MODE_ALIEN,
	MODE_ASSASSIN,
	MODE_DEMON,
	MODE_SURVIVOR,
	MODE_WESKER,
	MODE_SNIPER,
	MODE_PREDATOR,
	MODE_ANGEL,
	MODE_PLAGUE,
	MODE_COOPERATIVE,
	MODE_NEXTREMO,
	MODE_SYNAPSIS,
	MODE_L4D,
	MODE_ARMAGEDDON,
	MODE_CRYSIS,
	MODE_AVS,
	MODE_APOCALYPSE,
	MODE_NIGHTMARE,
	MODE_ULTIMATE
}

// ZP/ZA Teams
const ZP_TEAM_NO_ONE = 0
const ZP_TEAM_ANY = 0
const ZP_TEAM_ZOMBIE = (1<<0)
const ZP_TEAM_HUMAN = (1<<1)
const ZP_TEAM_NEMESIS = (1<<2)
const ZP_TEAM_SURVIVOR = (1<<3)
const ZA_TEAM_WESKER = (1<<4)
const ZA_TEAM_ALIEN = (1<<5)
new const ZA_TEAM_NAMES[][] = { "ZOMBIE , HUMAN", "ZOMBIE", "HUMAN", "ZOMBIE , HUMAN", "NEMESIS",
			"ZOMBIE , NEMESIS", "HUMAN , NEMESIS", "ZOMBIE , HUMAN , NEMESIS",
			"SURVIVOR", "ZOMBIE , SURVIVOR", "HUMAN , SURVIVOR", "ZOMBIE , HUMAN , SURVIVOR",
			"NEMESIS , SURVIVOR", "ZOMBIE , NEMESIS , SURVIVOR", "HUMAN, NEMESIS, SURVIVOR",
			"ZOMBIE , HUMAN , NEMESIS , SURVIVOR", "WESKER", "ZOMBIE , WESKER", "HUMAN , WESKER", 
			"ZOMBIE , HUMAN , WESKER", "NEMESIS , WESKER", "ZOMBIE , NEMESIS , WESKER", 
			"HUMAN, NEMESIS, WESKER", "ZOMBIE , HUMAN , NEMESIS , WESKER", "SURVIVOR, WESKER",
			"ZOMBIE, SURVIVOR, WESKER", "HUMAN, SURVIVOR, WESKER", "ZOMBIE, HUMAN, SURVIVOR, WESKER",
			"NEMESIS, SURVIVOR, WESKER", "ZOMBIE, NEMESIS, SURVIVOR, WESKER",
			"HUMAN, NEMESIS, SURVIVOR, WESKER", "ZOMBIE, HUMAN, NEMESIS, SURVIVOR, WESKER",
			"ALIEN", "ZOMBIE, ALIEN", "HUMAN, ALIEN", "ZOMBIE, HUMAN, ALIEN", "NEMESIS, ALIEN",
			"ZOMBIE, NEMESIS, ALIEN", "HUMAN, NEMESIS, ALIEN", "ZOMBIE, HUMAN, NEMESIS, ALIEN",
			"SURVIVOR, ALIEN", "ZOMBIE, SURVIVOR, ALIEN", "HUMAN, SURVIVOR, ALIEN",
			"ZOMBIE, HUMAN, SURVIVOR, ALIEN", "NEMESIS, SURVIVOR, ALIEN", "ZOMBIE, NEMESIS, SURVIVOR, ALIEN",
			"HUMAN, NEMESIS, SURVIVOR, ALIEN", "ZOMBIE, HUMAN, NEMESIS, SURVIVOR, ALIEN", "WESKER, ALIEN",
			"ZOMBIE, WESKER, ALIEN", "HUMAN, WESKER, ALIEN", "ZOMBIE, HUMAN, WESKER, ALIEN",
			"NEMESIS, WESKER, ALIEN", "ZOMBIE, NEMESIS, WESKER, ALIEN", "HUMAN, NEMESIS, WESKER, ALIEN",
			"ZOMBIE, HUMAN, NEMESIS, WESKER, ALIEN", "SURVIVOR, WESKER, ALIEN", "ZOMBIE, SURVIVOR, WESKER, ALIEN",
			"HUMAN, SURVIVOR, WESKER, ALIEN", "ZOMBIE, HUMAN, SURVIVOR, WESKER, ALIEN",
			"NEMESIS, SURVIVOR, WESKER, ALIEN", "ZOMBIE, NEMESIS, SURVIVOR, WESKER, ALIEN",
			"HUMAN, NEMESIS, SURVIVOR, WESKER, ALIEN", "ZOMBIE, HUMAN, NEMESIS, SURVIVOR, WESKER, ALIEN" }

// Human classes
const HCLASS_NONE = -1

// Zombie classes
const ZCLASS_NONE = -1

// Human and zombie skill names
new const g_skill_names[2][5][] =
{
    	{
        		"Aumentar Ataque",    
        		"Aumentar Vitalidad",
        		"Aumentar Velocidad",         // HUMANS
        		"Disminuir Gravedad",
        		"Aumentar Armadura"
    	},
    	{
        		"Aumentar Ataque",
        		"Aumentar Vitalidad",
        		"Aumentar Velocidad",         // ZOMBIES
        		"Disminuir Gravedad",
        		"Aumentar Defensa"
    	}
}

// Quest
new const g_quest_names[3][8][] =
{
    	{
        		"Infectar Humanos",
		"Matar Zombies",	
        		"Matar Humanos",
        		"Escapes Exitos",         // REWARD NAME
        		"Hacer Danios",
		"Hacer Combos",
		"Matar Survivors,Weskers,Snipers",
        		"Matar Nemesis,Aliens,Assassins"
    	},
    	{
        		"Humanos",
        		"Zombies",
		"Humanos",
		"Escapes Exitos",
        		"Danios",
        		"Combos",
		"Survivors,Weskers,Snipers",
        		"Nemesis,Aliens,Assassins"
    	},
	{
        		"Infectar",
        		"Matar",
		"Matar",
		"Realizar",
        		"Realizar",         // MUST KILL
        		"Realizar",
		"Matar",
        		"Matar"
    	}
}

// HUD messages
const Float:HUD_EVENT_X = -1.0
const Float:HUD_EVENT_Y = 0.17
const Float:HUD_INFECT_X = 0.05
const Float:HUD_INFECT_Y = 0.45
const Float:HUD_MARKER_X = -1.0
const Float:HUD_MARKER_Y = 0.0

// Hack to be able to use Ham_Player_ResetMaxSpeed (by joaquimandrade)
new Ham:Ham_Player_ResetMaxSpeed = Ham_Item_PreFrame

// CS Player PData Offsets (win32)
const PDATA_SAFE = 2
const OFFSET_PAINSHOCK = 108 // ConnorMcLeod
const OFFSET_CSTEAMS = 114
const OFFSET_FLASHLIGHT_BATTERY = 244

// CS Weapon CBase Offsets (win32)
const OFFSET_WEAPONOWNER = 41

// Linux diff's
const OFFSET_LINUX = 5 // offsets 5 higher in Linux builds
const OFFSET_LINUX_WEAPONS = 4 // weapon offsets are only 4 steps higher on Linux

// CS Teams
enum
{
	FM_CS_TEAM_UNASSIGNED = 0,
	FM_CS_TEAM_T,
	FM_CS_TEAM_CT,
	FM_CS_TEAM_SPECTATOR
}
new const CS_TEAM_NAMES[][] = { "UNASSIGNED", "TERRORIST", "CT", "SPECTATOR" }

// Some constants
const HIDE_RHA = (1<<3)
const HIDE_MONEY = (1<<5)
const UNIT_SECOND = (1<<12)
const DMG_HEGRENADE = (1<<24)
const VGUI_JOIN_TEAM_NUM = 2
const IMPULSE_FLASHLIGHT = 100
const USE_USING = 2
const USE_STOPPED = 0
const STEPTIME_SILENT = 999
const BREAK_GLASS = 0x01
const BREAK_WOOD = 0x08
const FFADE_IN = 0x0000
const FFADE_STAYOUT = 0x0004
const PEV_SPEC_TARGET = pev_iuser2

// Max BP ammo for weapons
new const MAXBPAMMO[] = { -1, 52, -1, 90, 1, 32, 1, 100, 90, 1, 120, 100, 100, 90, 90, 90, 100, 120,
			30, 120, 200, 32, 90, 120, 90, 2, 35, 90, 90, -1, 100 }

// Max Clip for weapons
new const MAXCLIP[] = { -1, 13, -1, 10, -1, 7, -1, 31, 31, -1, 31, 20, 25, 31, 35, 25, 12, 20,
			10, 31, 100, 8, 31, 31, 20, -1, 7, 31, 31, -1, 50 }

// Amount of ammo to give when buying additional clips for weapons
new const BUYAMMO[] = { -1, 13, -1, 30, -1, 8, -1, 12, 30, -1, 30, 50, 12, 30, 30, 30, 12, 30,
			10, 30, 30, 8, 30, 30, 30, -1, 7, 30, 30, -1, 50 }

// Ammo IDs for weapons
new const AMMOID[] = { -1, 9, -1, 2, 12, 5, 14, 6, 4, 13, 10, 7, 6, 4, 4, 4, 6, 10,
			1, 10, 3, 5, 4, 10, 2, 11, 8, 4, 2, -1, 7 }

// Ammo Type Names for weapons
new const AMMOTYPE[][] = { "", "357sig", "", "762nato", "", "buckshot", "", "45acp", "556nato", "", "9mm", "57mm", "45acp",
			"556nato", "556nato", "556nato", "45acp", "9mm", "338magnum", "9mm", "556natobox", "buckshot",
			"556nato", "9mm", "762nato", "", "50ae", "556nato", "762nato", "", "57mm" }

// Weapon IDs for ammo types
new const AMMOWEAPON[] = { 0, CSW_AWP, CSW_SCOUT, CSW_M249, CSW_AUG, CSW_XM1014, CSW_MAC10, CSW_FIVESEVEN, CSW_DEAGLE,
			CSW_P228, CSW_ELITE, CSW_FLASHBANG, CSW_HEGRENADE, CSW_SMOKEGRENADE, CSW_C4 }

// Primary and Secondary Weapon Names
new const WEAPONNAMES[][] = { "", "P228 Compact", "", "Schmidt Scout", "", "XM1014 M4", "", "Ingram MAC-10", "Steyr AUG A1",
			"", "Dual Elite Berettas", "FiveseveN", "UMP 45", "SG-550 Auto-Sniper", "IMI Galil", "Famas",
			"USP .45 ACP Tactical", "Glock 18C", "AWP Magnum Sniper", "MP5 Navy", "M249 Para Machinegun",
			"M3 Super 90", "M4A1 Carbine", "Schmidt TMP", "G3SG1 Auto-Sniper", "", "Desert Eagle .50 AE",
			"SG-552 Commando", "AK-47 Kalashnikov", "", "ES P90" }

// Weapon entity names
new const WEAPONENTNAMES[][] = { "", "weapon_p228", "", "weapon_scout", "weapon_hegrenade", "weapon_xm1014", "weapon_c4", "weapon_mac10",
			"weapon_aug", "weapon_smokegrenade", "weapon_elite", "weapon_fiveseven", "weapon_ump45", "weapon_sg550",
			"weapon_galil", "weapon_famas", "weapon_usp", "weapon_glock18", "weapon_awp", "weapon_mp5navy", "weapon_m249",
			"weapon_m3", "weapon_m4a1", "weapon_tmp", "weapon_g3sg1", "weapon_flashbang", "weapon_deagle", "weapon_sg552",
			"weapon_ak47", "weapon_knife", "weapon_p90" }

// Weaponbox entities
new const WEAPONBOX[6] = { 34, 35, ... }

// CS sounds
new const sound_flashlight[] = "items/flashlight1.wav"
new const sound_buyammo[] = "items/9mmclip1.wav"
new const sound_armorhit[] = "player/bhit_helmet-1.wav"

// Explosion radius for custom grenades
const Float:NADE_EXPLOSION_RADIUS = 240.0

// HACK: pev_ field used to store additional ammo on weapons
const PEV_ADDITIONAL_AMMO = pev_iuser1

// HACK: pev_ field used to store custom nade types and their values
const PEV_NADE_TYPE = pev_flTimeStepSound
const NADE_TYPE_INFECTION = 1111
const NADE_TYPE_NAPALM = 2222
const NADE_TYPE_FROST = 3333
const NADE_TYPE_GAS = 4444
const NADE_TYPE_ANTI = 5555

// Weapon bitsums
const PRIMARY_WEAPONS_BIT_SUM = (1<<CSW_SCOUT)|(1<<CSW_XM1014)|(1<<CSW_MAC10)|(1<<CSW_AUG)|(1<<CSW_UMP45)|(1<<CSW_SG550)|(1<<CSW_GALIL)|(1<<CSW_FAMAS)|(1<<CSW_AWP)|(1<<CSW_MP5NAVY)|(1<<CSW_M249)|(1<<CSW_M3)|(1<<CSW_M4A1)|(1<<CSW_TMP)|(1<<CSW_G3SG1)|(1<<CSW_SG552)|(1<<CSW_AK47)|(1<<CSW_P90)
const SECONDARY_WEAPONS_BIT_SUM = (1<<CSW_P228)|(1<<CSW_ELITE)|(1<<CSW_FIVESEVEN)|(1<<CSW_USP)|(1<<CSW_GLOCK18)|(1<<CSW_DEAGLE)

// Allowed weapons for zombies (added grenades/bomb for sub-plugin support, since they shouldn't be getting them anyway)
const ZOMBIE_ALLOWED_WEAPONS_BITSUM = (1<<CSW_KNIFE)|(1<<CSW_HEGRENADE)|(1<<CSW_FLASHBANG)|(1<<CSW_SMOKEGRENADE)|(1<<CSW_C4)

// Menu keys
const KEYSMENU = MENU_KEY_1|MENU_KEY_2|MENU_KEY_3|MENU_KEY_4|MENU_KEY_5|MENU_KEY_6|MENU_KEY_7|MENU_KEY_8|MENU_KEY_9|MENU_KEY_0

// Custom forward return values
const ZP_PLUGIN_HANDLED = 97

/*================================================================================
 [Global Variables]
=================================================================================*/

// Player vars
new g_class[33] // is human/last human/survivor/wesker/zombie/first zombie/last zombie/nemesis/alien
new g_frozen[33] // is frozen (can't move)
new Float:g_frozen_gravity[33] // store previous gravity when frozen
new g_nodamage[33] // has spawn protection/zombie madness
new g_madness[33]
new g_respawn_as_zombie[33] // should respawn as zombie
new g_nvision[33] // has night vision
new g_nvisionenabled[33] // has night vision turned on
new g_hud_stats_t[33], Float:g_hud_stats_x[33], Float:g_hud_stats_y[33] // type the hud
new g_hudred[33], g_hudgreen[33], g_hudblue[33] // hud color
new g_nvgred[33], g_nvggreen[33], g_nvgblue[33] // nvg color
new g_flashred[33], g_flashgreen[33], g_flashblue[33] // flashlight color
new g_hud[33], g_weapon[33]
new g_models[33], g_hats[33], g_glows[33], g_knifes[33], g_grenades[33]
new g_zombieclass[33] // zombie class
new g_zombieclassnext[33] // zombie class for next infection
new g_humanclass[33] // human class
new g_humanclassnext[33] // zombie class for next round
new g_flashlight[33] // has custom flashlight turned on
new g_flashbattery[33] = { 100, ... } // custom flashlight battery
new g_canbuy[33] // is allowed to buy a new weapon through the menu
new g_categoryb[33] // category b weapons
new g_superm249[33] // special m249
new g_superdeagle[33] // special deagle
new g_superawp[33] // special deagle
new g_superknife[33] // special deagle
new g_specialawp[33] // special awps
new g_level[33] // level
new g_experience[33] // experience
new g_rangelevel[33] // range level
new g_fame[33] // fame
new g_point[33]
new g_primary[33]
new g_secondary[33]
new g_nomenu[33]
new g_ammopacks[33][2] // ammo pack count
new g_damagedealt[33] // damage dealt to zombies (used to calculate ammo packs reward)
new g_damage_done[33] // damage done for combo
new g_comboreward[33] // total experience in combo
new g_points[33][2] // human and zombie points
new g_usedpoints[33][2] // human and zombie used points
new g_skill_points[33][2][5] // human and zombie skills
new g_infected[33][2] // infected humans/times of infected
new g_killed[33][2][8] // killed/times dead like humans, zombies, survivors, weskers, nemesis and aliens // damage inflicted and received like human, zombie, survivor, wesker, nemesis and aliens
new g_escape[33]
new g_quest[33] // selected quest
new g_completed[33] // selected quest
new g_questcompleted[33][8] // completed quest
new g_questkill[33][8] // killed humans, zombies, survivors, weskers, nemesis and aliens in quest
new g_questrounds[33] // rounds for a quest
new g_playedtime[33][4] // played rounds, hours, minutes, seconds
new Float:g_lastleaptime[33] // time leap was last used
new Float:g_lastflashtime[33] // time flashlight was last toggled
new g_playermodel[33][32] // current model's short name [player][model]
new g_motd[1546] // show motd
new g_menu[1053] // show menu
new g_menu_data[33][14] // data for some menu handlers
new g_burning_duration[33] // burning task duration
new Float:g_buytime[33] // used to calculate custom buytime
new escape[33]

// creamos las variables
new g_damagecombo[33] // variable del damage causado por el player
new g_damagehits[33] // variable de los hits provocados por el damage
new g_combo[33] // variable del combo
new g_info_combo[33][64] // variable de la información de combo
#define ammount_damage(%1)    (%1 + 1) * 1000 // determinamos porcentaje en una ecuación matemática

// Account system vars (player)
new g_attempts[33] // attempts for logging
new g_status[33] // status player account
new g_register_date[33][11] // register date
new g_last_loggin[33][11] // last loggin date
new user_id[33][2][32] // ID account
new user_password[33][2][35] // password account
new g_character[33] // using character
new g_charactername[33][1][32] // characters name

// Game vars
new g_pluginenabled // ZA enabled
new g_minidcharacters // min characters in ID account
new g_minpasscharacters // min characters in password account
new g_attemptslogging // attempts for logging
new g_newround // new round starting
new g_final // new round starting
new g_endround // round ended
new g_modestarted // mode fully started
new g_lastmode // last played mode
new g_currentmode // current playing mode
new g_countdown // countdown for start mode
new g_happytime // enable happy hour
new g_scorezombies, g_scorehumans, g_gamecommencing // team scores
new g_healthshow // show health for first zombie/survivor/wesker/nemesis/alien
new g_spawnCount, g_spawnCount2 // available spawn points counter
new Float:g_spawns[MAX_CSDM_SPAWNS][3], Float:g_spawns2[MAX_CSDM_SPAWNS][3] // spawn points data
new g_lights_i // lightning current lights counter
new g_lights_cycle[32] // current lightning cycle
new g_lights_cycle_len // lightning cycle length
new Float:g_teams_targettime // for adding delays between Team Change messages
new g_MsgSync, g_MsgSync2, g_MsgSync3, g_MsgSync4, g_MsgSync5 // message sync objects
new g_trailSpr, g_exploSpr, g_flameSpr, g_smokeSpr, g_glassSpr // grenade sprites
new g_thunderSpr // awp sprite
new g_modname[32] // for formatting the mod name
new g_freezetime // whether CS's freeze time is on
new g_maxplayers // max players counter
new g_fwSpawn, g_fwPrecacheSound // spawn and precache sound forward handles
new g_infbombcounter, g_antidotecounter, g_madnesscounter, g_anti_ice_counter, g_anti_fire_counter // to limit buying some items
new g_arrays_created // to prevent stuff from being registered before initializing arrays
new g_lastplayerleaving // flag for whenever a player leaves and another takes his place
new g_switchingteam // flag for whenever a player's team change emessage is sent
new g_buyzone_ent // custom buyzone entity

new g_rango[33] 
new g_rango2[33] 
new const cost_rango[] = { 0, 10, 20, 30, 40, 50, 60, 70, 85, 100, 120, 140, 160, 180, 200, 220, 240, 250, 255 } // Los niveles de los rangos
new const cost_rango2[] = { 0, 10, 20, 30, 40, 50, 60, 70, 85, 100, 120, 140, 160, 180, 200, 220, 240, 250, 255 } // Los niveles de los rangos
new const RANGOS[][] = { "Ciudadano", "Recluta", "Soldado", "Soldado-Primero", "Agente", "Agente-Profesional", "Cabo", "Cabo-Mayor", "Brigada", "Sub-Teniente", "Teniente", "Almirante", "Teniente-Coronel", "Coronel", "Capitan", "Sub-General", "General", "Human-Assassin", "Human-Assassin" } // Los nombres de los rangos
new const RANGOS2[][] = { "Recluta", "Soldado", "Soldado-Primero", "Agente", "Agente-Profesional", "Cabo", "Cabo-Mayor", "Brigada", "Sub-Teniente", "Teniente", "Almirante", "Teniente-Coronel", "Coronel", "Capitan", "Sub-General", "General", "Human-Assassin", "Human-Assassin", "Human-Assassin" } // Los nombres de los rangos

new MenuKeys = (1 << 0) + (1 << 1) + (1 << 2) + (1 << 3) + (1 << 4) + (1 << 5) + (1 << 6) + (1 << 7) + (1 << 8)+ (1 << 9)

new const g_costmodel[]= { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }

new jumpnumber[33] = 0;
new bool:jump[33] = false

// Account system vars (game)
new g_fkey[76] // fvault key
new g_fdata[469] // fvault data
new g_createdaccounts // created account count
new g_createdcharacters // created character count
new Trie:g_tcharacternames // to save all character names

// Message IDs vars
new g_msgScoreInfo, g_msgScoreAttrib, g_msgAmmoPickup, g_msgScreenFade,
g_msgDeathMsg, g_msgSetFOV, g_msgFlashlight, g_msgFlashBat, g_msgTeamInfo, g_msgDamage,
g_msgHideWeapon, g_msgCrosshair, g_msgSayText, g_msgScreenShake

// Some forward handlers
new g_fwRoundStart, g_fwRoundEnd, g_fwUserInfected_pre, g_fwUserInfected_post,
g_fwUserHumanized_pre, g_fwUserHumanized_post, g_fwUserInfect_attempt,
g_fwUserHumanize_attempt, g_fwExtraItemSelected, g_fwUserUnfrozen,
g_fwUserLastZombie, g_fwUserLastHuman, g_fwDummyResult

// Extra Items vars
new Array:g_extraitem_name // caption
new Array:g_extraitem_lvl // level
new Array:g_extraitem_cost // cost
new Array:g_extraitem_team // team
new g_extraitem_i // loaded extra items counter

// For extra items file parsing
new Array:g_extraitem2_realname, Array:g_extraitem2_name, Array:g_extraitem2_lvl,
Array:g_extraitem2_cost, Array:g_extraitem2_team, Array:g_extraitem_new

// Human Classes vars
new Array:g_hclass_name // caption
new Array:g_hclass_info // description
new Array:g_hclass_modelsstart // start position in models array
new Array:g_hclass_modelsend // end position in models array
new Array:g_hclass_playermodel // player models array
new Array:g_hclass_modelindex // model indices array
new Array:g_hclass_lvl // level
new Array:g_hclass_hp // health
new Array:g_hclass_spd // speed
new Array:g_hclass_grav // gravity
new g_hclass_i // loaded human classes counter

// Zombie Classes vars
new Array:g_zclass_name // caption
new Array:g_zclass_info // description
new Array:g_zclass_modelsstart // start position in models array
new Array:g_zclass_modelsend // end position in models array
new Array:g_zclass_playermodel // player models array
new Array:g_zclass_modelindex // model indices array
new Array:g_zclass_clawmodel // claw model
new Array:g_zclass_lvl // level
new Array:g_zclass_hp // health
new Array:g_zclass_spd // speed
new Array:g_zclass_grav // gravity
new Array:g_zclass_kb // knockback
new g_zclass_i // loaded zombie classes counter

// For human classes file parsing
new Array:g_hclass2_realname, Array:g_hclass2_name, Array:g_hclass2_info,
Array:g_hclass2_modelsstart, Array:g_hclass2_modelsend, Array:g_hclass2_playermodel,
Array:g_hclass2_modelindex, Array:g_hclass2_lvl, Array:g_hclass2_hp, Array:g_hclass2_spd, 
Array:g_hclass2_grav, Array:g_hclass_new

// For zombie classes file parsing
new Array:g_zclass2_realname, Array:g_zclass2_name, Array:g_zclass2_info,
Array:g_zclass2_modelsstart, Array:g_zclass2_modelsend, Array:g_zclass2_playermodel,
Array:g_zclass2_modelindex, Array:g_zclass2_clawmodel, Array:g_zclass2_lvl, Array:g_zclass2_hp,
Array:g_zclass2_spd, Array:g_zclass2_grav, Array:g_zclass2_kb, Array:g_zclass_new

// Customization vars
new g_max_level, g_max_range, g_max_fame, g_fame_category[2], Array:g_unblock_words, Array:g_range_names,
Array:g_admin_names, Array:g_admin_flags, Array:g_admin_costs, g_admin_money[6],
g_access_flag[MAX_ACCESS_FLAGS], Array:model_nemesis, Array:model_alien, Array:model_assassin, Array:model_demon, Array:model_survivor, Array:model_wesker, Array:model_sniper, Array:model_predator, Array:model_angel, Array:model_player1, Array:model_player2, Array:model_player3, Array:model_player4, Array:model_player5, Array:model_player6, Array:model_player7, Array:model_player8, Array:model_player9, Array:model_player10, Array:model_player11, Array:model_player12,
Array:model_admin_zombie, Array:model_admin_human, g_same_models_humans, g_same_models_zombies, 
model_vknife_human[64], model_vknife_nemesis[64], model_vknife_alien[64], model_vknife_assassin[64], model_vknife_demon[64], model_vm249_survivor[64],
model_vdeagle_wesker[64], model_vawp_sniper[64], model_vawp_freezer[64],
model_vawp_burner[64], model_vawp_thunderer[64], model_pawp_freezer[64], model_pawp_burner[64], model_pawp_thunderer[64],
model_grenade_infect[64], model_grenade_fire[64], model_grenade_frost[64], model_grenade_fire2[64], model_grenade_frost2[64], model_grenade_gas[64], model_grenade_aurashield[64], model_pgrenade_infect[64], model_pgrenade_fire[64], model_pgrenade_frost[64], model_pgrenade_gas[64], model_pgrenade_aurashield[64], model_wgrenade_infect[64], model_wgrenade_fire[64], model_wgrenade_frost[64], model_wgrenade_gas[64], model_wgrenade_aurashield[64], 
model_aura_forzecamp[64], model_chest[64], model_vknife_admin_human[64], model_pknife_admin_human[64], model_vknife_admin_zombie[64], 
sprite_grenade_trail[64], sprite_grenade_ring[64], sprite_grenade_fire[64], sprite_grenade_smoke[64], 
sprite_grenade_frost[64], sprite_grenade_glass[64], sprite_awp_thunder[64], 
Array:sound_win_zombies, Array:sound_win_humans, Array:sound_win_no_one, Array:sound_win_zombies_ismp3,
Array:sound_win_humans_ismp3, Array:sound_win_no_one_ismp3, Array:zombie_infect,
Array:zombie_idle, Array:zombie_pain, Array:nemali_pain, Array:zombie_die, Array:zombie_fall,
Array:zombie_miss_wall, Array:zombie_hit_normal, Array:zombie_hit_stab, Array:zombie_madness, Array:sound_nemali, 
Array:sound_survwesk, Array:sound_mulswa, Array:sound_plasyn, Array:sound_armcry, Array:sound_quest, 
Array:sound_level_up, Array:sound_level_down, Array:sound_countdown, Array:grenade_infect, Array:grenade_infect_player, 
Array:grenade_fire, Array:grenade_fire_player, Array:grenade_frost, Array:grenade_frost_player, Array:grenade_explosion,
Array:grenade_frost_break, Array:grenade_aurashield, Array:sound_antidote, Array:sound_thunder, Array:sound_thunder_awp, 
Array:g_primary_items, Array:g_secondary_items, Array:g_primary_levels, Array:g_secondary_levels, Array:g_additional_items, 
Array:g_additional_levels, Array:g_primary_weaponids, Array:g_secondary_weaponids, Array:g_special_names, Array:g_special_levels,
Array:g_extraweapon_names, Array:g_extraweapon_items, Array:g_extraweapon_costs, Array:g_extraweapon_levels, g_extra_levels2[EXTRA_WEAPONS_STARTID],
g_extra_costs2[EXTRA_WEAPONS_STARTID], Array:g_combo_levels, Array:g_combo_colors, Array:g_combo_says, 
g_ambience_rain, g_ambience_snow, g_ambience_fog, g_fog_density[10], g_fog_color[12], g_sky_enable,
Array:g_sky_names, Array:lights_thunder, Array:zombie_decals, Array:g_objective_ents,
Float:kb_weapon_power[31] = { -1.0, ... }, Array:zombie_miss_slash, g_force_consistency

/*================================================================================
[CVAR pointers]
=================================================================================*/
// General Purpose
new cvar_toggle, cvar_warmup, cvar_lighting, cvar_thunder, cvar_triggered, cvar_removedoors,
cvar_blockpushables, cvar_blocksuicide, cvar_randspawn, cvar_respawnworldspawnkill,
cvar_removedropped, cvar_removemoney, cvar_buycustom, cvar_buyzonetime, cvar_randweapons, 
cvar_adminmodelshuman, cvar_adminknifemodelshuman, cvar_adminmodelszombie, cvar_adminknifemodelszombie, 
cvar_zclasses, cvar_hclasses, cvar_startammopacks, cvar_pointsfameup, 
cvar_preventconsecutive, cvar_keephealthondisconnect, cvar_huddisplay, cvar_hudstats, cvar_hudmarker

// Deathmatch
new cvar_deathmatch, cvar_spawndelay, cvar_spawnprotection, cvar_respawnonsuicide,
cvar_respawnafterlast, cvar_allowrespawninfection, cvar_allowrespawnsurvwesk, cvar_allowrespawnnemali, 
cvar_allowrespawnswarm, cvar_allowrespawnplasyn, cvar_allowrespawnarmcry, 
cvar_respawnzomb, cvar_respawnhum, cvar_respawnnemali, cvar_respawnsurvwesk

// Extra Items
new cvar_extraitems, cvar_extraweapons, cvar_extranvision, cvar_extraantidote,
cvar_antidotelimit, cvar_extramadness, cvar_madnesslimit, cvar_madnessduration,
cvar_extrainfbomb, cvar_infbomblimit, cvar_extra_anti_ice, cvar_anti_ice_limit,
cvar_extra_anti_fire, cvar_anti_fire_limit

// Flashlight and Nightvision
new cvar_nvggive, cvar_nvgsize, cvar_flashsize, cvar_flashdrain, cvar_flashcharge, cvar_flashdist, 
cvar_flashshowall

// Knockback
new cvar_knockback, cvar_knockbackdamage, cvar_knockbackpower, cvar_knockbackzvel,
cvar_knockbackducking, cvar_knockbackdist, cvar_nemknockback, cvar_aliknockback, cvar_assknockback, cvar_demknockback

// LongJump
new cvar_leapzombies, cvar_leapzombiesforce, cvar_leapzombiesheight, cvar_leapzombiescooldown,
cvar_leapnemesis, cvar_leapnemesisforce, cvar_leapnemesisheight, cvar_leapnemesiscooldown,
cvar_leapalien, cvar_leapalienforce, cvar_leapalienheight, cvar_leapaliencooldown

// Humans
new cvar_humanlasthp, cvar_humanarmor, cvar_infammo, cvar_ammodamage, cvar_xpkilledz, cvar_xpkilledn, 
cvar_xpkilleda, cvar_xpkilledas, cvar_xpkilledd

// Escape
new cvar_xp_for_escape, cvar_pu_for_escape, cvar_ap_for_escape

// Custom Grenades
new cvar_firegrenades, cvar_fireduration, cvar_firedamage, cvar_fireslowdown,
cvar_frostgrenades, cvar_freezeduration, cvar_freezedurationass, cvar_frozennem, cvar_frozenali, cvar_frozenass, cvar_frozendamage

// Special Awps
new cvar_thunderdamageawp, cvar_awpnemali

// Zombies
new cvar_zombiefirsthp, cvar_hitzones, cvar_zombiebonushp, cvar_zombiefov, cvar_zombiesilent,
cvar_zombiepainfree, cvar_zombiebleeding, cvar_zombieparticles, cvar_xpinfect, cvar_ammoinfect, 
cvar_xpkilledh, cvar_xpkilleds, cvar_xpkilledw, cvar_xpkilledsn, cvar_xpkilledp, cvar_xpkilledan

// Special Effects
new cvar_infectionscreenfade, cvar_infectionscreenshake, cvar_infectionsparkle,
cvar_infectiontracers, cvar_infectionparticles, cvar_hudicons

// Happy Hour
new cvar_happyhour, cvar_hhstart, cvar_hhend, cvar_hhdropxp

// Nemesis
new cvar_nem, cvar_nemchance, cvar_nemminplayers, cvar_nemhp, cvar_nembasehp,
cvar_nemspd, cvar_nemgravity, cvar_nemdamage, cvar_nemglow, cvar_nemaura, cvar_nem_aura_colors[3],
cvar_nempainfree

// Alien
new cvar_ali, cvar_alichance, cvar_aliminplayers, cvar_alihp, cvar_alibasehp,
cvar_alispd, cvar_aligravity, cvar_alidamage, cvar_aliglow, cvar_aliaura, cvar_ali_aura_colors[3],
cvar_alipainfree

// Assassin
new cvar_ass, cvar_asschance, cvar_assminplayers, cvar_asshp, cvar_assbasehp,
cvar_assspd, cvar_assgravity, cvar_assdamage, cvar_assglow, cvar_asspainfree

// Demon
new cvar_dem, cvar_demchance, cvar_demminplayers, cvar_demhp, cvar_dembasehp,
cvar_demspd, cvar_demgravity, cvar_demdamage, cvar_demglow, cvar_dempainfree

// Survivor
new cvar_surv, cvar_survchance, cvar_survminplayers, cvar_survhp, cvar_survbasehp,
cvar_survspd, cvar_survgravity, cvar_survglow, cvar_survaura, cvar_survpainfree,
cvar_survignoreammo, cvar_survinfammo

// Wesker
new cvar_wesk, cvar_weskchance, cvar_weskminplayers, cvar_weskhp, cvar_weskbasehp, 
cvar_weskspd, cvar_weskgravity, cvar_weskglow, cvar_weskaura, cvar_weskpainfree, 
cvar_weskignoreammo, cvar_weskinfammo

// Sniper
new cvar_snip, cvar_snipchance, cvar_snipminplayers, cvar_sniphp, cvar_snipbasehp,
cvar_snipspd, cvar_snipgravity, cvar_snipglow, cvar_snipaura, cvar_snippainfree,
cvar_snipignoreammo, cvar_snipdamage, cvar_snipinfammo, cvar_snipfraggore

// Predator
new cvar_pred, cvar_predchance, cvar_predminplayers, cvar_predhp, cvar_predbasehp,
cvar_predspd, cvar_predgravity, cvar_predglow, cvar_predaura, cvar_predpainfree,
cvar_predignoreammo, cvar_predinfammo

// Angel
new cvar_ang, cvar_angchance, cvar_angminplayers, cvar_anghp, cvar_angbasehp,
cvar_angspd, cvar_anggravity, cvar_angglow, cvar_angaura, cvar_angpainfree,
cvar_angignoreammo, cvar_angdamage

// Swarm Mode
new cvar_swarm, cvar_swarmchance, cvar_swarmminplayers

// Multi Infection
new cvar_multi, cvar_multichance, cvar_multiminplayers, cvar_multiratio

// Plague Mode
new cvar_plague, cvar_plaguechance, cvar_plagueminplayers, cvar_plagueratio,
cvar_plaguenemnum, cvar_plaguenemhp, cvar_plaguesurvnum, cvar_plaguesurvhp
	
// Cooperative Mode
new cvar_cooperative, cvar_cooperativechance, cvar_cooperativeminplayers, cvar_cooperativeratio,
cvar_cooperativesurvnum, cvar_cooperativesurvhp, cvar_cooperativewesknum, cvar_cooperativeweskhp	,
cvar_cooperativesnipnum, cvar_cooperativesniphp	

// Nemesis Extremo Mode
new cvar_nextremo, cvar_nextremochance, cvar_nextremominplayers, cvar_nextremoratio,
cvar_nextremonemnum, cvar_nextremonemhp
	
// Synapsis Mode
new cvar_synapsis, cvar_synapsischance, cvar_synapsisminplayers, cvar_synapsisratio,
cvar_synapsisnemnum, cvar_synapsisnemhp, cvar_synapsissurvnum, cvar_synapsissurvhp

// Left 4 Dead Mode
new cvar_l4d, cvar_l4dchance, cvar_l4dminplayers

// Armageddon Mode
new cvar_armageddon, cvar_armageddonchance, cvar_armageddonminplayers, cvar_armageddonratio,
cvar_armageddonnemhp, cvar_armageddonsurvhp

// Crysis Mode
new cvar_crysis, cvar_crysischance, cvar_crysisminplayers, cvar_crysisratio, cvar_crysisalihp, 
cvar_crysisweskhp

// Assassins vs Snipers Mode
new cvar_avs, cvar_avschance, cvar_avsminplayers, cvar_avsratio, cvar_avsasshp, 
cvar_avssniphp

// Apocalypse Mode
new cvar_apocalypse, cvar_apocalypsechance, cvar_apocalypseminplayers, cvar_apocalypseratio, cvar_apocalypsenemhp,
cvar_apocalypsealihp, cvar_apocalypsesurvhp, cvar_apocalypseweskhp

// Nightmare Mode
new cvar_nightmare, cvar_nightmarechance, cvar_nightmareminplayers, cvar_nightmareratio, cvar_nightmarenemhp,
cvar_nightmareasshp, cvar_nightmaresurvhp, cvar_nightmaresniphp

// Ultimate Mode
new cvar_ultimate, cvar_ultimatechance, cvar_ultimateminplayers, cvar_ultimateratio, cvar_ultimatenemhp,
cvar_ultimatealihp, cvar_ultimateasshp, cvar_ultimatesurvhp, cvar_ultimateweskhp , cvar_ultimatesniphp

new g_PartyData[33][pdata], Array:Party_Ids[33], g_MenuCallback[DataCallBack]

new cvar_time_acept, cvar_max_players, cvar_allow_bots

new g_explosfr, g_explofre

new g_ent_hat[33]

new g_anti_ice[33]

new g_anti_fire[33]

new g_smokegrenade[33]

// Others
new cvar_logcommands

// Cached stuff for players
new g_isconnected[33] // whether player is connected
new g_isalive[33] // whether player is alive
new g_isbot[33] // whether player is a bot
new g_currentweapon[33] // player's current weapon id
new g_playername[33][32] // player's name
new g_logoutname[33][32] // player's name when log out
new Float:g_human_spd[33] // human class speed
new Float:g_zombie_spd[33] // zombie class speed
new Float:g_zombie_knockback[33] // zombie class knockback
new g_human_classname[33][32] // human class name
new g_zombie_classname[33][32] // zombie class name
new g_rangename[33][12] // range name
#define is_user_valid_connected(%1) (1 <= %1 <= g_maxplayers && g_isconnected[%1])
#define is_user_valid_alive(%1) (1 <= %1 <= g_maxplayers && g_isalive[%1])
#define is_user_valid(%1) (1 <= %1 <= g_maxplayers)

// Cached CVARs
new g_cached_zombiesilent, g_cached_leapzombies, g_cached_leapnemesis, g_cached_leapalien, 
Float:g_cached_leapzombiescooldown, Float:g_cached_leapnemesiscooldown, Float:g_cached_leapaliencooldown, 
Float:g_cached_buytime

/*================================================================================
 [Natives, Precache and Init]
=================================================================================*/

public plugin_natives()
{
	// Player specific natives
	register_native("za_get_user_status", "native_get_user_status", 1)
	register_native("zp_get_user_zombie", "native_get_user_zombie", 1)
	register_native("zp_get_user_madness", "native_get_user_madness", 1)
	register_native("zp_get_user_frozen", "native_get_user_frozen", 1)
	register_native("zp_get_user_burn", "native_get_user_burn", 1)
	register_native("zp_get_user_freeze", "native_get_user_freeze", 1)
	register_native("zp_get_user_nemesis", "native_get_user_nemesis", 1)
	register_native("za_get_user_alien", "native_get_user_alien", 1)
	register_native("zp_get_user_assassin", "native_get_user_assassin", 1)
	register_native("zp_get_user_demon", "native_get_user_demon", 1)
	register_native("zp_get_user_survivor", "native_get_user_survivor", 1)
	register_native("za_get_user_wesker", "native_get_user_wesker", 1)
	register_native("zp_get_user_sniper", "native_get_user_sniper", 1)
	register_native("zp_get_user_predator", "native_get_user_predator", 1)
	register_native("zp_get_user_angel", "native_get_user_angel", 1)
	register_native("zp_get_user_first_zombie", "native_get_user_first_zombie", 1)
	register_native("zp_get_user_last_zombie", "native_get_user_last_zombie", 1)
	register_native("zp_get_user_last_human", "native_get_user_last_human", 1)
	register_native("za_get_user_human_class", "native_get_user_human_class", 1)
	register_native("zp_get_user_zombie_class", "native_get_user_zombie_class", 1)
	register_native("za_get_user_next_hclass", "native_get_user_next_hclass", 1)
	register_native("zp_get_user_next_zclass", "native_get_user_next_zclass", 1)
	register_native("za_set_user_human_class", "native_set_user_human_class", 1)
	register_native("zp_set_user_zombie_class", "native_set_user_zombie_class", 1)
	register_native("za_get_user_level", "native_get_user_level", 1)
	register_native("za_set_user_level", "native_set_user_level", 1)
	register_native("za_get_user_fame", "native_get_user_fame", 1)
	register_native("za_set_user_fame", "native_set_user_fame", 1)
	register_native("za_get_user_experience", "native_get_user_experience", 1)
	register_native("za_set_user_experience", "native_set_user_experience", 1)
	register_native("zp_get_user_ammo_packs", "native_get_user_ammo_packs", 1)
	register_native("zp_set_user_ammo_packs", "native_set_user_ammo_packs", 1)
	register_native("za_get_user_hpoints", "native_get_user_hpoints", 1)
	register_native("za_set_user_hpoints", "native_set_user_hpoints", 1)
	register_native("za_get_user_zpoints", "native_get_user_zpoints", 1)
	register_native("za_set_user_zpoints", "native_set_user_zpoints", 1)
	register_native("za_get_user_levelup", "native_get_user_levelup", 1)
         register_native("zp_get_zombie_maxhealth", "native_get_zombie_maxhealth", 1)
	register_native("zp_get_user_batteries", "native_get_user_batteries", 1)
	register_native("zp_set_user_batteries", "native_set_user_batteries", 1)
	register_native("zp_get_user_nightvision", "native_get_user_nightvision", 1)
	register_native("zp_set_user_nightvision", "native_set_user_nightvision", 1)
	register_native("zp_infect_user", "native_infect_user", 1)
	register_native("zp_disinfect_user", "native_disinfect_user", 1)
	register_native("zp_make_user_nemesis", "native_make_user_nemesis", 1)
	register_native("za_make_user_alien", "native_make_user_alien", 1)
	register_native("zp_make_user_assassin", "native_make_user_assassin", 1)
	register_native("zp_make_user_survivor", "native_make_user_survivor", 1)
	register_native("za_make_user_wesker", "native_make_user_wesker", 1)
	register_native("zp_make_user_sniper", "native_make_user_sniper", 1)
	register_native("zp_respawn_user", "native_respawn_user", 1)
	register_native("zp_force_buy_extra_item", "native_force_buy_extra_item", 1)
	register_native("zp_override_user_model", "native_override_user_model", 1)
	
	// Round natives
	register_native("zp_has_round_started", "native_has_round_started", 1)
	register_native("zp_is_nemesis_round", "native_is_nemesis_round", 1)
	register_native("za_is_alien_round", "native_is_alien_round", 1)
	register_native("zp_is_survivor_round", "native_is_survivor_round", 1)
	register_native("za_is_wesker_round", "native_is_wesker_round", 1)
	register_native("zp_is_sniper_round", "native_is_sniper_round", 1)
	register_native("zp_is_swarm_round", "native_is_swarm_round", 1)
	register_native("zp_is_plague_round", "native_is_plague_round", 1)
	register_native("zp_is_cooperative_round", "native_is_cooperative_round", 1)
	register_native("za_is_synapsis_round", "native_is_synapsis_round", 1)
	register_native("za_is_armageddon_round", "native_is_armageddon_round", 1)
	register_native("za_is_crysis_round", "native_is_crysis_round", 1)
	register_native("zp_get_zombie_count", "native_get_zombie_count", 1)
	register_native("zp_get_human_count", "native_get_human_count", 1)
	register_native("zp_get_nemesis_count", "native_get_nemesis_count", 1)
	register_native("za_get_alien_count", "native_get_alien_count", 1)
	register_native("zp_get_survivor_count", "native_get_survivor_count", 1)
	register_native("za_get_wesker_count", "native_get_wesker_count", 1)
	
	// External additions natives
	register_native("za_register_extra_item", "native_register_extra_item", 1)
	register_native("za_register_human_class", "native_register_human_class", 1)
	register_native("za_register_zombie_class", "native_register_zombie_class", 1)
	register_native("zp_get_extra_item_id", "native_get_extra_item_id", 1)
	register_native("za_get_human_class_id", "native_get_human_class_id", 1)
	register_native("zp_get_zombie_class_id", "native_get_zombie_class_id", 1)
	register_native("za_get_human_class_info", "native_get_human_class_info", 1)
	register_native("zp_get_zombie_class_info", "native_get_zombie_class_info", 1)
}

public plugin_precache()
{
	// Register earlier to show up in plugins list properly after plugin disable/error at loading
	register_plugin("Zombie Escape", PLUGIN_VERSION, PLUGIN_AUTHOR)
	
	// To switch plugin on/off
	register_concmd("za_toggle", "cmd_toggle", _, "<1/0> - Enable/Disable Zombie Escape (will restart the current map)", 0)
	cvar_toggle = register_cvar("za_on", "1")
	
	// Plugin disabled?
	if (!get_pcvar_num(cvar_toggle)) return;
	g_pluginenabled = true
	
	// Initialize a few dynamically sized arrays (alright, maybe more than just a few...)
	g_range_names = ArrayCreate(128, 1)
	g_combo_levels = ArrayCreate(1, 1)
	g_combo_colors = ArrayCreate(32, 1)
	g_combo_says = ArrayCreate(32, 1)
	g_admin_names = ArrayCreate(32, 1)
	g_admin_flags = ArrayCreate(1, 1)
	g_admin_costs = ArrayCreate(1, 1)
	g_unblock_words = ArrayCreate(128, 1)
	model_nemesis = ArrayCreate(32, 1)
	model_alien = ArrayCreate(32, 1)
	model_assassin = ArrayCreate(32, 1)
	model_demon = ArrayCreate(32, 1)
	model_survivor = ArrayCreate(32, 1)
	model_wesker = ArrayCreate(32, 1)
	model_sniper = ArrayCreate(32, 1)
	model_predator = ArrayCreate(32, 1)
	model_angel = ArrayCreate(32, 1)
	model_player1 = ArrayCreate(32, 1)
	model_player2 = ArrayCreate(32, 1)
	model_player3 = ArrayCreate(32, 1)
	model_player4 = ArrayCreate(32, 1)
	model_player5 = ArrayCreate(32, 1)
	model_player6 = ArrayCreate(32, 1)
	model_player7 = ArrayCreate(32, 1)
	model_player8 = ArrayCreate(32, 1)
	model_player9 = ArrayCreate(32, 1)
	model_player10 = ArrayCreate(32, 1)
	model_player11 = ArrayCreate(32, 1)
	model_player12 = ArrayCreate(32, 1)
	model_admin_human = ArrayCreate(32, 1)
	model_admin_zombie = ArrayCreate(32, 1)
	sound_win_zombies = ArrayCreate(64, 1)
	sound_win_zombies_ismp3 = ArrayCreate(1, 1)
	sound_win_humans = ArrayCreate(64, 1)
	sound_win_humans_ismp3 = ArrayCreate(1, 1)
	sound_win_no_one = ArrayCreate(64, 1)
	sound_win_no_one_ismp3 = ArrayCreate(1, 1)
	zombie_infect = ArrayCreate(64, 1)
	zombie_pain = ArrayCreate(64, 1)
	nemali_pain = ArrayCreate(64, 1)
	zombie_die = ArrayCreate(64, 1)
	zombie_fall = ArrayCreate(64, 1)
	zombie_miss_slash = ArrayCreate(64, 1)
	zombie_miss_wall = ArrayCreate(64, 1)
	zombie_hit_normal = ArrayCreate(64, 1)
	zombie_hit_stab = ArrayCreate(64, 1)
	zombie_idle = ArrayCreate(64, 1)
	zombie_madness = ArrayCreate(64, 1)
	sound_nemali = ArrayCreate(64, 1)
	sound_survwesk = ArrayCreate(64, 1)
	sound_mulswa = ArrayCreate(64, 1)
	sound_plasyn = ArrayCreate(64, 1)
	sound_armcry = ArrayCreate(64, 1)
	grenade_infect = ArrayCreate(64, 1)
	grenade_infect_player = ArrayCreate(64, 1)
	grenade_fire = ArrayCreate(64, 1)
	grenade_fire_player = ArrayCreate(64, 1)
	grenade_frost = ArrayCreate(64, 1)
	grenade_frost_player = ArrayCreate(64, 1)
	grenade_frost_break = ArrayCreate(64, 1)
	grenade_explosion = ArrayCreate(64, 1)
	grenade_aurashield = ArrayCreate(64, 1)
	sound_antidote = ArrayCreate(64, 1)
	sound_thunder = ArrayCreate(64, 1)
	sound_thunder_awp = ArrayCreate(64, 1)
	sound_quest = ArrayCreate(64, 1)
	sound_level_up = ArrayCreate(64, 1)
	sound_level_down = ArrayCreate(64, 1)
	sound_countdown = ArrayCreate(128, 1)
	g_primary_items = ArrayCreate(32, 1)
	g_primary_levels = ArrayCreate(1, 1)
	g_secondary_items = ArrayCreate(32, 1)
	g_secondary_levels = ArrayCreate(1, 1)
	g_additional_items = ArrayCreate(32, 1)
	g_additional_levels = ArrayCreate(1, 1)
	g_primary_weaponids = ArrayCreate(1, 1)
	g_secondary_weaponids = ArrayCreate(1, 1)
	g_special_names = ArrayCreate(32, 1)
	g_special_levels = ArrayCreate(1, 1)
	g_extraweapon_names = ArrayCreate(32, 1)
	g_extraweapon_items = ArrayCreate(32, 1)
	g_extraweapon_costs = ArrayCreate(1, 1)
	g_extraweapon_levels = ArrayCreate(1, 1)
	g_sky_names = ArrayCreate(32, 1)
	lights_thunder = ArrayCreate(32, 1)
	zombie_decals = ArrayCreate(1, 1)
	g_objective_ents = ArrayCreate(32, 1)
	g_extraitem_name = ArrayCreate(32, 1)
	g_extraitem_lvl = ArrayCreate(1, 1)
	g_extraitem_cost = ArrayCreate(1, 1)
	g_extraitem_team = ArrayCreate(1, 1)
	g_extraitem2_realname = ArrayCreate(32, 1)
	g_extraitem2_name = ArrayCreate(32, 1)
	g_extraitem2_lvl = ArrayCreate(1, 1)
	g_extraitem2_cost = ArrayCreate(1, 1)
	g_extraitem2_team = ArrayCreate(1, 1)
	g_extraitem_new = ArrayCreate(1, 1)
	g_hclass_name = ArrayCreate(32, 1)
	g_hclass_info = ArrayCreate(72, 1)
	g_hclass_modelsstart = ArrayCreate(1, 1)
	g_hclass_modelsend = ArrayCreate(1, 1)
	g_hclass_playermodel = ArrayCreate(32, 1)
	g_hclass_modelindex = ArrayCreate(1, 1)
	g_hclass_lvl = ArrayCreate(1, 1)
	g_hclass_hp = ArrayCreate(1, 1)
	g_hclass_spd = ArrayCreate(1, 1)
	g_hclass_grav = ArrayCreate(1, 1)
	g_hclass2_realname = ArrayCreate(32, 1)
	g_hclass2_name = ArrayCreate(32, 1)
	g_hclass2_info = ArrayCreate(72, 1)
	g_hclass2_modelsstart = ArrayCreate(1, 1)
	g_hclass2_modelsend = ArrayCreate(1, 1)
	g_hclass2_playermodel = ArrayCreate(32, 1)
	g_hclass2_modelindex = ArrayCreate(1, 1)
	g_hclass2_lvl = ArrayCreate(1, 1)
	g_hclass2_hp = ArrayCreate(1, 1)
	g_hclass2_spd = ArrayCreate(1, 1)
	g_hclass2_grav = ArrayCreate(1, 1)
	g_hclass_new = ArrayCreate(1, 1)
	g_zclass_name = ArrayCreate(32, 1)
	g_zclass_info = ArrayCreate(72, 1)
	g_zclass_modelsstart = ArrayCreate(1, 1)
	g_zclass_modelsend = ArrayCreate(1, 1)
	g_zclass_playermodel = ArrayCreate(32, 1)
	g_zclass_modelindex = ArrayCreate(1, 1)
	g_zclass_clawmodel = ArrayCreate(32, 1)
	g_zclass_lvl = ArrayCreate(1, 1)
	g_zclass_hp = ArrayCreate(1, 1)
	g_zclass_spd = ArrayCreate(1, 1)
	g_zclass_grav = ArrayCreate(1, 1)
	g_zclass_kb = ArrayCreate(1, 1)
	g_zclass2_realname = ArrayCreate(32, 1)
	g_zclass2_name = ArrayCreate(32, 1)
	g_zclass2_info = ArrayCreate(72, 1)
	g_zclass2_modelsstart = ArrayCreate(1, 1)
	g_zclass2_modelsend = ArrayCreate(1, 1)
	g_zclass2_playermodel = ArrayCreate(32, 1)
	g_zclass2_modelindex = ArrayCreate(1, 1)
	g_zclass2_clawmodel = ArrayCreate(32, 1)
	g_zclass2_lvl = ArrayCreate(1, 1)
	g_zclass2_hp = ArrayCreate(1, 1)
	g_zclass2_spd = ArrayCreate(1, 1)
	g_zclass2_grav = ArrayCreate(1, 1)
	g_zclass2_kb = ArrayCreate(1, 1)
	g_zclass_new = ArrayCreate(1, 1)
	
	// Allow registering stuff now
	g_arrays_created = true
	
	// Load customization data
	load_customization_from_files()
	
	new i, buffer[100], sound[100]
	
	// Read the access flag
    new access_flag = read_flags( g_access_flag )
    
    // Precache the ambience sounds
    #if defined AMBIENCE_SOUNDS
    for (i = 0; i < sizeof g_sound_ambience; i++)
    {
        if (equal(g_sound_ambience[i][strlen(g_sound_ambience[i])-4], ".mp3"))
        {
            formatex(sound, sizeof sound - 1, "sound/%s", g_sound_ambience[i])
            precache_generic( sound )
        }
        else
        {
            precache_sound( g_sound_ambience[i] )
        }
    }
    #endif
    
    // Precache the ambience sounds
    #if defined AMBIENCE_SOUNDS2
    for (i = 0; i < sizeof g_sound_ambience2; i++)
    {
        if (equal(g_sound_ambience2[i][strlen(g_sound_ambience2[i])-4], ".mp3"))
        {
            formatex(sound, sizeof sound - 1, "sound/%s", g_sound_ambience2[i])
            precache_generic( sound )
        }
        else
        {
            precache_sound( g_sound_ambience2[i] )
        }
    }
    #endif
    
    // Precache the ambience sounds
    #if defined AMBIENCE_SOUNDS3
    for (i = 0; i < sizeof g_sound_ambience3; i++)
    {
        if (equal(g_sound_ambience3[i][strlen(g_sound_ambience3[i])-4], ".mp3"))
        {
            formatex(sound, sizeof sound - 1, "sound/%s", g_sound_ambience3[i])
            precache_generic( sound )
        }
        else
        {
            precache_sound( g_sound_ambience3[i] )
        }
    }
    #endif
    
    // Precache the ambience sounds
    #if defined AMBIENCE_SOUNDS4
    for (i = 0; i < sizeof g_sound_ambience4; i++)
    {
        if (equal(g_sound_ambience4[i][strlen(g_sound_ambience4[i])-4], ".mp3"))
        {
            formatex(sound, sizeof sound - 1, "sound/%s", g_sound_ambience4[i])
            precache_generic( sound )
        }
        else
        {
            precache_sound( g_sound_ambience4[i] )
        }
    }
    #endif
	
	// Load up the hard coded extra items
	native_register_extra_item2("NightVision", g_extra_levels2[EXTRA_NVISION], g_extra_costs2[EXTRA_NVISION], ZP_TEAM_HUMAN)
	native_register_extra_item2("G. de Fuego", 0, 10, ZP_TEAM_HUMAN)
	native_register_extra_item2("G. de Hielo", 0, 10, ZP_TEAM_HUMAN)
	native_register_extra_item2("Gas Balon", 0, 10, ZP_TEAM_HUMAN)
	native_register_extra_item2("Bomba de Antidoto", 0, 20, ZP_TEAM_HUMAN)
	native_register_extra_item2("T-Virus Antidote", g_extra_levels2[EXTRA_ANTIDOTE], g_extra_costs2[EXTRA_ANTIDOTE], ZP_TEAM_ZOMBIE)
	native_register_extra_item2("Zombie Madness", g_extra_levels2[EXTRA_MADNESS], g_extra_costs2[EXTRA_MADNESS], ZP_TEAM_ZOMBIE)
	native_register_extra_item2("Infection Bomb", g_extra_levels2[EXTRA_INFBOMB], g_extra_costs2[EXTRA_INFBOMB], ZP_TEAM_ZOMBIE)
	native_register_extra_item2("Anti-Ice", g_extra_levels2[EXTRA_ANTI_ICE], g_extra_costs2[EXTRA_ANTI_ICE], ZP_TEAM_ZOMBIE)
	native_register_extra_item2("Anti-Fire", g_extra_levels2[EXTRA_ANTI_FIRE], g_extra_costs2[EXTRA_ANTI_FIRE], ZP_TEAM_ZOMBIE)
	
	// Extra weapons
	for (i = 0; i < ArraySize(g_extraweapon_names); i++)
	{
		ArrayGetString(g_extraweapon_names, i, buffer, charsmax(buffer))
		native_register_extra_item2(buffer, ArrayGetCell(g_extraweapon_levels, i), ArrayGetCell(g_extraweapon_costs, i), ZP_TEAM_HUMAN)
	}
	
	// Custom player models
	for (i = 0; i < ArraySize(model_nemesis); i++)
	{
		ArrayGetString(model_nemesis, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	for (i = 0; i < ArraySize(model_alien); i++)
	{
		ArrayGetString(model_alien, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	for (i = 0; i < ArraySize(model_assassin); i++)
	{
		ArrayGetString(model_assassin, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	for (i = 0; i < ArraySize(model_demon); i++)
	{
		ArrayGetString(model_demon, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	for (i = 0; i < ArraySize(model_survivor); i++)
	{
		ArrayGetString(model_survivor, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	for (i = 0; i < ArraySize(model_wesker); i++)
	{
		ArrayGetString(model_wesker, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	for (i = 0; i < ArraySize(model_sniper); i++)
	{
		ArrayGetString(model_sniper, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	for (i = 0; i < ArraySize(model_predator); i++)
	{
		ArrayGetString(model_predator, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	for (i = 0; i < ArraySize(model_angel); i++)
	{
		ArrayGetString(model_angel, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	for (i = 0; i < ArraySize(model_player1); i++)
	{
		ArrayGetString(model_player1, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	for (i = 0; i < ArraySize(model_player2); i++)
	{
		ArrayGetString(model_player2, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	for (i = 0; i < ArraySize(model_player3); i++)
	{
		ArrayGetString(model_player3, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	for (i = 0; i < ArraySize(model_player4); i++)
	{
		ArrayGetString(model_player4, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	for (i = 0; i < ArraySize(model_player5); i++)
	{
		ArrayGetString(model_player5, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	for (i = 0; i < ArraySize(model_player6); i++)
	{
		ArrayGetString(model_player6, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	for (i = 0; i < ArraySize(model_player7); i++)
	{
		ArrayGetString(model_player7, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	for (i = 0; i < ArraySize(model_player8); i++)
	{
		ArrayGetString(model_player8, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	for (i = 0; i < ArraySize(model_player9); i++)
	{
		ArrayGetString(model_player9, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	for (i = 0; i < ArraySize(model_player10); i++)
	{
		ArrayGetString(model_player10, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	for (i = 0; i < ArraySize(model_player11); i++)
	{
		ArrayGetString(model_player11, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	for (i = 0; i < ArraySize(model_player12); i++)
	{
		ArrayGetString(model_player12, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	for (i = 0; i < ArraySize(model_admin_zombie); i++)
	{
		ArrayGetString(model_admin_zombie, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	for (i = 0; i < ArraySize(model_admin_human); i++)
	{
		ArrayGetString(model_admin_human, i, buffer, charsmax(buffer))
		format(buffer, charsmax(buffer), "models/player/%s/%s.mdl", buffer, buffer)
		engfunc(EngFunc_PrecacheModel, buffer)
		if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, buffer)
		if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, buffer)
		// Precache modelT.mdl files too
		copy(buffer[strlen(buffer)-4], charsmax(buffer) - (strlen(buffer)-4), "T.mdl")
		if (file_exists(buffer)) engfunc(EngFunc_PrecacheModel, buffer)
	}
	
	// Custom weapon models, precache p_.mdl too
	engfunc(EngFunc_PrecacheModel, model_vknife_human)
	engfunc(EngFunc_PrecacheModel, model_vknife_nemesis)
	engfunc(EngFunc_PrecacheModel, model_vknife_alien)
	engfunc(EngFunc_PrecacheModel, model_vknife_assassin)
	engfunc(EngFunc_PrecacheModel, model_vknife_demon)
	engfunc(EngFunc_PrecacheModel, model_vm249_survivor)
	engfunc(EngFunc_PrecacheModel, model_vdeagle_wesker)
	engfunc(EngFunc_PrecacheModel, model_vawp_sniper)
	engfunc(EngFunc_PrecacheModel, model_vawp_freezer)
	copy(model_pawp_freezer, charsmax(model_pawp_freezer), model_vawp_freezer)
	replace_all(model_pawp_freezer, charsmax(model_pawp_freezer), "v_", "p_")
	if (file_exists(model_pawp_freezer)) engfunc(EngFunc_PrecacheModel, model_pawp_freezer)
	else model_pawp_freezer = "models/p_awp.mdl"
	engfunc(EngFunc_PrecacheModel, model_vawp_burner)
	copy(model_pawp_burner, charsmax(model_pawp_burner), model_vawp_burner)
	replace_all(model_pawp_burner, charsmax(model_pawp_burner), "v_", "p_")
	if (file_exists(model_pawp_burner)) engfunc(EngFunc_PrecacheModel, model_pawp_burner)
	else model_pawp_burner = "models/p_awp.mdl"
	engfunc(EngFunc_PrecacheModel, model_vawp_thunderer)
	copy(model_pawp_thunderer, charsmax(model_pawp_thunderer), model_vawp_thunderer)
	replace_all(model_pawp_thunderer, charsmax(model_pawp_thunderer), "v_", "p_")
	if (file_exists(model_pawp_thunderer)) engfunc(EngFunc_PrecacheModel, model_pawp_thunderer)
	else model_pawp_thunderer = "models/p_awp.mdl"
	engfunc(EngFunc_PrecacheModel, model_grenade_infect)
	engfunc(EngFunc_PrecacheModel, model_grenade_fire)
	engfunc(EngFunc_PrecacheModel, model_grenade_fire2)
	engfunc(EngFunc_PrecacheModel, model_grenade_frost)
	engfunc(EngFunc_PrecacheModel, model_grenade_frost2)
	engfunc(EngFunc_PrecacheModel, model_grenade_gas)
	engfunc(EngFunc_PrecacheModel, model_grenade_aurashield)
	engfunc(EngFunc_PrecacheModel, model_pgrenade_infect)
	engfunc(EngFunc_PrecacheModel, model_pgrenade_fire)
	engfunc(EngFunc_PrecacheModel, model_pgrenade_frost)
	engfunc(EngFunc_PrecacheModel, model_pgrenade_gas)
	engfunc(EngFunc_PrecacheModel, model_pgrenade_aurashield)
	engfunc(EngFunc_PrecacheModel, model_wgrenade_infect)
	engfunc(EngFunc_PrecacheModel, model_wgrenade_fire)
	engfunc(EngFunc_PrecacheModel, model_wgrenade_frost)
	engfunc(EngFunc_PrecacheModel, model_wgrenade_aurashield)
	engfunc(EngFunc_PrecacheModel, model_wgrenade_gas)
	engfunc(EngFunc_PrecacheModel, model_vknife_admin_human)
	engfunc(EngFunc_PrecacheModel, model_vknife_admin_zombie)
	
	// Weapons
	engfunc(EngFunc_PrecacheModel, v_model_galil_lg),
         engfunc(EngFunc_PrecacheModel, v_model_m4a1_lg),
	engfunc(EngFunc_PrecacheModel, v_model_ak47_lg),
         engfunc(EngFunc_PrecacheModel, v_model_m3_lg),
	engfunc(EngFunc_PrecacheModel, v_model_xm1014_lg),
         engfunc(EngFunc_PrecacheModel, v_model_mp5_lg),
	engfunc(EngFunc_PrecacheModel, v_model_glock18_lg),
         engfunc(EngFunc_PrecacheModel, v_model_usp_lg),
	engfunc(EngFunc_PrecacheModel, v_model_deagle_lg),
         engfunc(EngFunc_PrecacheModel, v_model_elite_lg),
	engfunc(EngFunc_PrecacheModel, v_model_galil_lg_2),
         engfunc(EngFunc_PrecacheModel, v_model_m4a1_lg_2),
	engfunc(EngFunc_PrecacheModel, v_model_ak47_lg_2),
         engfunc(EngFunc_PrecacheModel, v_model_m3_lg_2),
	engfunc(EngFunc_PrecacheModel, v_model_xm1014_lg_2),
         engfunc(EngFunc_PrecacheModel, v_model_mp5_lg_2),
	engfunc(EngFunc_PrecacheModel, v_model_usp_lg_2),
	engfunc(EngFunc_PrecacheModel, v_model_deagle_lg_2),
	engfunc(EngFunc_PrecacheModel, v_model_galil_lg_3),
         engfunc(EngFunc_PrecacheModel, v_model_m4a1_lg_3),
	engfunc(EngFunc_PrecacheModel, v_model_ak47_lg_3),
         engfunc(EngFunc_PrecacheModel, v_model_m3_lg_3),
	engfunc(EngFunc_PrecacheModel, v_model_xm1014_lg_3),
         engfunc(EngFunc_PrecacheModel, v_model_mp5_lg_3),
	engfunc(EngFunc_PrecacheModel, v_model_m249_lg_3),
	engfunc(EngFunc_PrecacheModel, v_model_glock18_lg_3),
         engfunc(EngFunc_PrecacheModel, v_model_usp_lg_3),
	engfunc(EngFunc_PrecacheModel, v_model_deagle_lg_3),
         engfunc(EngFunc_PrecacheModel, v_model_elite_lg_3)
	
	// Knifes
	engfunc(EngFunc_PrecacheModel, v_model_knife),
         engfunc(EngFunc_PrecacheModel, p_model_knife),
	engfunc(EngFunc_PrecacheModel, v_model_knife1),
         engfunc(EngFunc_PrecacheModel, p_model_knife1),
	engfunc(EngFunc_PrecacheModel, v_model_knife2),
         engfunc(EngFunc_PrecacheModel, p_model_knife2),
	engfunc(EngFunc_PrecacheModel, v_model_knife3),
         engfunc(EngFunc_PrecacheModel, p_model_knife3),
	engfunc(EngFunc_PrecacheModel, v_model_knife4),
         engfunc(EngFunc_PrecacheModel, p_model_knife4),
	engfunc(EngFunc_PrecacheModel, v_model_knife5),
         engfunc(EngFunc_PrecacheModel, p_model_knife5),
	engfunc(EngFunc_PrecacheModel, v_model_knife6),
         engfunc(EngFunc_PrecacheModel, p_model_knife6),
	engfunc(EngFunc_PrecacheModel, v_model_knife7),
         engfunc(EngFunc_PrecacheModel, p_model_knife7),
	engfunc(EngFunc_PrecacheModel, v_model_knife8),
         engfunc(EngFunc_PrecacheModel, p_model_knife8),
	engfunc(EngFunc_PrecacheModel, v_model_knife9),
         engfunc(EngFunc_PrecacheModel, p_model_knife9),
	engfunc(EngFunc_PrecacheModel, v_model_knife10),
         engfunc(EngFunc_PrecacheModel, p_model_knife10),
	engfunc(EngFunc_PrecacheModel, v_model_knife11),
         engfunc(EngFunc_PrecacheModel, p_model_knife11),
	engfunc(EngFunc_PrecacheModel, v_model_knife_angel),
         engfunc(EngFunc_PrecacheModel, p_model_knife_angel)
	 
	// Hats 
	engfunc(EngFunc_PrecacheModel, hat_1),
	engfunc(EngFunc_PrecacheModel, hat_2),
	engfunc(EngFunc_PrecacheModel, hat_3),
	engfunc(EngFunc_PrecacheModel, hat_4),
	engfunc(EngFunc_PrecacheModel, hat_5),
	engfunc(EngFunc_PrecacheModel, hat_6),
	engfunc(EngFunc_PrecacheModel, hat_7),
	engfunc(EngFunc_PrecacheModel, hat_8),
	engfunc(EngFunc_PrecacheModel, hat_9),
	engfunc(EngFunc_PrecacheModel, hat_10),
	engfunc(EngFunc_PrecacheModel, hat_11),
	engfunc(EngFunc_PrecacheModel, hat_12),
	engfunc(EngFunc_PrecacheModel, hat_13),
	engfunc(EngFunc_PrecacheModel, hat_14),
	engfunc(EngFunc_PrecacheModel, hat_15),
	engfunc(EngFunc_PrecacheModel, hat_16),
	engfunc(EngFunc_PrecacheModel, hat_17),
	engfunc(EngFunc_PrecacheModel, hat_18),
	engfunc(EngFunc_PrecacheModel, hat_19),
	engfunc(EngFunc_PrecacheModel, hat_20),
	engfunc(EngFunc_PrecacheModel, hat_21),
	engfunc(EngFunc_PrecacheModel, hat_22),
	engfunc(EngFunc_PrecacheModel, hat_23),
	engfunc(EngFunc_PrecacheModel, hat_24),
	engfunc(EngFunc_PrecacheModel, hat_25),
	engfunc(EngFunc_PrecacheModel, hat_26),
	engfunc(EngFunc_PrecacheModel, hat_27)
	
	// Custom sprites for grenades
	g_trailSpr = engfunc(EngFunc_PrecacheModel, sprite_grenade_trail)
	g_exploSpr = engfunc(EngFunc_PrecacheModel, sprite_grenade_ring)
	g_flameSpr = engfunc(EngFunc_PrecacheModel, sprite_grenade_fire)
	g_smokeSpr = engfunc(EngFunc_PrecacheModel, sprite_grenade_smoke)
	g_glassSpr = engfunc(EngFunc_PrecacheModel, sprite_grenade_glass)
	
  //engfunc( EngFunc_PrecacheSound, HE_SOUND_EXPLODE ) 
	
	// Other models/sprites
	engfunc(EngFunc_PrecacheModel, model_aura_forzecamp)
	engfunc(EngFunc_PrecacheModel, model_chest)
	g_thunderSpr = engfunc(EngFunc_PrecacheModel, sprite_awp_thunder)
	
	// Custom sounds
	for (i = 0; i < ArraySize(sound_win_zombies); i++)
	{
		ArrayGetString(sound_win_zombies, i, buffer, charsmax(buffer))
		if (ArrayGetCell(sound_win_zombies_ismp3, i))
		{
			format(buffer, charsmax(buffer), "sound/%s", buffer)
			engfunc(EngFunc_PrecacheGeneric, buffer)
		}
		else
		{
			engfunc(EngFunc_PrecacheSound, buffer)
		}
	}
	for (i = 0; i < ArraySize(sound_win_humans); i++)
	{
		ArrayGetString(sound_win_humans, i, buffer, charsmax(buffer))
		if (ArrayGetCell(sound_win_humans_ismp3, i))
		{
			format(buffer, charsmax(buffer), "sound/%s", buffer)
			engfunc(EngFunc_PrecacheGeneric, buffer)
		}
		else
		{
			engfunc(EngFunc_PrecacheSound, buffer)
		}
	}
	for (i = 0; i < ArraySize(sound_win_no_one); i++)
	{
		ArrayGetString(sound_win_no_one, i, buffer, charsmax(buffer))
		if (ArrayGetCell(sound_win_no_one_ismp3, i))
		{
			format(buffer, charsmax(buffer), "sound/%s", buffer)
			engfunc(EngFunc_PrecacheGeneric, buffer)
		}
		else
		{
			engfunc(EngFunc_PrecacheSound, buffer)
		}
	}
	for (i = 0; i < ArraySize(zombie_infect); i++)
	{
		ArrayGetString(zombie_infect, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(zombie_pain); i++)
	{
		ArrayGetString(zombie_pain, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(nemali_pain); i++)
	{
		ArrayGetString(nemali_pain, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(zombie_die); i++)
	{
		ArrayGetString(zombie_die, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(zombie_fall); i++)
	{
		ArrayGetString(zombie_fall, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(zombie_miss_slash); i++)
	{
		ArrayGetString(zombie_miss_slash, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(zombie_miss_wall); i++)
	{
		ArrayGetString(zombie_miss_wall, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(zombie_hit_normal); i++)
	{
		ArrayGetString(zombie_hit_normal, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(zombie_hit_stab); i++)
	{
		ArrayGetString(zombie_hit_stab, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(zombie_idle); i++)
	{
		ArrayGetString(zombie_idle, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(zombie_madness); i++)
	{
		ArrayGetString(zombie_madness, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(sound_nemali); i++)
	{
		ArrayGetString(sound_nemali, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(sound_survwesk); i++)
	{
		ArrayGetString(sound_survwesk, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(sound_mulswa); i++)
	{
		ArrayGetString(sound_mulswa, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(sound_plasyn); i++)
	{
		ArrayGetString(sound_plasyn, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(sound_armcry); i++)
	{
		ArrayGetString(sound_armcry, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(grenade_infect); i++)
	{
		ArrayGetString(grenade_infect, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(grenade_infect_player); i++)
	{
		ArrayGetString(grenade_infect_player, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(grenade_fire); i++)
	{
		ArrayGetString(grenade_fire, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(grenade_fire_player); i++)
	{
		ArrayGetString(grenade_fire_player, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(grenade_frost); i++)
	{
		ArrayGetString(grenade_frost, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(grenade_frost_player); i++)
	{
		ArrayGetString(grenade_frost_player, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(grenade_frost_break); i++)
	{
		ArrayGetString(grenade_frost_break, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(grenade_explosion); i++)
	{
		ArrayGetString(grenade_explosion, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(grenade_aurashield); i++)
	{
		ArrayGetString(grenade_aurashield, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(sound_antidote); i++)
	{
		ArrayGetString(sound_antidote, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(sound_thunder); i++)
	{
		ArrayGetString(sound_thunder, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(sound_thunder_awp); i++)
	{
		ArrayGetString(sound_thunder_awp, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(sound_quest); i++)
	{
		ArrayGetString(sound_quest, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(sound_level_up); i++)
	{
		ArrayGetString(sound_level_up, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(sound_level_down); i++)
	{
		ArrayGetString(sound_level_down, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	for (i = 0; i < ArraySize(sound_countdown); i++)
	{
		ArrayGetString(sound_countdown, i, buffer, charsmax(buffer))
		engfunc(EngFunc_PrecacheSound, buffer)
	}
	
	// CS sounds (just in case)
	engfunc(EngFunc_PrecacheSound, sound_flashlight)
	engfunc(EngFunc_PrecacheSound, sound_buyammo)
	engfunc(EngFunc_PrecacheSound, sound_armorhit)
	
	// Nade Effects
         g_explosfr = precache_model("sprites/blueflare1.spr")
         g_explofre = precache_model("sprites/zerogxplode.spr") 
	 
	precache_model(ent_model2) 
    
	new ent
	
	// Fake Hostage (to force round ending)
	ent = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "hostage_entity"))
	if (pev_valid(ent))
	{
		engfunc(EngFunc_SetOrigin, ent, Float:{8192.0,8192.0,8192.0})
		dllfunc(DLLFunc_Spawn, ent)
	}
	
	// Weather/ambience effects
	if (g_ambience_fog)
	{
		ent = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "env_fog"))
		if (pev_valid(ent))
		{
			DispatchKeyValue(ent, "density", g_fog_density)
			DispatchKeyValue(ent, "rendercolor", g_fog_color)
		}
	}
	if (g_ambience_rain) engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "env_rain"))
	if (g_ambience_snow) engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "env_snow"))
	
	// Custom buyzone for all players
	g_buyzone_ent = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "func_buyzone"))
	if (pev_valid(g_buyzone_ent))
	{
		dllfunc(DLLFunc_Spawn, g_buyzone_ent)
		set_pev(g_buyzone_ent, pev_solid, SOLID_NOT)
	}
	
	// Prevent some entities from spawning
	g_fwSpawn = register_forward(FM_Spawn, "fw_Spawn")
	
	// Prevent hostage sounds from being precached
	g_fwPrecacheSound = register_forward(FM_PrecacheSound, "fw_PrecacheSound")
}

public plugin_init()
{
	// Plugin disabled?
	if (!g_pluginenabled) return;
	
	// No human classes?
	if (!g_hclass_i) set_fail_state("No human classes loaded!")
	
	// No zombie classes?
	if (!g_zclass_i) set_fail_state("No zombie classes loaded!")
	



	// Events
	register_event("HLTV", "event_round_start", "a", "1=0", "2=0")
	register_logevent("logevent_round_start",2, "1=Round_Start")
	register_logevent("logevent_round_end", 2, "1=Round_End")
	register_event("ResetHUD", "event_ResetHUD", "b")
	register_event("AmmoX", "event_ammo_x", "be")
	register_event("StatusValue", "showStatus", "be", "1=2", "2!0")
	register_event("StatusValue", "hideStatus", "be", "1=1", "2=0")
	register_touch(iClassName, "player", "Func_Touch") // Registramos el touch
	
	// HAM Forwards
	RegisterHam(Ham_Spawn, "player", "fw_PlayerSpawn_Post", 1)
	RegisterHam(Ham_Killed, "player", "fw_PlayerKilled")
	RegisterHam(Ham_Killed, "player", "fw_PlayerKilled_Post", 1)
	RegisterHam(Ham_TakeDamage, "player", "fw_TakeDamage")
	RegisterHam(Ham_TakeDamage, "player", "fw_TakeDamage_Post", 1)
	RegisterHam(Ham_TraceAttack, "player", "fw_TraceAttack")
	RegisterHam(Ham_TraceAttack, "player", "fw_TraceAttack2")
	RegisterHam(Ham_Player_ResetMaxSpeed, "player", "fw_ResetMaxSpeed_Post", 1)
	RegisterHam(Ham_Use, "func_tank", "fw_UseStationary")
	RegisterHam(Ham_Use, "func_tankmortar", "fw_UseStationary")
	RegisterHam(Ham_Use, "func_tankrocket", "fw_UseStationary")
	RegisterHam(Ham_Use, "func_tanklaser", "fw_UseStationary")
	RegisterHam(Ham_Use, "func_tank", "fw_UseStationary_Post", 1)
	RegisterHam(Ham_Use, "func_tankmortar", "fw_UseStationary_Post", 1)
	RegisterHam(Ham_Use, "func_tankrocket", "fw_UseStationary_Post", 1)
	RegisterHam(Ham_Use, "func_tanklaser", "fw_UseStationary_Post", 1)
	RegisterHam(Ham_Use, "func_pushable", "fw_UsePushable")
	RegisterHam(Ham_AddPlayerItem, "player", "fw_AddPlayerItem")
	RegisterHam(Ham_Think, "grenade", "fw_ThinkGrenade")
	RegisterHam(Ham_Touch, "weaponbox", "fw_TouchWeapon")
	RegisterHam(Ham_Touch, "armoury_entity", "fw_TouchWeapon")
	RegisterHam(Ham_Touch, "weapon_shield", "fw_TouchWeapon")
	RegisterHam(Ham_Weapon_PrimaryAttack, "weapon_knife", "fw_Knife_PrimaryAttack")
	RegisterHam(Ham_Weapon_SecondaryAttack, "weapon_knife", "fw_Knife_SecondaryAttack")
	for (new i = 1; i < sizeof WEAPONENTNAMES; i++)
		if (WEAPONENTNAMES[i][0]) RegisterHam(Ham_Item_Deploy, WEAPONENTNAMES[i], "fw_Item_Deploy_Post", 1)
	
	// FM Forwards
	register_forward(FM_ClientDisconnect, "fw_ClientDisconnect")
	register_forward(FM_ClientDisconnect, "fw_ClientDisconnect_Post", 1)
	register_forward(FM_ClientKill, "fw_ClientKill")
	register_forward(FM_EmitSound, "fw_EmitSound")
	register_forward(FM_ClientUserInfoChanged, "fw_ClientUserInfoChanged")
	register_forward(FM_GetGameDescription, "fw_GetGameDescription")
	register_forward(FM_SetModel, "fw_SetModel")
	register_forward(FM_CmdStart, "fw_CmdStart")
	register_forward(FM_PlayerPreThink, "fw_PlayerPreThink")
	register_forward( FM_AddToFullPack, "fwdAddToFullPack_Post", 1 );
	unregister_forward(FM_Spawn, g_fwSpawn)
	unregister_forward(FM_PrecacheSound, g_fwPrecacheSound)
	
	// Client commands
	register_clcmd("dar_experience", "CmdGiveExp", ADMIN_RCON, "- dar_experience <name> <amount> : Give Experience")
	register_clcmd("dar_pu", "CmdGivePU", ADMIN_RCON, "- dar_pu <name> <amount> : Give Point Upgrade")
	register_clcmd("dar_ammopack", "CmdGiveAP", ADMIN_RCON, "- dar_ammopack <name> <amount> : Give Ammo Packs")
	register_clcmd("say", "clcmd_say")
	register_clcmd("say /zamenu", "clcmd_saymenu")
	register_clcmd("say /unstuck", "clcmd_sayunstuck")
	register_clcmd("say /hclass", "clcmd_sayhclass")
	register_clcmd("say /zclass", "clcmd_sayzclass")
	register_clcmd("say_team /hv", "clcmd_sayhh")
	register_clcmd("say_team /modo", "clcmd_saymod")
	register_clcmd("say_team /reglas", "clcmd_sayreglas")
	register_clcmd("?????", "MenuZonas", ADMIN_RCON) 
	register_clcmd("nightvision", "clcmd_nightvision")
	register_clcmd("drop", "clcmd_drop")
	register_clcmd("buyammo1", "clcmd_buyammo")
	register_clcmd("buyammo2", "clcmd_buyammo")
	register_clcmd("chooseteam", "clcmd_changeteam")
	register_clcmd("jointeam", "clcmd_changeteam")
	register_clcmd("radio1", "clcmd_radio")
	register_clcmd("radio2", "clcmd_radio")
	register_clcmd("radio3", "clcmd_radio")
	register_clcmd("your_id", "logging_id")
	register_clcmd("your_password", "logging_password")
	register_clcmd("register_id", "check_id")
	register_clcmd("register_password", "check_password")
	register_clcmd("register_new_password", "check_password")
	
	// Menus
	register_menu("Game Menu", KEYSMENU, "menu_game")
	register_menu("Category Menu", KEYSMENU, "menu_category")
	register_menu("Weapon Menu", KEYSMENU, "menu_weapon")
	register_menu("Buy Menu 1", KEYSMENU, "menu_buy1")
	register_menu("Buy Menu 2", KEYSMENU, "menu_buy2")
	register_menu("Mod Info", KEYSMENU, "menu_info")
	register_menu("Skill Menu", KEYSMENU, "menu_skill")
	register_menu("Upgrade Menu", KEYSMENU, "menu_upgrade")
	register_menu("Exchange Menu", KEYSMENU, "menu_exchange")
	register_menu("Quest Menu", KEYSMENU, "menu_quest")
	register_menu("Personalize Menu", KEYSMENU, "menu_personalize")
	register_menu("HUD Menu", KEYSMENU, "menu_hud")
	register_menu("HUD1 Menu", KEYSMENU, "menu_hud1")
	register_menu("HUD_CAMBIAR Menu", KEYSMENU, "menu_cambiar_hud")
	register_menu("WEAPON_CAMBIAR Menu", KEYSMENU, "menu_cambiar_weapon")
	register_menu("Color Menu", KEYSMENU, "menu_colors")
	register_menu("Statistics Menu", KEYSMENU, "menu_statistics")
	register_menu("psj Menu", KEYSMENU, "menu_personaje")
	register_menu("Admin1 Menu", KEYSMENU, "menu_admin1")
	register_menu("Singleplayer Menu", KEYSMENU, "menu_singleplayer")
	register_menu("Multiplayer Menu", KEYSMENU, "menu_multiplayer")
	register_menu("Deathmatch Menu", KEYSMENU, "menu_deathmatch")
	register_menu("Xtreme Menu", KEYSMENU, "menu_xtreme")
	register_menu("Class Menu", KEYSMENU, "menu_class")
	register_menu("PJ Menu", KEYSMENU, "menu_pj")
	register_menu("User Menu", KEYSMENU, "menu_user")
	//register_menu("Skins Menu", KEYSMENU, "menu_skins")
	
	register_menucmd(register_menuid("\r[ZE]\y Menu de Modelos"), MenuKeys, "SelectIt")
	
	register_menucmd(register_menuid("\r[ZE]\y Menu de Sombreros\r"), MenuKeys, "SelectIt2")
	
	register_menucmd(register_menuid("\r[ZE]\y Menu de Glows\r"), MenuKeys, "SelectIt3")
	
	register_menucmd(register_menuid("\r[ZE]\y Menu de Cuchillos"), MenuKeys, "SelectIt4")
	
	// CS Buy Menus (to prevent zombies/survivor/wesker from buying)
	register_menucmd(register_menuid("#Buy", 1), 511, "menu_cs_buy")
	register_menucmd(register_menuid("BuyPistol", 1), 511, "menu_cs_buy")
	register_menucmd(register_menuid("BuyShotgun", 1), 511, "menu_cs_buy")
	register_menucmd(register_menuid("BuySub", 1), 511, "menu_cs_buy")
	register_menucmd(register_menuid("BuyRifle", 1), 511, "menu_cs_buy")
	register_menucmd(register_menuid("BuyMachine", 1), 511, "menu_cs_buy")
	register_menucmd(register_menuid("BuyItem", 1), 511, "menu_cs_buy")
	register_menucmd(-28, 511, "menu_cs_buy")
	register_menucmd(-29, 511, "menu_cs_buy")
	register_menucmd(-30, 511, "menu_cs_buy")
	register_menucmd(-32, 511, "menu_cs_buy")
	register_menucmd(-31, 511, "menu_cs_buy")
	register_menucmd(-33, 511, "menu_cs_buy")
	register_menucmd(-34, 511, "menu_cs_buy")
	
	// Message IDs
	g_msgScoreInfo = get_user_msgid("ScoreInfo")
	g_msgTeamInfo = get_user_msgid("TeamInfo")
	g_msgDeathMsg = get_user_msgid("DeathMsg")
	g_msgScoreAttrib = get_user_msgid("ScoreAttrib")
	g_msgSetFOV = get_user_msgid("SetFOV")
	g_msgScreenFade = get_user_msgid("ScreenFade")
	g_msgScreenShake = get_user_msgid("ScreenShake")
	g_msgFlashlight = get_user_msgid("Flashlight")
	g_msgFlashBat = get_user_msgid("FlashBat")
	g_msgAmmoPickup = get_user_msgid("AmmoPickup")
	g_msgDamage = get_user_msgid("Damage")
	g_msgHideWeapon = get_user_msgid("HideWeapon")
	g_msgCrosshair = get_user_msgid("Crosshair")
	g_msgSayText = get_user_msgid("SayText")
	
	// Message hooks
	register_message(get_user_msgid("ShowMenu"), "message_showmenu")
	register_message(get_user_msgid("VGUIMenu"), "message_vguimenu")
	register_message(g_msgHideWeapon, "message_hide_weapon")
	register_message(get_user_msgid("CurWeapon"), "message_cur_weapon")
	register_message(get_user_msgid("Health"), "message_health")
	register_message(get_user_msgid("Money"), "message_money")
	register_message(g_msgFlashBat, "message_flashbat")
	register_message(g_msgScreenFade, "message_screenfade")
	register_message(get_user_msgid("NVGToggle"), "message_nvgtoggle")
	register_message(get_user_msgid("WeapPickup"), "message_weappickup")
	register_message(g_msgAmmoPickup, "message_ammopickup")
	register_message(get_user_msgid("Scenario"), "message_scenario")
	register_message(get_user_msgid("TextMsg"), "message_textmsg")
	register_message(get_user_msgid("SendAudio"), "message_sendaudio")
	register_message(get_user_msgid("TeamScore"), "message_teamscore")
	register_message(g_msgTeamInfo, "message_teaminfo")
	set_msg_block(get_user_msgid("ClCorpse"), BLOCK_SET)
	
	cvar_time_acept = register_cvar("party_time_acept","20")
	cvar_max_players = register_cvar("party_max_players","5")
	cvar_allow_bots = register_cvar("party_allow_bots","1")
	
	// CVARS - General Purpose
	cvar_warmup = register_cvar("za_delay", "10")
	cvar_lighting = register_cvar("za_lighting", "a")
	cvar_thunder = register_cvar("za_thunderclap", "90")
	cvar_triggered = register_cvar("za_triggered_lights", "1")
	cvar_removedoors = register_cvar("za_remove_doors", "0")
	cvar_blockpushables = register_cvar("za_blockuse_pushables", "1")
	cvar_blocksuicide = register_cvar("za_block_suicide", "1")
	cvar_randspawn = register_cvar("za_random_spawn", "1")
	cvar_respawnworldspawnkill = register_cvar("za_respawn_on_worldspawn_kill", "1")
	cvar_removedropped = register_cvar("za_remove_dropped", "0")
	cvar_removemoney = register_cvar("za_remove_money", "1")
	cvar_buycustom = register_cvar("za_buy_custom", "1")
	cvar_buyzonetime = register_cvar("za_buyzone_time", "0.0")
	cvar_randweapons = register_cvar("za_random_weapons", "0")
	cvar_adminmodelshuman = register_cvar("za_admin_models_human", "1")
	cvar_adminknifemodelshuman = register_cvar("za_admin_knife_models_human", "0")
	cvar_adminmodelszombie = register_cvar("za_admin_models_zombie", "0")
	cvar_adminknifemodelszombie = register_cvar("za_admin_knife_models_zombie", "0")
	cvar_zclasses = register_cvar("za_zombie_classes", "1")
	cvar_hclasses = register_cvar("za_human_classes", "1")
	cvar_startammopacks = register_cvar("za_starting_ammo_packs", "5")
	cvar_pointsfameup = register_cvar("za_points_fame_up", "10")
	cvar_preventconsecutive = register_cvar("za_prevent_consecutive_modes", "1")
	cvar_keephealthondisconnect = register_cvar("za_keep_health_on_disconnect", "1")
	cvar_huddisplay = register_cvar("za_hud_display", "1")
	cvar_hudstats = register_cvar("za_hud_stats", "1")
	cvar_hudmarker = register_cvar("za_hud_marker", "1")
	
	// CVARS - Deathmatch
	cvar_deathmatch = register_cvar("za_deathmatch", "0")
	cvar_spawndelay = register_cvar("za_spawn_delay", "5")
	cvar_spawnprotection = register_cvar("za_spawn_protection", "5")
	cvar_respawnonsuicide = register_cvar("za_respawn_on_suicide", "0")
	cvar_respawnafterlast = register_cvar("za_respawn_after_last_human", "1")
	cvar_allowrespawninfection = register_cvar("za_infection_allow_respawn", "1")
	cvar_allowrespawnnemali = register_cvar("za_nem_ali_allow_respawn", "0")
	cvar_allowrespawnsurvwesk = register_cvar("za_surv_wesk_allow_respawn", "0")
	cvar_allowrespawnswarm = register_cvar("za_swarm_allow_respawn", "0")
	cvar_allowrespawnplasyn = register_cvar("za_pla_syn_allow_respawn", "0")
	cvar_allowrespawnarmcry = register_cvar("za_arm_cry_allow_respawn", "0")
	cvar_respawnzomb = register_cvar("za_respawn_zombies", "1")
	cvar_respawnhum = register_cvar("za_respawn_humans", "1")
	cvar_respawnnemali = register_cvar("za_respawn_nem_ali", "1")
	cvar_respawnsurvwesk = register_cvar("za_respawn_surv_wesk", "1")
	
	// CVARS - Extra Items
	cvar_extraitems = register_cvar("za_extra_items", "1")
	cvar_extraweapons = register_cvar("za_extra_weapons", "1")
	cvar_extranvision = register_cvar("za_extra_nvision", "1")
	cvar_extraantidote = register_cvar("za_extra_antidote", "1")
	cvar_antidotelimit = register_cvar("za_extra_antidote_limit", "999")
	cvar_extramadness = register_cvar("za_extra_madness", "1")
	cvar_madnesslimit = register_cvar("za_extra_madness_limit", "999")
	cvar_madnessduration = register_cvar("za_extra_madness_duration", "5.0")
	cvar_extrainfbomb = register_cvar("za_extra_infbomb", "1")
	cvar_infbomblimit = register_cvar("za_extra_infbomb_limit", "999")
	cvar_extra_anti_ice = register_cvar("za_extra_anti_ice", "1")
	cvar_anti_ice_limit = register_cvar("za_extra_anti_ice_limit", "999")
	cvar_extra_anti_fire = register_cvar("za_extra_anti_fire", "1")
	cvar_anti_fire_limit = register_cvar("za_extra_anti_fire_limit", "999")
	
	// CVARS - Flashlight and Nightvision
	cvar_nvggive = register_cvar("za_nvg_give", "1")
	cvar_nvgsize = register_cvar("za_nvg_size", "80")
	cvar_flashsize = register_cvar("za_flash_size", "10")
	cvar_flashdrain = register_cvar("za_flash_drain", "1")
	cvar_flashcharge = register_cvar("za_flash_charge", "5")
	cvar_flashdist = register_cvar("za_flash_distance", "1000")
	cvar_flashshowall = register_cvar("za_flash_show_all", "1")
	
	// CVARS - Knockback
	cvar_knockback = register_cvar("za_knockback", "1")
	cvar_knockbackdamage = register_cvar("za_knockback_damage", "1")
	cvar_knockbackpower = register_cvar("za_knockback_power", "1")
	cvar_knockbackzvel = register_cvar("za_knockback_zvel", "0")
	cvar_knockbackducking = register_cvar("za_knockback_ducking", "0.25")
	cvar_knockbackdist = register_cvar("za_knockback_distance", "500")
	cvar_nemknockback = register_cvar("za_knockback_nemesis", "0.25")
	cvar_aliknockback = register_cvar("za_knockback_alien", "0.25")
	cvar_assknockback = register_cvar("za_knockback_assassin", "0.25")
	cvar_demknockback = register_cvar("za_knockback_demon", "0.25")
	
	// CVARS - Leap
	cvar_leapzombies = register_cvar("za_leap_zombies", "1")
	cvar_leapzombiesforce = register_cvar("za_leap_zombies_force", "300")
	cvar_leapzombiesheight = register_cvar("za_leap_zombies_height", "100")
	cvar_leapzombiescooldown = register_cvar("za_leap_zombies_cooldown", "10.0")
	cvar_leapnemesis = register_cvar("za_leap_nemesis", "1")
	cvar_leapnemesisforce = register_cvar("za_leap_nemesis_force", "500")
	cvar_leapnemesisheight = register_cvar("za_leap_nemesis_height", "300")
	cvar_leapnemesiscooldown = register_cvar("za_leap_nemesis_cooldown", "5.0")
	cvar_leapalien = register_cvar("za_leap_alien", "1")
	cvar_leapalienforce = register_cvar("za_leap_alien_force", "600")
	cvar_leapalienheight = register_cvar("za_leap_alien_height", "400")
	cvar_leapaliencooldown = register_cvar("za_leap_alien_cooldown", "3.5")
	
	// CVARS - Humans
	cvar_humanlasthp = register_cvar("za_human_last_extrahp", "100")
	cvar_humanarmor = register_cvar("za_human_armor_protect", "1")
	cvar_infammo = register_cvar("za_human_unlimited_ammo", "1")
	cvar_ammodamage = register_cvar("za_human_damage_reward", "500")
	cvar_xpkilledz = register_cvar("za_human_kill_zombie_xp", "100")
	cvar_xpkilledn = register_cvar("za_human_kill_nemesis_xp", "200")
	cvar_xpkilleda = register_cvar("za_human_kill_alien_xp", "200")
	cvar_xpkilledas = register_cvar("za_human_kill_assassin_xp", "200")
	cvar_xpkilledd = register_cvar("za_human_kill_demon_xp", "200")
	
	// CVARS - Escape
	cvar_xp_for_escape = register_cvar("za_escape_xp", "20")
	cvar_pu_for_escape = register_cvar("za_escape_pu", "2")
	cvar_ap_for_escape = register_cvar("za_escape_ap", "4")
	
	// CVARS - Custom Grenades
	cvar_firegrenades = register_cvar("za_fire_grenades", "1")
	cvar_fireduration = register_cvar("za_fire_duration", "10")
	cvar_firedamage = register_cvar("za_fire_damage", "5")
	cvar_fireslowdown = register_cvar("za_fire_slowdown", "0.5")
	cvar_frostgrenades = register_cvar("za_frost_grenades", "1")
	cvar_freezeduration = register_cvar("za_frost_duration", "10")
	cvar_freezedurationass = register_cvar("za_frost_duration_assassin", "10")
	cvar_frozennem = register_cvar("za_frost_nemesis", "1")
	cvar_frozenali = register_cvar("za_frost_alien", "1")
	cvar_frozenass = register_cvar("za_frost_assassin", "1")
	cvar_frozendamage = register_cvar("za_frozen_damage", "1")
	
	// CVARS - Special Awps
	cvar_thunderdamageawp = register_cvar("za_thunder_damage_awp", "200")
	cvar_awpnemali = register_cvar("za_special_awps_nem_ali", "1")
	
	// CVARS - Zombies
	cvar_zombiefirsthp = register_cvar("za_zombie_first_hp", "2.0")
	cvar_hitzones = register_cvar("za_zombie_hitzones", "0")
	cvar_zombiebonushp = register_cvar("za_zombie_infect_health", "100")
	cvar_zombiefov = register_cvar("za_zombie_fov", "110")
	cvar_zombiesilent = register_cvar("za_zombie_silent", "1")
	cvar_zombiepainfree = register_cvar("za_zombie_painfree", "2")
	cvar_zombiebleeding = register_cvar("za_zombie_bleeding", "1")
	cvar_zombieparticles = register_cvar("za_zombie_particles", "1")
	cvar_xpinfect = register_cvar("za_zombie_infect_xp", "100")
	cvar_ammoinfect = register_cvar("za_zombie_infect_ap", "25")
	cvar_xpkilledh = register_cvar("za_zombie_kill_human_xp", "100")
	cvar_xpkilleds = register_cvar("za_zombie_kill_survivor_xp", "200")
	cvar_xpkilledw = register_cvar("za_zombie_kill_wesker_xp", "200")
	cvar_xpkilledsn = register_cvar("za_zombie_kill_sniper_xp", "200")
	cvar_xpkilledp = register_cvar("za_zombie_kill_predator_xp", "200")
	cvar_xpkilledan = register_cvar("za_zombie_kill_angel_xp", "200")
	
	// CVARS - Special Effects
	cvar_infectionscreenfade = register_cvar("za_infection_screenfade", "1")
	cvar_infectionscreenshake = register_cvar("za_infection_screenshake", "1")
	cvar_infectionsparkle = register_cvar("za_infection_sparkle", "1")
	cvar_infectiontracers = register_cvar("za_infection_tracers", "1")
	cvar_infectionparticles = register_cvar("za_infection_particles", "1")
	cvar_hudicons = register_cvar("za_hud_icons", "1")
	cvar_snipfraggore = register_cvar("za_snip_frag_gore", "1")
	
	// CVARS - Happy Hour
	cvar_happyhour = register_cvar("za_horavicio", "1")
	cvar_hhstart = register_cvar("za_horavicio_start", "22")
	cvar_hhend = register_cvar("za_horavicio_end", "23")
	cvar_hhdropxp = register_cvar("za_horavicio_drop_xp", "2.0")
	
	// CVARS - Nemesis
	cvar_nem = register_cvar("za_nem_enabled", "1")
	cvar_nemchance = register_cvar("za_nem_chance", "15")
	cvar_nemminplayers = register_cvar("za_nem_min_players", "10")
	cvar_nemhp = register_cvar("za_nem_health", "30000")
	cvar_nembasehp = register_cvar("za_nem_base_health", "0")
	cvar_nemspd = register_cvar("za_nem_speed", "300")
	cvar_nemgravity = register_cvar("za_nem_gravity", "0.5")
	cvar_nemdamage = register_cvar("za_nem_damage", "250")
	cvar_nemglow = register_cvar("za_nem_glow", "1")
	cvar_nemaura = register_cvar("za_nem_aura", "1") 
	cvar_nem_aura_colors[0] = register_cvar("za_nem_aura_red", "255")
	cvar_nem_aura_colors[1] = register_cvar("za_nem_aura_green", "0")
	cvar_nem_aura_colors[2] = register_cvar("za_nem_aura_blue", "0")
	cvar_nempainfree = register_cvar("za_nem_painfree", "0")
	
	// CVARS - Alien
	cvar_ali = register_cvar("za_ali_enabled", "1")
	cvar_alichance = register_cvar("za_ali_chance", "15")
	cvar_aliminplayers = register_cvar("za_ali_min_players", "10")
	cvar_alihp = register_cvar("za_ali_health", "25000")
	cvar_alibasehp = register_cvar("za_ali_base_health", "0")
	cvar_alispd = register_cvar("za_ali_speed", "400")
	cvar_aligravity = register_cvar("za_ali_gravity", "0.25")
	cvar_alidamage = register_cvar("za_ali_damage", "250")
	cvar_aliglow = register_cvar("za_ali_glow", "1")
	cvar_aliaura = register_cvar("za_ali_aura", "1") 
	cvar_ali_aura_colors[0] = register_cvar("za_ali_aura_red", "25")
	cvar_ali_aura_colors[1] = register_cvar("za_ali_aura_green", "25")
	cvar_ali_aura_colors[2] = register_cvar("za_ali_aura_blue", "100")
	cvar_alipainfree = register_cvar("za_ali_painfree", "0")
	
	// CVARS - Assassin
	cvar_ass = register_cvar("za_ass_enabled", "1")
	cvar_asschance = register_cvar("za_ass_chance", "15")
	cvar_assminplayers = register_cvar("za_ass_min_players", "10")
	cvar_asshp = register_cvar("za_ass_health", "10000")
	cvar_assbasehp = register_cvar("za_ass_base_health", "0")
	cvar_assspd = register_cvar("za_ass_speed", "800")
	cvar_assgravity = register_cvar("za_ass_gravity", "0.4")
	cvar_assdamage = register_cvar("za_ass_damage", "250")
	cvar_assglow = register_cvar("za_ass_glow", "1")
	cvar_asspainfree = register_cvar("za_ass_painfree", "0")
	
	// CVARS - Demon
	cvar_dem = register_cvar("za_dem_enabled", "1")
	cvar_demchance = register_cvar("za_dem_chance", "15")
	cvar_demminplayers = register_cvar("za_dem_min_players", "10")
	cvar_demhp = register_cvar("za_dem_health", "10000")
	cvar_dembasehp = register_cvar("za_dem_base_health", "0")
	cvar_demspd = register_cvar("za_dem_speed", "800")
	cvar_demgravity = register_cvar("za_dem_gravity", "0.4")
	cvar_demdamage = register_cvar("za_dem_damage", "250")
	cvar_demglow = register_cvar("za_dem_glow", "1")
	cvar_dempainfree = register_cvar("za_dem_painfree", "0")
	
	// CVARS - Survivor
	cvar_surv = register_cvar("za_surv_enabled", "1")
	cvar_survchance = register_cvar("za_surv_chance", "15")
	cvar_survminplayers = register_cvar("za_surv_min_players", "10")
	cvar_survhp = register_cvar("za_surv_health", "8000")
	cvar_survbasehp = register_cvar("za_surv_base_health", "0")
	cvar_survspd = register_cvar("za_surv_speed", "240")
	cvar_survgravity = register_cvar("za_surv_gravity", "1.25")
	cvar_survglow = register_cvar("za_surv_glow", "1")
	cvar_survaura = register_cvar("za_surv_aura", "1")
	cvar_survpainfree = register_cvar("za_surv_painfree", "1")
	cvar_survignoreammo = register_cvar("za_surv_ignore_ammo", "0")
	cvar_survinfammo = register_cvar("za_surv_unlimited_ammo", "2")
	
	// CVARS - Wesker
	cvar_wesk = register_cvar("za_wesk_enabled", "1")
	cvar_weskchance = register_cvar("za_wesk_chance", "15")
	cvar_weskminplayers = register_cvar("za_wesk_min_players", "10")
	cvar_weskhp = register_cvar("za_wesk_health", "6000")
	cvar_weskbasehp = register_cvar("za_wesk_base_health", "0")
	cvar_weskspd = register_cvar("za_wesk_speed", "320")
	cvar_weskgravity = register_cvar("za_wesk_gravity", "0.5")
	cvar_weskglow = register_cvar("za_wesk_glow", "1")
	cvar_weskaura = register_cvar("za_wesk_aura", "1")
	cvar_weskpainfree = register_cvar("za_wesk_painfree", "1")
	cvar_weskignoreammo = register_cvar("za_wesk_ignore_ammo", "0")
	cvar_weskinfammo = register_cvar("za_wesk_unlimited_ammo", "2")
	
	// CVARS - Sniper
	cvar_snip = register_cvar("za_snip_enabled", "1")
	cvar_snipchance = register_cvar("za_snip_chance", "15")
	cvar_snipminplayers = register_cvar("za_snip_min_players", "10")
	cvar_sniphp = register_cvar("za_snip_health", "8000")
	cvar_snipbasehp = register_cvar("za_snip_base_health", "0")
	cvar_snipspd = register_cvar("za_snip_speed", "240")
	cvar_snipgravity = register_cvar("za_snip_gravity", "1.25")
	cvar_snipglow = register_cvar("za_snip_glow", "1")
	cvar_snipaura = register_cvar("za_snip_aura", "1")
	cvar_snippainfree = register_cvar("za_snip_painfree", "1")
	cvar_snipignoreammo = register_cvar("za_snip_ignore_ammo", "0")
	cvar_snipdamage = register_cvar("za_snip_damage", "2000")
	cvar_snipinfammo = register_cvar("za_snip_unlimited_ammo", "2")
	
	// CVARS - Predator
	cvar_pred = register_cvar("za_pred_enabled", "1")
	cvar_predchance = register_cvar("za_pred_chance", "15")
	cvar_predminplayers = register_cvar("za_pred_min_players", "10")
	cvar_predhp = register_cvar("za_pred_health", "8000")
	cvar_predbasehp = register_cvar("za_pred_base_health", "0")
	cvar_predspd = register_cvar("za_pred_speed", "240")
	cvar_predgravity = register_cvar("za_pred_gravity", "1.25")
	cvar_predglow = register_cvar("za_pred_glow", "1")
	cvar_predaura = register_cvar("za_pred_aura", "1")
	cvar_predpainfree = register_cvar("za_pred_painfree", "1")
	cvar_predignoreammo = register_cvar("za_pred_ignore_ammo", "0")
	cvar_predinfammo = register_cvar("za_pred_unlimited_ammo", "2")
	
	// CVARS - Angel
	cvar_ang = register_cvar("za_ang_enabled", "1")
	cvar_angchance = register_cvar("za_ang_chance", "15")
	cvar_angminplayers = register_cvar("za_ang_min_players", "10")
	cvar_anghp = register_cvar("za_ang_health", "8000")
	cvar_angbasehp = register_cvar("za_ang_base_health", "0")
	cvar_angspd = register_cvar("za_ang_speed", "240")
	cvar_anggravity = register_cvar("za_ang_gravity", "1.25")
	cvar_angglow = register_cvar("za_ang_glow", "1")
	cvar_angaura = register_cvar("za_ang_aura", "1")
	cvar_angpainfree = register_cvar("za_ang_painfree", "1")
	cvar_angignoreammo = register_cvar("za_ang_ignore_ammo", "0")
	cvar_angdamage = register_cvar("za_ang_damage", "2000")
	
	// CVARS - Swarm Mode
	cvar_swarm = register_cvar("za_swarm_enabled", "1")
	cvar_swarmchance = register_cvar("za_swarm_chance", "10")
	cvar_swarmminplayers = register_cvar("za_swarm_min_players", "0")
	
	// CVARS - Multi Infection
	cvar_multi = register_cvar("za_multi_enabled", "1")
	cvar_multichance = register_cvar("za_multi_chance", "10")
	cvar_multiminplayers = register_cvar("za_multi_min_players", "0")
	cvar_multiratio = register_cvar("za_multi_ratio", "0.15")
	
	// CVARS - Plague Mode
	cvar_plague = register_cvar("za_plague_enabled", "1")
	cvar_plaguechance = register_cvar("za_plague_chance", "15")
	cvar_plagueminplayers = register_cvar("za_plague_min_players", "10")
	cvar_plagueratio = register_cvar("za_plague_ratio", "0.5")
	cvar_plaguenemnum = register_cvar("za_plague_nem_number", "1")
	cvar_plaguenemhp = register_cvar("za_plague_nem_hp", "24000")
	cvar_plaguesurvnum = register_cvar("za_plague_surv_number", "1")
	cvar_plaguesurvhp = register_cvar("za_plague_surv_hp", "6500")
	
	// CVARS - Cooperative Mode
	cvar_cooperative = register_cvar("za_cooperative_enabled", "1")
	cvar_cooperativechance = register_cvar("za_cooperative_chance", "1")
	cvar_cooperativeminplayers = register_cvar("za_cooperative_min_players", "10")
	cvar_cooperativeratio = register_cvar("za_cooperative_ratio", "0.5")
	cvar_cooperativesurvnum = register_cvar("za_cooperative_surv_number", "1")
	cvar_cooperativesurvhp = register_cvar("za_cooperative_surv_hp", "7500")
	cvar_cooperativewesknum = register_cvar("za_cooperative_wesk_number", "1")
	cvar_cooperativeweskhp = register_cvar("za_cooperative_wesk_hp", "7500")
	cvar_cooperativesnipnum = register_cvar("za_cooperative_snip_number", "1")
	cvar_cooperativesniphp = register_cvar("za_cooperative_snip_hp", "7500")
	
	// CVARS - Nemesis Extremo Mode
	cvar_nextremo = register_cvar("za_nextremo_enabled", "1")
	cvar_nextremochance = register_cvar("za_nextremo_chance", "15")
	cvar_nextremominplayers = register_cvar("za_nextremo_min_players", "10")
	cvar_nextremoratio = register_cvar("za_nextremo_ratio", "0.5")
	cvar_nextremonemnum = register_cvar("za_nextremo_nem_number", "1")
	cvar_nextremonemhp = register_cvar("za_nextremo_nem_hp", "10000")
	
	// CVARS - Synapsis Mode
	cvar_synapsis = register_cvar("za_synapsis_enabled", "1")
	cvar_synapsischance = register_cvar("za_synapsis_chance", "15")
	cvar_synapsisminplayers = register_cvar("za_synapsis_min_players", "10")
	cvar_synapsisratio = register_cvar("za_synapsis_ratio", "0.5")
	cvar_synapsisnemnum = register_cvar("za_synapsis_nem_number", "1")
	cvar_synapsisnemhp = register_cvar("za_synapsis_nem_hp", "24000")
	cvar_synapsissurvnum = register_cvar("za_synapsis_surv_number", "1")
	cvar_synapsissurvhp = register_cvar("za_synapsis_surv_hp", "6500")
	
	// CVARS - Left 4 Dead Mode
	cvar_l4d = register_cvar("za_l4d_enabled", "1")
	cvar_l4dchance = register_cvar("za_l4d_chance", "15")
	cvar_l4dminplayers = register_cvar("za_l4d_min_players", "10")
	
	// CVARS - Armageddon Mode
	cvar_armageddon = register_cvar("za_armageddon_enabled", "1")
	cvar_armageddonchance = register_cvar("za_armageddon_chance", "20")
	cvar_armageddonminplayers = register_cvar("za_armageddon_min_players", "10")
	cvar_armageddonratio = register_cvar("za_armageddon_ratio", "0.5")
	cvar_armageddonnemhp = register_cvar("za_armageddon_nem_hp", "24000")
	cvar_armageddonsurvhp = register_cvar("za_armageddon_surv_hp", "6500")
	
	// CVARS - Crysis Mode
	cvar_crysis = register_cvar("za_crysis_enabled", "1")
	cvar_crysischance = register_cvar("za_crysis_chance", "20")
	cvar_crysisminplayers = register_cvar("za_crysis_min_players", "10")
	cvar_crysisratio = register_cvar("za_crysis_ratio", "0.5")
	cvar_crysisalihp = register_cvar("za_crysis_ali_hp", "20000")
	cvar_crysisweskhp = register_cvar("za_crysis_wesk_hp", "4500")
	
	// CVARS - Assassins vs Snipers Mode
	cvar_avs = register_cvar("za_avs_enabled", "1")
	cvar_avschance = register_cvar("za_avs_chance", "20")
	cvar_avsminplayers = register_cvar("za_avs_min_players", "10")
	cvar_avsratio = register_cvar("za_avs_ratio", "0.5")
	cvar_avsasshp = register_cvar("za_avs_ass_hp", "20000")
	cvar_avssniphp = register_cvar("za_avs_snip_hp", "4500")
	
	// CVARS - Apocalypse Mode
	cvar_apocalypse = register_cvar("za_apocalypse_enabled", "1")
	cvar_apocalypsechance = register_cvar("za_apocalypse_chance", "20")
	cvar_apocalypseminplayers = register_cvar("za_apocalypse_min_players", "10")
	cvar_apocalypseratio = register_cvar("za_apocalypse_ratio", "0.5")
	cvar_apocalypsenemhp = register_cvar("za_apocalypse_nem_hp", "20000")
	cvar_apocalypsealihp = register_cvar("za_apocalypse_ali_hp", "20000")
	cvar_apocalypsesurvhp = register_cvar("za_apocalypse_surv_hp", "4500")
	cvar_apocalypseweskhp = register_cvar("za_apocalypse_wesk_hp", "4500")
	
	// CVARS - Nightmare Mode
	cvar_nightmare = register_cvar("za_nightmare_enabled", "1")
	cvar_nightmarechance = register_cvar("za_nightmare_chance", "20")
	cvar_nightmareminplayers = register_cvar("za_nightmare_min_players", "10")
	cvar_nightmareratio = register_cvar("za_nightmare_ratio", "0.5")
	cvar_nightmarenemhp = register_cvar("za_nightmare_nem_hp", "20000")
	cvar_nightmareasshp = register_cvar("za_nightmare_ass_hp", "20000")
	cvar_nightmaresurvhp = register_cvar("za_nightmare_surv_hp", "4500")
	cvar_nightmaresniphp = register_cvar("za_nightmare_snip_hp", "4500")
	
	// CVARS - Ultimate Mode
	cvar_ultimate = register_cvar("za_ultimate_enabled", "1")
	cvar_ultimatechance = register_cvar("za_ultimate_chance", "20")
	cvar_ultimateminplayers = register_cvar("za_ultimate_min_players", "10")
	cvar_ultimateratio = register_cvar("za_ultimate_ratio", "0.5")
	cvar_ultimatenemhp = register_cvar("za_ultimate_nem_hp", "20000")
	cvar_ultimatealihp = register_cvar("za_ultimate_ali_hp", "20000")
	cvar_ultimateasshp = register_cvar("za_ultimate_ass_hp", "20000")
	cvar_ultimatesurvhp = register_cvar("za_ultimate_surv_hp", "4500")
	cvar_ultimateweskhp = register_cvar("za_ultimate_wesk_hp", "4500")
	cvar_ultimatesniphp = register_cvar("za_ultimate_snip_hp", "4500")
	
	// CVARS - Others
	cvar_logcommands = register_cvar("za_logcommands", "1")
	register_cvar("za_version", PLUGIN_VERSION, FCVAR_SERVER|FCVAR_SPONLY)
	set_cvar_string("za_version", PLUGIN_VERSION)
	
	g_MenuCallback[MASTER] = menu_makecallback("check_master")
	g_MenuCallback[USER] = menu_makecallback("check_user") 
	
	// Custom Forwards
	g_fwRoundStart = CreateMultiForward("zp_round_started", ET_IGNORE, FP_CELL, FP_CELL)
	g_fwRoundEnd = CreateMultiForward("zp_round_ended", ET_IGNORE, FP_CELL)
	g_fwUserInfected_pre = CreateMultiForward("zp_user_infected_pre", ET_IGNORE, FP_CELL, FP_CELL, FP_CELL)
	g_fwUserInfected_post = CreateMultiForward("zp_user_infected_post", ET_IGNORE, FP_CELL, FP_CELL, FP_CELL)
	g_fwUserHumanized_pre = CreateMultiForward("zp_user_humanized_pre", ET_IGNORE, FP_CELL, FP_CELL)
	g_fwUserHumanized_post = CreateMultiForward("zp_user_humanized_post", ET_IGNORE, FP_CELL, FP_CELL)
	g_fwUserInfect_attempt = CreateMultiForward("zp_user_infect_attempt", ET_CONTINUE, FP_CELL, FP_CELL, FP_CELL)
	g_fwUserHumanize_attempt = CreateMultiForward("zp_user_humanize_attempt", ET_CONTINUE, FP_CELL, FP_CELL)
	g_fwExtraItemSelected = CreateMultiForward("zp_extra_item_selected", ET_CONTINUE, FP_CELL, FP_CELL)
	g_fwUserUnfrozen = CreateMultiForward("zp_user_unfrozen", ET_IGNORE, FP_CELL)
	g_fwUserLastZombie = CreateMultiForward("zp_user_last_zombie", ET_IGNORE, FP_CELL)
	g_fwUserLastHuman = CreateMultiForward("zp_user_last_human", ET_IGNORE, FP_CELL)
	
	// Collect random spawn points
	load_spawns()
	
	// Load account and characters count
	load_account_count()
	
	// Set a random skybox?
	if (g_sky_enable)
	{
		new sky[32]
		ArrayGetString(g_sky_names, random_num(0, ArraySize(g_sky_names) - 1), sky, charsmax(sky))
		set_cvar_string("sv_skyname", sky)
	}
	
	// Disable sky lighting so it doesn't mess with our custom lighting
	set_cvar_num("sv_skycolor_r", 0)
	set_cvar_num("sv_skycolor_g", 0)
	set_cvar_num("sv_skycolor_b", 0)
	
	// Create the HUD Sync Objects
	g_MsgSync = CreateHudSyncObj()
	g_MsgSync2 = CreateHudSyncObj()
	g_MsgSync3 = CreateHudSyncObj()
	g_MsgSync4 = CreateHudSyncObj()
	g_MsgSync5 = CreateHudSyncObj()
	
	// Format mod name
	formatex(g_modname, charsmax(g_modname), "Zombie Escape %s", PLUGIN_VERSION)
	
	// Get Max Players
	g_maxplayers = get_maxplayers()
	
	// Create trie to check character names
	g_tcharacternames = TrieCreate()
	save_characters_name()
}

public plugin_cfg()
{
	new szDir[64], szMapName[32]
    get_localinfo("amxx_configsdir", szDir, charsmax(szDir))
    
    get_mapname(szMapName, charsmax(szMapName))
    strtolower(szMapName)
    
    formatex(g_szDirFile, charsmax(g_szDirFile), "%s/zona_de_escape/%s.ini", szDir, szMapName)
    
    if(!file_exists(g_szDirFile))
    {
        server_print("No Hay Zonas Guardadas")
        
        add(szDir, charsmax(szDir), "/zonas")
        
        if(!dir_exists(szDir))
            mkdir(szDir)
    }
    else
        ReadFile()
	
	// Plugin disabled?
	if (!g_pluginenabled) return;
	
	for(new i = 1; i <= g_maxplayers; i++)
	Party_Ids[i] = ArrayCreate(1, 1)
	
	// Get configs dir
	new cfgdir[32]
	get_configsdir(cfgdir, charsmax(cfgdir))
	
	// Execute config file (zombieapocalypse.cfg)
	server_cmd("exec %s/zombie_escape.cfg", cfgdir)
	
	// Prevent any more stuff from registering
	g_arrays_created = false
	
	// Save customization data
	save_customization()
	
	// Lighting task
	set_task(5.0, "lighting_effects", _, _, _, "b")
	
	// Cache CVARs after configs are loaded / call roundstart manually
	set_task(0.5, "cache_cvars")
	set_task(0.5, "event_round_start")
	set_task(0.5, "logevent_round_start")
}

public plugin_end()
{
	TrieDestroy(g_tcharacternames)
}

/*================================================================================
 [Main Events]
=================================================================================*/

// Event Round Start
public event_round_start()
{
	// Remove doors/lights?
	set_task(0.1, "remove_stuff")
	
	// Happy Hour enabled?
	if (get_pcvar_num(cvar_happyhour)) check_happyhour()
	else g_happytime = false
	
	// New round starting
	g_newround = true
	g_endround = g_modestarted = false
	g_final = false
	g_currentmode = MODE_NONE
	
	// Reset health show in HUD
	g_healthshow = 0
	
	// Reset bought infection bombs counter
	g_infbombcounter = g_antidotecounter = g_madnesscounter = g_anti_ice_counter = g_anti_fire_counter = 0
	
	// Freezetime begins
	g_freezetime = true
	
	for( new id = 1; id <= g_maxplayers; ++id )
         {
	         set_task(0.1, "remove_escape_task", id)
	}
	
	for( new i = 1; i <= g_maxplayers; ++i )
         {
	         g_anti_ice[i] = false
	         g_anti_fire[i] = false
	         g_madness[i] = false
	}
	
	// Show welcome message and T-Virus notice
	remove_task(TASK_WELCOMEMSG)
	set_task(2.0, "welcome_msg", TASK_WELCOMEMSG)
	
	// Set a new "Make Zombie Task"
	remove_task(TASK_MAKEZOMBIE)
	set_task(2.0 + get_pcvar_float(cvar_warmup), "make_zombie_task", TASK_MAKEZOMBIE)
	
	// Start countdown
	if (get_pcvar_num(cvar_warmup))
	{
		remove_task(TASK_COUNTDOWN)
		g_countdown = get_pcvar_num(cvar_warmup) - 1
		set_task(1.0, "make_countdown", TASK_COUNTDOWN, _, _, "b")
	}
	
	set_pcvar_num(cvar_deathmatch, 2)
	set_pcvar_num(cvar_hudstats, 0)
	set_pcvar_num(cvar_infammo, 1)
}

// Log Event Round Start
public logevent_round_start()
{
	// Freezetime ends
	g_freezetime = false
}

// Log Event Round End
public logevent_round_end()
{
	// Prevent this from getting called twice when restarting (bugfix)
	static Float:lastendtime, Float:current_time
	current_time = get_gametime()
	if (current_time - lastendtime < 0.5) return;
	lastendtime = current_time
	
	// Finish round user...
	for (new id = 1; id <= g_maxplayers; id++)
	{
	         // Not connected or bot
		if (!g_isconnected[id] || g_isbot[id]) continue;
			
		// Not character selected
		if (g_status[id] < ONLINE_SPEC) continue;
		
		finish_round_user(id)
	}
	
	g_endround = true
	
	// Stop old tasks (if any)
	remove_task(TASK_WELCOMEMSG)
	remove_task(TASK_MAKEZOMBIE)
	remove_task(TASK_MARKER)
	remove_task(TASK_COUNTDOWN)
	
		remove_task(TASK_AMB)
		ambience_sound_stop()
	
	// Show HUD notice, play win sound, update team scores...
	static sound[64]
	if (!fnGetZombies())
	{
		// Human team wins
		set_hudmessage(0, 0, 200, HUD_EVENT_X, HUD_EVENT_Y, 0, 0.0, 3.0, 2.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "Los Humanos han vencido la plaga!")
		
		// Get sound and increase score, unless game commencing
		ArrayGetString(sound_win_humans, random_num(0, ArraySize(sound_win_humans) - 1), sound, charsmax(sound))
		if (!g_gamecommencing) g_scorehumans++
		
		// Round end forward
		ExecuteForward(g_fwRoundEnd, g_fwDummyResult, ZP_TEAM_HUMAN);
	}
	else if (!fnGetHumans())
	{
		// Zombie team wins
		set_hudmessage(200, 0, 0, HUD_EVENT_X, HUD_EVENT_Y, 0, 0.0, 3.0, 2.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "Los Zombies han tomado el mundo!")
		
		// Get sound and increase score, unless game commencing
		ArrayGetString(sound_win_zombies, random_num(0, ArraySize(sound_win_zombies) - 1), sound, charsmax(sound))
		if (!g_gamecommencing) g_scorezombies++
		
		// Round end forward
		ExecuteForward(g_fwRoundEnd, g_fwDummyResult, ZP_TEAM_ZOMBIE);
	}
	else
	{
		// No one wins
		set_hudmessage(0, 200, 0, HUD_EVENT_X, HUD_EVENT_Y, 0, 0.0, 3.0, 2.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "Nadie ha ganado...")
		
		// Get sound
		ArrayGetString(sound_win_no_one, random_num(0, ArraySize(sound_win_no_one) - 1), sound, charsmax(sound))
		
		// Round end forward
		ExecuteForward(g_fwRoundEnd, g_fwDummyResult, ZP_TEAM_NO_ONE);
	}
	
	// Play win sound
	PlaySound(sound)
	
	// Best player message
	if (!g_gamecommencing) set_task(2.0, "best_player")
	
	// Game commencing triggers round end
	g_gamecommencing = false
	
	// Balance the teams
	balance_teams()
}

// When finish round...
finish_round_user(id)
{
	// Logged as spectator
	if (fm_cs_get_user_team(id) == FM_CS_TEAM_SPECTATOR)
	{
		Save(id) // save progress only
		return;
	}
	
	g_playedtime[id][0]++
	
	// Add played rounds
	if (g_playedtime[id][0] > 999999999)
	{
	g_playedtime[id][0] = 999999999
	}
		
	// Is in quest?
	if (g_quest[id])
	{
		// Auto-complete quest
		for (new i = 0; i < 8; i++)
		{
			if (g_questkill[id][i] >= quest_cost(g_questcompleted[id][i]))
			{
				menu_quest(id, i)
				Save(id) // save progress
				return;
			}
		}
		
		// Substract quest rounds
		g_questrounds[id]--
		
		// Auto-finish quest
		if (g_questrounds[id] < 1)
		{
			// Reset quest
			g_quest[id] = g_questrounds[id] = 0
		
			// Reset quest kills
			for (new i = 0; i < 8; i++) g_questkill[id][i] = 0
		
			// Show print
			Color(id, "!g[ZE]!y Mision Fallida")
		}
	}
	
	// Save progress
	Save(id)
}

// Event Reset HUD
public event_ResetHUD(id)
{
	// Hide radar, health and armor
	message_begin(MSG_ONE, g_msgHideWeapon, _, id)
	if (get_pcvar_num(cvar_removemoney)) // Hide money too?
		write_byte(HIDE_MONEY) // what to hide bitsum
	else
		write_byte(HIDE_MONEY) // what to hide bitsum
	message_end()
	
	// Hide the HL crosshair that's drawn
	message_begin(MSG_ONE, g_msgCrosshair, _, id)
	write_byte(0) // toggle
	message_end()
}

// Event Map Ended
public event_intermission()
{
	// Remove ambience sounds task
	remove_task(TASK_AMB)
}

// BP Ammo update
public event_ammo_x(id)
{
	// Humans only
	if (g_class[id] >= ZOMBIE) return;
	
	// Get ammo type
	static type; type = read_data(1)
	
	// Unknown ammo type
	if (type >= sizeof AMMOWEAPON) return;
	
	// Get weapon's id
	static weapon; weapon = AMMOWEAPON[type]
	
	// Primary and secondary only
	if (MAXBPAMMO[weapon] <= 2) return;
	
	// Get ammo amount
	static amount; amount = read_data(2)
	
	// Unlimited BP Ammo?
	if (g_class[id] == SURVIVOR ? get_pcvar_num(cvar_survinfammo) : g_class[id] == WESKER ? get_pcvar_num(cvar_weskinfammo) : get_pcvar_num(cvar_infammo))
	{
		if (amount < MAXBPAMMO[weapon])
		{
			// The BP Ammo refill code causes the engine to send a message, but we
			// can't have that in this forward or we risk getting some recursion bugs.
			// For more info see: https://bugs.alliedmods.net/show_bug.cgi?id=3664
			static args[1]; args[0] = weapon
			set_task(0.1, "refill_bpammo", id, args, sizeof args)
		}
	}
	// Bots automatically buy ammo when needed
	else if (g_isbot[id] && amount <= BUYAMMO[weapon])
	{
		// Task needed for the same reason as above
		set_task(0.1, "clcmd_buyammo", id)
	}
}

/*================================================================================
 [Main Forwards]
=================================================================================*/

// Entity Spawn Forward
public fw_Spawn(entity)
{
	// Invalid entity
	if (!pev_valid(entity)) return FMRES_IGNORED;
	
	// Get classname
	new classname[32], objective[32], size = ArraySize(g_objective_ents)
	pev(entity, pev_classname, classname, charsmax(classname))
	
	// Check whether it needs to be removed
	for (new i = 0; i < size; i++)
	{
		ArrayGetString(g_objective_ents, i, objective, charsmax(objective))
		
		if (equal(classname, objective))
		{
			engfunc(EngFunc_RemoveEntity, entity)
			return FMRES_SUPERCEDE;
		}
	}
	
	return FMRES_IGNORED;
}

// Sound Precache Forward
public fw_PrecacheSound(const sound[])
{
	// Block all those unneeeded hostage sounds
	if (equal(sound, "hostage", 7)) return FMRES_SUPERCEDE;
	
	return FMRES_IGNORED;
}

// Ham Player Spawn Post Forward
public fw_PlayerSpawn_Post(id)
{
	// Not alive or didn't join a team yet
	if (!is_user_alive(id) || !fm_cs_get_user_team(id)) return;
	
	// Player spawned
	g_isalive[id] = true
	
	// Remove previous tasks
	remove_task(id+TASK_SPAWN)
	remove_task(id+TASK_BLOOD)
	remove_task(id+TASK_AURA)
	remove_task(id+TASK_BURN)
	remove_task(id+TASK_CHARGE)
	remove_task(id+TASK_FLASH)
	remove_task(id+TASK_NVISION)
	
	// Spawn at a random location?
	if (get_pcvar_num(cvar_randspawn)) do_random_spawn(id)
	
	// Respawn player if he dies because of a worldspawn kill?
	if (get_pcvar_num(cvar_respawnworldspawnkill))
		set_task(2.0, "respawn_player_check_task", id+TASK_SPAWN)
	
	// Spawn as zombie?
	if (g_respawn_as_zombie[id] && !g_newround)
	{
		reset_vars(id, 0, 0) // reset player vars
		zombieme(id, 0, 0, 0, 0) // make him zombie right away
		return;
	}
	
	// Reset player vars
	reset_vars(id, 0, 0)
	
	// Reset buy time
	g_buytime[id] = get_gametime()
	
	// Show custom buy menu?
	if (get_pcvar_num(cvar_buycustom))
	{	
		// Strip off from weapons
		strip_user_weapons(id)
		give_item(id, "weapon_knife")
		if(g_nomenu[id] == 0)
		{
			show_menu_weapon(id)
		}
		if(g_nomenu[id] == 1)
		{
			buy_weapons(id)
		}
	}
	
	// Set selected human class
	g_humanclass[id] = g_humanclassnext[id]
	// If no class selected yet, use the first (default) one
	if (g_humanclass[id] == HCLASS_NONE) g_humanclass[id] = 0
	
	// Set health, armor and gravity
	set_user_health(id, ArrayGetCell(g_hclass_hp, g_humanclass[id]) + ammount_hhealth(g_level[id]))
	set_pev(id, pev_gravity, Float:ArrayGetCell(g_hclass_grav, g_humanclass[id]) - ammount_hgravity(g_level[id]))
	
	// Cache speed and name for player's class
	g_human_spd[id] = float(ArrayGetCell(g_hclass_spd, g_humanclass[id]))
	ArrayGetString(g_hclass_name, g_humanclass[id], g_human_classname[id], charsmax(g_human_classname[]))

	// Set human maxspeed
	ExecuteHamB(Ham_Player_ResetMaxSpeed, id)
	
	// Switch to CT if spawning mid-round
	if (!g_newround && fm_cs_get_user_team(id) != FM_CS_TEAM_CT) // need to change team?
	{
		remove_task(id+TASK_TEAM)
		fm_cs_set_user_team(id, FM_CS_TEAM_CT)
		fm_user_team_update(id)
	}
	
	// Custom models stuff
	static iRand
 
	// Set the right model, after checking that we don't already have it
	if (get_pcvar_num(cvar_adminmodelshuman) && (get_user_flags(id) & g_access_flag[ACCESS_ADMIN_MODELS]))
	{
		iRand = random_num(0, ArraySize(model_admin_human) - 1)
		ArrayGetString(model_admin_human, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 1)
	{        
		iRand = random_num(0, ArraySize(model_player1) - 1)
		ArrayGetString(model_player1, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 2)
	{        
		iRand = random_num(0, ArraySize(model_player2) - 1)
		ArrayGetString(model_player2, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 3)
	{        
		iRand = random_num(0, ArraySize(model_player3) - 1)
		ArrayGetString(model_player3, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 4)
	{        
		iRand = random_num(0, ArraySize(model_player4) - 1)
		ArrayGetString(model_player4, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 5)
	{        
		iRand = random_num(0, ArraySize(model_player5) - 1)
		ArrayGetString(model_player5, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 6)
	{        
		iRand = random_num(0, ArraySize(model_player6) - 1)
		ArrayGetString(model_player6, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 7)
	{        
		iRand = random_num(0, ArraySize(model_player7) - 1)
		ArrayGetString(model_player7, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 8)
	{        
		iRand = random_num(0, ArraySize(model_player8) - 1)
		ArrayGetString(model_player8, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 9)
	{        
		iRand = random_num(0, ArraySize(model_player9) - 1)
		ArrayGetString(model_player9, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 10)
	{        
		iRand = random_num(0, ArraySize(model_player10) - 1)
		ArrayGetString(model_player10, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 11)
	{        
		iRand = random_num(0, ArraySize(model_player11) - 1)
		ArrayGetString(model_player11, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 12)
	{        
		iRand = random_num(0, ArraySize(model_player12) - 1)
		ArrayGetString(model_player12, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 0)
	{
		iRand = random_num(ArrayGetCell(g_hclass_modelsstart, g_humanclass[id]), ArrayGetCell(g_hclass_modelsend, g_humanclass[id]) - 1)
		ArrayGetString(g_hclass_playermodel, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	cs_set_player_model(id, g_playermodel[id])

	// Remove glow
	set_rendering(id)
	
	fm_model_ents(id)
	
	if (!g_frozen[id])
	{
		if (g_glows[id] == 0)
			set_rendering(id)
		else if (g_glows[id] == 1)
			set_rendering(id, kRenderFxGlowShell, 255, 0, 0, kRenderNormal, 25)
		else if (g_glows[id] == 2)
			set_rendering(id, kRenderFxGlowShell, 0, 255, 0, kRenderNormal, 25)
		else if (g_glows[id] == 3)
			set_rendering(id, kRenderFxGlowShell, 0, 0, 255, kRenderNormal, 25)
		else if (g_glows[id] == 4)
			set_rendering(id, kRenderFxGlowShell, 255, 255, 0, kRenderNormal, 25)
		else if (g_glows[id] == 5)
			set_rendering(id, kRenderFxGlowShell, 255, 100, 0, kRenderNormal, 25)
		else if (g_glows[id] == 6)
			set_rendering(id, kRenderFxGlowShell, 0, 255, 255, kRenderNormal, 25)
		else if (g_glows[id] == 7)
			set_rendering(id, kRenderFxGlowShell, 255, 0, 100, kRenderNormal, 25)
		else if (g_glows[id] == 8)
			set_rendering(id, kRenderFxGlowShell, 100, 0, 255, kRenderNormal, 25)
		else if (g_glows[id] == 9)
			set_rendering(id, kRenderFxGlowShell, 255, 255, 255, kRenderNormal, 25)	
	}

	// Bots stuff
	if (g_isbot[id])
	{
		// Turn off NVG for bots
		cs_set_user_nvg(id, 0)
		
		// Automatically buy extra items/weapons after first zombie is chosen
		if (get_pcvar_num(cvar_extraitems))
		{
			if (g_newround) set_task(10.0 + get_pcvar_float(cvar_warmup), "bot_buy_extras", id+TASK_SPAWN)
			else set_task(10.0, "bot_buy_extras", id+TASK_SPAWN)
		}
	}
	
	// Enable spawn protection for humans spawning mid-round
	if (!g_newround && get_pcvar_float(cvar_spawnprotection) > 0.0)
	{
		// Do not take damage
		g_nodamage[id] = true
		
		// Make temporarily invisible
		set_pev(id, pev_effects, pev(id, pev_effects) | EF_NODRAW)
		
		// Set task to remove it
		set_task(get_pcvar_float(cvar_spawnprotection), "remove_spawn_protection", id+TASK_SPAWN)
	}
	
	if (is_user_admin(id))
	{
		if(pev(id, pev_armorvalue) < 100)
		set_pev(id, pev_armorvalue, float(100))
	}
	
	// Turn off his flashlight (prevents double flashlight bug/exploit)
	turn_off_flashlight(id)
	
	// Set the flashlight charge task to update battery status
	set_task(1.0, "flashlight_charge", id+TASK_CHARGE, _, _, "b")
	
	// Replace weapon models (bugfix)
	replace_weapon_models(id, g_currentweapon[id])
	
	// Last Check
	fnCheckLast()
}

// Ham Player Killed Forward
public fw_PlayerKilled(victim, attacker, shouldgib)
{
	// Player killed
	g_isalive[victim] = false
	
	// Disable nodamage mode after we die to prevent spectator nightvision using zombie madness colors bug
	g_nodamage[victim] = false
	
	// Enable dead players nightvision
	set_task(0.1, "spec_nvision", victim)
	
	// Disable nightvision when killed (bugfix)
	if (get_pcvar_num(cvar_nvggive) == 0 && g_nvision[victim])
	{
		remove_task(victim+TASK_NVISION)
		g_nvision[victim] = g_nvisionenabled[victim] = false
	}
	
	// Turn off nightvision when killed (bugfix)
	if (get_pcvar_num(cvar_nvggive) == 2 && g_nvision[victim] && g_nvisionenabled[victim])
	{
		remove_task(victim+TASK_NVISION)
		g_nvisionenabled[victim] = false
	}
	
	// Turn off custom flashlight when killed
	g_flashlight[victim] = false
	g_flashbattery[victim] = 100
		
	// Remove previous flashlight tasks
	remove_task(victim+TASK_CHARGE)
	remove_task(victim+TASK_FLASH)
	
	// Get victim origin
	static origin[3]
	get_user_origin(victim, origin)
		
	// Stop bleeding/burning/aura when killed
	if (g_class[victim] >= ZOMBIE)
	{
		remove_task(victim+TASK_BLOOD)
		remove_task(victim+TASK_AURA)
		remove_task(victim+TASK_BURN)
	}
	
	// Determine whether the player killed himself
	static selfkill
	selfkill = (victim == attacker || !is_user_valid_connected(attacker)) ? true : false
	
	// Killed by a non-player entity or self killed
	if (selfkill) return;
	
	// Particles when death
	if (g_class[victim] >= ZOMBIE && get_pcvar_num(cvar_zombieparticles))
		FX_BloodSpurt(origin)
		
	// When killed by a Sniper victim explodes
	if (g_class[attacker] == SNIPER)
	{
		new weapon = get_user_weapon(attacker)
		if (get_pcvar_num(cvar_snipfraggore) && weapon == CSW_AWP)
		{
			if (g_class[victim] == ZOMBIE || g_class[victim] == FIRST_ZOMBIE || g_class[victim] == LAST_ZOMBIE)
			{
				new origin[3];
				get_user_origin(victim, origin);
					
				message_begin(MSG_BROADCAST, SVC_TEMPENTITY);
				write_byte(TE_LAVASPLASH);
				write_coord(origin[0]);
				write_coord(origin[1]);
				write_coord(origin[2]-26);
				message_end();
					
				SetHamParamInteger(3, 2);
			}
		}
	}	
		
	// Zombie?
	if (g_class[victim] >= ZOMBIE)
	{
		if (g_class[victim] == NEMESIS)
		{
			// Explodes!
			SetHamParamInteger(3, 2)
			
			// Add kill
			
			g_killed[attacker][0][5]++
			
			if (g_killed[attacker][0][5] > 999999999)
			{
				g_killed[attacker][0][5] = 999999999
			}
			
			if (g_quest[attacker] == 8) g_questkill[attacker][7]++
			
			if (is_user_admin(attacker))
			{
			if (get_pcvar_num(cvar_xpkilledn))
			{
				if (g_happytime) g_experience[attacker] += get_pcvar_num(cvar_xpkilledn) * floatround(get_pcvar_float(cvar_hhdropxp) * 2)
				else g_experience[attacker] += get_pcvar_num(cvar_xpkilledn) * 2
			}	
			if (g_experience[attacker] > 999999999)
			{
				g_experience[attacker] = 999999999
			}	
			
			zp_colored_print(attacker, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por matar un^x04 Nemesis", g_happytime ? get_pcvar_num(cvar_xpkilledn) * floatround(get_pcvar_float(cvar_hhdropxp) * 2) : get_pcvar_num(cvar_xpkilledn) * 2)
			}
			else
			{
			if (get_pcvar_num(cvar_xpkilledn))
			{
				if (g_happytime) g_experience[attacker] += get_pcvar_num(cvar_xpkilledn) * floatround(get_pcvar_float(cvar_hhdropxp))
				else g_experience[attacker] += get_pcvar_num(cvar_xpkilledn)
			}	
			if (g_experience[attacker] > 999999999)
			{
				g_experience[attacker] = 999999999
			}	
			
			zp_colored_print(attacker, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por matar un^x04 Nemesis", g_happytime ? get_pcvar_num(cvar_xpkilledn) * floatround(get_pcvar_float(cvar_hhdropxp)) : get_pcvar_num(cvar_xpkilledn))
			}
			
			complete(attacker)
			update_level(attacker)
		}
		else if (g_class[victim] == ALIEN)
		{
			// Explodes!
			SetHamParamInteger(3, 2)
			
			// Add kill
			g_killed[attacker][0][6]++
			
			if (g_killed[attacker][0][6] > 999999999)
			{
				g_killed[attacker][0][6] = 999999999
			}
			
			if (g_quest[attacker] == 8) g_questkill[attacker][7]++
		
			// Give experience
			if (is_user_admin(attacker))
			{
			if (get_pcvar_num(cvar_xpkilleda))
			{
				
				if (g_happytime) g_experience[attacker] += get_pcvar_num(cvar_xpkilleda) * floatround(get_pcvar_float(cvar_hhdropxp) * 2)
				else g_experience[attacker] += get_pcvar_num(cvar_xpkilleda) * 2
			}	
			if (g_experience[attacker] > 999999999)
			{
				g_experience[attacker] = 999999999
			}
			
			zp_colored_print(attacker, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por matar un^x04 Alien", g_happytime ? get_pcvar_num(cvar_xpkilleda) * floatround(get_pcvar_float(cvar_hhdropxp) * 2) : get_pcvar_num(cvar_xpkilleda) * 2)
			}
			else
			{
			if (get_pcvar_num(cvar_xpkilleda))
			{
				
				if (g_happytime) g_experience[attacker] += get_pcvar_num(cvar_xpkilleda) * floatround(get_pcvar_float(cvar_hhdropxp))
				else g_experience[attacker] += get_pcvar_num(cvar_xpkilleda)
			}	
			if (g_experience[attacker] > 999999999)
			{
				g_experience[attacker] = 999999999
			}
			
			zp_colored_print(attacker, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por matar un^x04 Alien", g_happytime ? get_pcvar_num(cvar_xpkilleda) * floatround(get_pcvar_float(cvar_hhdropxp)) : get_pcvar_num(cvar_xpkilleda))
			}
			
			complete(attacker)
			update_level(attacker)
		}
		else if (g_class[victim] == ASSASSIN)
		{
			// Explodes!
			SetHamParamInteger(3, 2)
			
			// Add kill
			g_killed[attacker][0][7]++
			
			if (g_killed[attacker][0][7] > 999999999)
			{
				g_killed[attacker][0][7] = 999999999
			}
			
			if (g_quest[attacker] == 8) g_questkill[attacker][7]++
		
			// Give experience
			if (is_user_admin(attacker))
			{
			if (get_pcvar_num(cvar_xpkilledas))
			{
				
				if (g_happytime) g_experience[attacker] += get_pcvar_num(cvar_xpkilledas) * floatround(get_pcvar_float(cvar_hhdropxp) * 2)
				else g_experience[attacker] += get_pcvar_num(cvar_xpkilledas) * 2
			}	
			if (g_experience[attacker] > 999999999)
			{
				g_experience[attacker] = 999999999
			}
			
			zp_colored_print(attacker, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por matar un^x04 Assassin", g_happytime ? get_pcvar_num(cvar_xpkilledas) * floatround(get_pcvar_float(cvar_hhdropxp) * 2) : get_pcvar_num(cvar_xpkilledas) * 2)
			}
			else
			{
			if (get_pcvar_num(cvar_xpkilledas))
			{
				
				if (g_happytime) g_experience[attacker] += get_pcvar_num(cvar_xpkilledas) * floatround(get_pcvar_float(cvar_hhdropxp))
				else g_experience[attacker] += get_pcvar_num(cvar_xpkilledas)
			}	
			if (g_experience[attacker] > 999999999)
			{
				g_experience[attacker] = 999999999
			}
			
			zp_colored_print(attacker, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por matar un^x04 Assassin", g_happytime ? get_pcvar_num(cvar_xpkilledas) * floatround(get_pcvar_float(cvar_hhdropxp)) : get_pcvar_num(cvar_xpkilledas))
			}
			
			complete(attacker)
			update_level(attacker)
			
		}
		else if (g_class[victim] == DEMON)
		{
			// Explodes!
			SetHamParamInteger(3, 2)
		
			// Give experience
			if (is_user_admin(attacker))
			{
			if (get_pcvar_num(cvar_xpkilledd))
			{
				if (g_happytime) g_experience[attacker] += get_pcvar_num(cvar_xpkilledd) * floatround(get_pcvar_float(cvar_hhdropxp) * 2)
				else g_experience[attacker] += get_pcvar_num(cvar_xpkilledd) * 2
			}	
			if (g_experience[attacker] > 999999999)
			{
				g_experience[attacker] = 999999999
			}
			
			zp_colored_print(attacker, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por matar un^x04 Demon", g_happytime ? get_pcvar_num(cvar_xpkilledd) * floatround(get_pcvar_float(cvar_hhdropxp) * 2) : get_pcvar_num(cvar_xpkilledd) * 2)
			}
			else
			{
			if (get_pcvar_num(cvar_xpkilledd))
			{
				if (g_happytime) g_experience[attacker] += get_pcvar_num(cvar_xpkilledd) * floatround(get_pcvar_float(cvar_hhdropxp))
				else g_experience[attacker] += get_pcvar_num(cvar_xpkilledd)
			}	
			if (g_experience[attacker] > 999999999)
			{
				g_experience[attacker] = 999999999
			}
			
			zp_colored_print(attacker, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por matar un^x04 Demon", g_happytime ? get_pcvar_num(cvar_xpkilledd) * floatround(get_pcvar_float(cvar_hhdropxp)) : get_pcvar_num(cvar_xpkilledd))
			}
			
			complete(attacker)
			update_level(attacker)	
		}
		else
		{		
			// Add kill
			g_killed[attacker][0][1]++
			
			if (g_killed[attacker][0][1] > 999999999)
			{
				g_killed[attacker][0][1] = 999999999
			}
			
			if (g_quest[attacker] == 2) g_questkill[attacker][1]++
		
			// Give experience
			if (is_user_admin(attacker))
			{
			if (get_pcvar_num(cvar_xpkilledz))
			{
				if (g_happytime) g_experience[attacker] += get_pcvar_num(cvar_xpkilledz) * floatround(get_pcvar_float(cvar_hhdropxp) * 2)
                                     else g_experience[attacker] += get_pcvar_num(cvar_xpkilledz) * 2
			}	
			if (g_experience[attacker] > 999999999)
			{
				g_experience[attacker] = 999999999
			}
			
			zp_colored_print(attacker, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por matar un^x04 Zombie", g_happytime ? get_pcvar_num(cvar_xpkilledz) * floatround(get_pcvar_float(cvar_hhdropxp) * 2) : get_pcvar_num(cvar_xpkilledz) * 2)
			}
			else
			{
			if (get_pcvar_num(cvar_xpkilledz))
			{
				if (g_happytime) g_experience[attacker] += get_pcvar_num(cvar_xpkilledz) * floatround(get_pcvar_float(cvar_hhdropxp))
                                     else g_experience[attacker] += get_pcvar_num(cvar_xpkilledz)
			}	
			if (g_experience[attacker] > 999999999)
			{
				g_experience[attacker] = 999999999
			}
			
			zp_colored_print(attacker, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por matar un^x04 Zombie", g_happytime ? get_pcvar_num(cvar_xpkilledz) * floatround(get_pcvar_float(cvar_hhdropxp)) : get_pcvar_num(cvar_xpkilledz))
			}
			
			complete(attacker)
			update_level(attacker)
		}
	}
	else
	{
		if (g_class[victim] == SURVIVOR)
		{
			// Add kill
			g_killed[attacker][0][2]++
			
			if (g_killed[attacker][0][2] > 999999999)
			{
				g_killed[attacker][0][2] = 999999999
			}
			
			if (g_quest[attacker] == 7) g_questkill[attacker][6]++
		
			// Give experience
			if (is_user_admin(attacker))
			{
			if (get_pcvar_num(cvar_xpkilleds))
			{
				
				if (g_happytime) g_experience[attacker] += get_pcvar_num(cvar_xpkilleds) * floatround(get_pcvar_float(cvar_hhdropxp) * 2)
                                     else g_experience[attacker] += get_pcvar_num(cvar_xpkilleds) * 2
			}	
			if (g_experience[attacker] > 999999999)
			{
				g_experience[attacker] = 999999999
			}
			
			zp_colored_print(attacker, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por matar un^x04 Survivor", g_happytime ? get_pcvar_num(cvar_xpkilleds) * floatround(get_pcvar_float(cvar_hhdropxp) * 2) : get_pcvar_num(cvar_xpkilleds) * 2)
			}
			else
			{
			if (get_pcvar_num(cvar_xpkilleds))
			{
				
				if (g_happytime) g_experience[attacker] += get_pcvar_num(cvar_xpkilleds) * floatround(get_pcvar_float(cvar_hhdropxp))
                                     else g_experience[attacker] += get_pcvar_num(cvar_xpkilleds)
			}	
			if (g_experience[attacker] > 999999999)
			{
				g_experience[attacker] = 999999999
			}
			
			zp_colored_print(attacker, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por matar un^x04 Survivor", g_happytime ? get_pcvar_num(cvar_xpkilleds) * floatround(get_pcvar_float(cvar_hhdropxp)) : get_pcvar_num(cvar_xpkilleds))
			}
			
			complete(attacker)
			update_level(attacker)
		}
		else if (g_class[victim] == WESKER)
		{
			// Add kill
			g_killed[attacker][0][3]++
			
			if (g_killed[attacker][0][3] > 999999999)
			{
				g_killed[attacker][0][3] = 999999999
			}
			
			if (g_quest[attacker] == 7) g_questkill[attacker][6]++
		
			// Give experience
			if (is_user_admin(attacker))
			{
			if (get_pcvar_num(cvar_xpkilledw))
			{
				if (g_happytime) g_experience[attacker] += get_pcvar_num(cvar_xpkilledw) * floatround(get_pcvar_float(cvar_hhdropxp) * 2)
                                     else g_experience[attacker] += get_pcvar_num(cvar_xpkilledw) * 2
			}	
			if (g_experience[attacker] > 999999999)
			{
				g_experience[attacker] = 999999999
			}
			
			zp_colored_print(attacker, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por matar un^x04 Wesker", g_happytime ? get_pcvar_num(cvar_xpkilledw) * floatround(get_pcvar_float(cvar_hhdropxp) * 2) : get_pcvar_num(cvar_xpkilledw) * 2)
			}
			else
			{
			if (get_pcvar_num(cvar_xpkilledw))
			{
				if (g_happytime) g_experience[attacker] += get_pcvar_num(cvar_xpkilledw) * floatround(get_pcvar_float(cvar_hhdropxp))
                                     else g_experience[attacker] += get_pcvar_num(cvar_xpkilledw)
			}	
			if (g_experience[attacker] > 999999999)
			{
				g_experience[attacker] = 999999999
			}
			
			zp_colored_print(attacker, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por matar un^x04 Wesker", g_happytime ? get_pcvar_num(cvar_xpkilledw) * floatround(get_pcvar_float(cvar_hhdropxp)) : get_pcvar_num(cvar_xpkilledw))
			}
			
			complete(attacker)
			update_level(attacker)
		}
		else if (g_class[victim] == SNIPER)
		{
			// Add kill
			g_killed[attacker][0][4]++
			
			if (g_killed[attacker][0][4] > 999999999)
			{
				g_killed[attacker][0][4] = 999999999
			}
			
			if (g_quest[attacker] == 7) g_questkill[attacker][6]++
		
			// Give experience
			if (is_user_admin(attacker))
			{
			if (get_pcvar_num(cvar_xpkilledsn))
			{
				if (g_happytime) g_experience[attacker] += get_pcvar_num(cvar_xpkilledsn) * floatround(get_pcvar_float(cvar_hhdropxp) * 2)
                                     else g_experience[attacker] += get_pcvar_num(cvar_xpkilledsn) * 2
			}	
			if (g_experience[attacker] > 999999999)
			{
				g_experience[attacker] = 999999999
			}
			
			zp_colored_print(attacker, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por matar un^x04 Sniper", g_happytime ? get_pcvar_num(cvar_xpkilledsn) * floatround(get_pcvar_float(cvar_hhdropxp) * 2) : get_pcvar_num(cvar_xpkilledsn) * 2)
			}
			else
			{
			if (get_pcvar_num(cvar_xpkilledsn))
			{
				if (g_happytime) g_experience[attacker] += get_pcvar_num(cvar_xpkilledsn) * floatround(get_pcvar_float(cvar_hhdropxp))
                                     else g_experience[attacker] += get_pcvar_num(cvar_xpkilledsn)
			}	
			if (g_experience[attacker] > 999999999)
			{
				g_experience[attacker] = 999999999
			}
			
			zp_colored_print(attacker, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por matar un^x04 Sniper", g_happytime ? get_pcvar_num(cvar_xpkilledsn) * floatround(get_pcvar_float(cvar_hhdropxp)) : get_pcvar_num(cvar_xpkilledsn))
			}
			
			complete(attacker)
			update_level(attacker)
		}
		else if (g_class[victim] == PREDATOR)
		{		
			// Give experience
			if (is_user_admin(attacker))
			{
			if (get_pcvar_num(cvar_xpkilledp))
			{
				if (g_happytime) g_experience[attacker] += get_pcvar_num(cvar_xpkilledp) * floatround(get_pcvar_float(cvar_hhdropxp) * 2)
                                     else g_experience[attacker] += get_pcvar_num(cvar_xpkilledp) * 2
			}	
			if (g_experience[attacker] > 999999999)
			{
				g_experience[attacker] = 999999999
			}
			
			zp_colored_print(attacker, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por matar un^x04 Predator", g_happytime ? get_pcvar_num(cvar_xpkilledp) * floatround(get_pcvar_float(cvar_hhdropxp) * 2) : get_pcvar_num(cvar_xpkilledp) * 2)
			}
			else
			{
			if (get_pcvar_num(cvar_xpkilledp))
			{
				if (g_happytime) g_experience[attacker] += get_pcvar_num(cvar_xpkilledp) * floatround(get_pcvar_float(cvar_hhdropxp))
                                     else g_experience[attacker] += get_pcvar_num(cvar_xpkilledp)
			}	
			if (g_experience[attacker] > 999999999)
			{
				g_experience[attacker] = 999999999
			}
			
			zp_colored_print(attacker, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por matar un^x04 Predator", g_happytime ? get_pcvar_num(cvar_xpkilledp) * floatround(get_pcvar_float(cvar_hhdropxp)) : get_pcvar_num(cvar_xpkilledp))
			}
			
			complete(attacker)
			update_level(attacker)	
		}
		else if (g_class[victim] == ANGEL)
		{		
			// Give experience
			if (is_user_admin(attacker))
			{
			if (get_pcvar_num(cvar_xpkilledan))
			{
				if (g_happytime) g_experience[attacker] += get_pcvar_num(cvar_xpkilledan) * floatround(get_pcvar_float(cvar_hhdropxp) * 2)
                                     else g_experience[attacker] += get_pcvar_num(cvar_xpkilledp) * 2
			}	
			if (g_experience[attacker] > 999999999)
			{
				g_experience[attacker] = 999999999
			}
			
			zp_colored_print(attacker, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por matar un^x04 Angel", g_happytime ? get_pcvar_num(cvar_xpkilledan) * floatround(get_pcvar_float(cvar_hhdropxp) * 2) : get_pcvar_num(cvar_xpkilledan) * 2)
			}
			else
			{
			if (get_pcvar_num(cvar_xpkilledan))
			{
				if (g_happytime) g_experience[attacker] += get_pcvar_num(cvar_xpkilledan) * floatround(get_pcvar_float(cvar_hhdropxp))
                                     else g_experience[attacker] += get_pcvar_num(cvar_xpkilledan)
			}	
			if (g_experience[attacker] > 999999999)
			{
				g_experience[attacker] = 999999999
			}
			
			zp_colored_print(attacker, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por matar un^x04 Angel", g_happytime ? get_pcvar_num(cvar_xpkilledan) * floatround(get_pcvar_float(cvar_hhdropxp)) : get_pcvar_num(cvar_xpkilledan))
			}
			
			complete(attacker)
			update_level(attacker)		
		}
		else
		{
			// Add kill
			g_killed[attacker][0][0]++
			
			if (g_killed[attacker][0][0] > 999999999)
			{
				g_killed[attacker][0][0] = 999999999
			}
			
			if (g_quest[attacker] == 3) g_questkill[attacker][2]++
		
			// Give experience
			if (is_user_admin(attacker))
			{
			if (get_pcvar_num(cvar_xpkilledh))
			{
			         if (g_happytime) g_experience[attacker] += get_pcvar_num(cvar_xpkilledh) * floatround(get_pcvar_float(cvar_hhdropxp) * 2)
                                     else g_experience[attacker] += get_pcvar_num(cvar_xpkilledh) * 2
			}	
			if (g_experience[attacker] > 999999999)
			{
				g_experience[attacker] = 999999999
			}
			
			zp_colored_print(attacker, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por matar un^x04 Humano", g_happytime ? get_pcvar_num(cvar_xpkilledh) * floatround(get_pcvar_float(cvar_hhdropxp) * 2) : get_pcvar_num(cvar_xpkilledh) * 2)
			}
			else
			{
			if (get_pcvar_num(cvar_xpkilledh))
			{
			         if (g_happytime) g_experience[attacker] += get_pcvar_num(cvar_xpkilledh) * floatround(get_pcvar_float(cvar_hhdropxp))
                                     else g_experience[attacker] += get_pcvar_num(cvar_xpkilledh)
			}	
			if (g_experience[attacker] > 999999999)
			{
				g_experience[attacker] = 999999999
			}
			
			zp_colored_print(attacker, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por matar un^x04 Humano", g_happytime ? get_pcvar_num(cvar_xpkilledh) * floatround(get_pcvar_float(cvar_hhdropxp)) : get_pcvar_num(cvar_xpkilledh))
			}
			
			g_ammopacks[attacker][0] += 1
			
			if (g_ammopacks[attacker][0] > 999999999)
			{
				g_ammopacks[attacker][0] = 999999999
			}
			
			complete(attacker)
			update_level(attacker)
		}
	}
}

// Ham Player Killed Post Forward
public fw_PlayerKilled_Post(victim, attacker, shouldgib)
{
	// Last Check
	fnCheckLast()
	
	// Determine whether the player killed himself
	static selfkill
	selfkill = (victim == attacker || !is_user_valid_connected(attacker)) ? true : false
	
	// Respawn if deathmatch is enabled
	if (get_pcvar_num(cvar_deathmatch))
	{
		// Respawn on suicide?
		if (selfkill && !get_pcvar_num(cvar_respawnonsuicide))
			return;
		
		// Respawn if human/zombie/nemesis/alien/survivor/wesker?
		if (((g_class[victim] >= ZOMBIE && g_class[victim] < NEMESIS) && !get_pcvar_num(cvar_respawnzomb)) || (g_class[victim] <= LAST_HUMAN && !get_pcvar_num(cvar_respawnhum)) 
		|| (g_class[victim] >= NEMESIS && !get_pcvar_num(cvar_respawnnemali)) || ((g_class[victim] == SURVIVOR || g_class[victim] == WESKER) && !get_pcvar_num(cvar_respawnsurvwesk)))
			return;
		
		// Set the respawn task
		set_task(get_pcvar_float(cvar_spawndelay), "respawn_player_task", victim+TASK_SPAWN)
	}
}

// Ham Take Damage Forward
public fw_TakeDamage(victim, inflictor, attacker, Float:damage, damage_type)
{
	// Non-player damage or self damage
	if (victim == attacker || !is_user_valid_connected(attacker))
		return HAM_IGNORED;
	
	// New round starting or round ended
	if (g_newround || g_endround || g_final)
		return HAM_SUPERCEDE;
	
	// Victim shouldn't take damage or victim is frozen
	if (g_nodamage[victim] || g_frozen[victim] && !get_pcvar_num(cvar_frozendamage))
		return HAM_SUPERCEDE;
	
	// Prevent friendly fire
	if (g_class[attacker] >= ZOMBIE && g_class[victim] >= ZOMBIE)
		return HAM_SUPERCEDE;
	
	// Attacker is human...
	if (g_class[attacker] < ZOMBIE)
	{
		// Special AWP
		if (g_currentweapon[attacker] == CSW_AWP && g_class[attacker] < SURVIVOR)
		{
			switch (g_specialawp[attacker])
			{
				// Freezer AWP
				case 1: freeze_player(victim, 1)
				// Burner AWP
				case 2: burn_player(victim, 1)
				// Thunderer AWP
				case 3: thunderer_awp(victim)
			}
		}
		
		// Survivor/Wesker/Special M249/Special Deagle
		if (g_class[attacker] >= SURVIVOR || g_currentweapon[attacker] == CSW_MP5NAVY && g_superm249[attacker] || g_currentweapon[attacker] == CSW_M4A1 && g_superdeagle[attacker] || g_currentweapon[attacker] == CSW_AWP && g_superawp[attacker])
		{
			if (g_class[victim] >= NEMESIS)
				SetHamParamFloat(4, damage * 2)
			else	
				SetHamParamFloat(4, damage * 0.75 * (ammount_hdamage(g_level[attacker]) + 1))
		}
		else // Human
		{
			if (g_categoryb[attacker])
				if (g_class[victim] >= NEMESIS)
					SetHamParamFloat(4, damage * 1 * (ammount_hdamage(g_level[attacker]) + 1))
				else	
					SetHamParamFloat(4, damage * 0.75 * (ammount_hdamage(g_level[attacker]) + 1))
			else 
				if (g_class[victim] >= NEMESIS)
					SetHamParamFloat(4, damage * 1 * (ammount_hdamage(g_level[attacker]) + 1))
				else	
					SetHamParamFloat(4, damage * 0.75 * (ammount_hdamage(g_level[attacker]) + 1))
		}
		
		// Reward ammo packs
		if (g_class[attacker] < SURVIVOR || g_class[attacker] == SURVIVOR && !get_pcvar_num(cvar_survignoreammo) || g_class[attacker] == WESKER && !get_pcvar_num(cvar_weskignoreammo) || g_class[attacker] == SNIPER && !get_pcvar_num(cvar_snipignoreammo) || g_class[attacker] == PREDATOR && !get_pcvar_num(cvar_predignoreammo) || g_class[attacker] == ANGEL && !get_pcvar_num(cvar_angignoreammo))
		{	
			if (g_class[victim] == HUMAN || g_class[victim] == SURVIVOR || g_class[victim] == WESKER || g_class[victim] == SNIPER || g_class[victim] == PREDATOR || g_class[victim] == ANGEL)
			         return HAM_SUPERCEDE;
			
			// Almacenamos daño por combo
			if (g_class[attacker] == SURVIVOR)
			{
				if (g_class[victim] >= NEMESIS)
					g_damagedealt[attacker] += floatround(damage * 2)
				else
					g_damagedealt[attacker] += floatround(damage * 0.75 * (ammount_hdamage(g_level[attacker]) + 1))
					
				if (g_class[victim] >= NEMESIS)
					g_damagecombo[attacker] += floatround(damage * 2)
				else
					g_damagecombo[attacker] += floatround(damage * 0.75 * (ammount_hdamage(g_level[attacker]) + 1))
			}
			else
			{
				if (g_class[victim] >= NEMESIS)
					g_damagedealt[attacker] += floatround(damage * 1 * (ammount_hdamage(g_level[attacker]) + 1))
				else
					g_damagedealt[attacker] += floatround(damage * 0.75 * (ammount_hdamage(g_level[attacker]) + 1))
					
				if (g_class[victim] >= NEMESIS)
					g_damagecombo[attacker] += floatround(damage * 1 * (ammount_hdamage(g_level[attacker]) + 1))
				else
					g_damagecombo[attacker] += floatround(damage * 0.75 * (ammount_hdamage(g_level[attacker]) + 1))
			}
			
			g_damagehits[attacker]++
			
			show_current_combo(attacker, floatround(damage))
			
			while (g_damagecombo[attacker] >= ammount_damage(g_combo[attacker]))
			{
				if (g_quest[attacker] == 6) g_questkill[attacker][5]++
				g_combo[attacker]++
					
				formatex(g_info_combo[attacker], 63, "Combo %d completado!", g_combo[attacker])
					
				remove_task(attacker+TASK_INFO_COMBO)
				set_task(3.0, "info_combo", attacker+TASK_INFO_COMBO)
			}
				
			remove_task(attacker+TASK_FINISH_COMBO)
			set_task(3.0, "finish_combo", attacker+TASK_FINISH_COMBO)	
			
			// Reward ammo packs for every [ammo damage] dealt
			while (g_damagedealt[attacker] > get_pcvar_num(cvar_ammodamage))
			{
				if (g_quest[attacker] == 5) g_questkill[attacker][4]++
				
				g_ammopacks[attacker][0]++
				
				if (g_ammopacks[attacker][0] > 999999999)
				{
					g_ammopacks[attacker][0] = 999999999
				}
				
				g_damagedealt[attacker] -= get_pcvar_num(cvar_ammodamage)
				
				complete(attacker)
				update_level(attacker)					                          
			}
		}	
		
		// Replace damage done by Sniper's weapon with the one set by the cvar
		if (g_class[attacker] == SNIPER && g_currentweapon[attacker] == CSW_AWP)
		         if (g_class[victim] >= NEMESIS)
				SetHamParamFloat(4, get_pcvar_float(cvar_snipdamage) * 2)
			else	
				SetHamParamFloat(4, get_pcvar_float(cvar_snipdamage) * (ammount_hdamage(g_level[attacker]) + 1))
				
		// Replace damage done by Sniper's weapon with the one set by the cvar
		if (g_class[attacker] == ANGEL && g_currentweapon[attacker] == CSW_KNIFE)
				SetHamParamFloat(4, get_pcvar_float(cvar_angdamage))		
		
		return HAM_IGNORED;
	}
	
	// Attacker is zombie...
	
	// Prevent infection/damage by HE grenade (bugfix)
	if (damage_type & DMG_HEGRENADE) return HAM_SUPERCEDE;
	
	// Nemesis?
	if (g_class[attacker] == NEMESIS)
	{
		// Ignore nemesis damage override if damage comes from a 3rd party entity
		// (to prevent this from affecting a sub-plugin's rockets e.g.)
		if (inflictor == attacker)
		{
			// Set nemesis damage
			SetHamParamFloat(4, get_pcvar_float(cvar_nemdamage))
		}
		
		return HAM_IGNORED;
	}
	// Alien?
	else if (g_class[attacker] == ALIEN)
	{
		// Ignore alien damage override if damage comes from a 3rd party entity
		// (to prevent this from affecting a sub-plugin's rockets e.g.)
		if (inflictor == attacker)
		{
			// Set alien damage
			SetHamParamFloat(4, get_pcvar_float(cvar_alidamage))
		}
		
		return HAM_IGNORED;
	}
	// Assassin?
	else if (g_class[attacker] == ASSASSIN)
	{
		// Ignore alien damage override if damage comes from a 3rd party entity
		// (to prevent this from affecting a sub-plugin's rockets e.g.)
		if (inflictor == attacker)
		{
			// Set alien damage
			SetHamParamFloat(4, get_pcvar_float(cvar_assdamage))
		}
		
		return HAM_IGNORED;
	}
	// Demon?
	else if (g_class[attacker] == DEMON)
	{
		// Ignore alien damage override if damage comes from a 3rd party entity
		// (to prevent this from affecting a sub-plugin's rockets e.g.)
		if (inflictor == attacker)
		{
			// Set alien damage
			SetHamParamFloat(4, get_pcvar_float(cvar_demdamage))
		}
		
		return HAM_IGNORED;
	}
	// Normal zombie
	else
	{
		// Ignore zombie damage override if damage comes from a 3rd party entity
		// (to prevent this from affecting a sub-plugin's rockets e.g.)
		if (inflictor == attacker)
		{
			// Set zombie damage
			SetHamParamFloat(4, damage * 1)
		}
	}
	
	// Last human or not an infection round
	if (g_currentmode > MODE_MULTI || fnGetHumans() == 1)
		return HAM_IGNORED; // human is killed
	
	// Does human armor need to be reduced before infecting?
	if (get_pcvar_num(cvar_humanarmor))
	{
		// Get victim armor
		static Float:armor
		pev(victim, pev_armorvalue, armor)
		
		// If he has some, block the infection and reduce armor instead
		if (armor > 0.0)
		{
			emit_sound(victim, CHAN_BODY, sound_armorhit, 1.0, ATTN_NORM, 0, PITCH_NORM)
			if (armor - damage > 0.0)
				set_pev(victim, pev_armorvalue, armor - damage)
			else
				cs_set_user_armor(victim, 0, CS_ARMOR_NONE)
			return HAM_SUPERCEDE;
		}
	}
	
	// Infection allowed
	zombieme(victim, attacker, 0, 0, 1) // turn into zombie
	
	g_infected[attacker][0]++
	
	if (g_infected[attacker][0] > 999999999)
	{
	g_infected[attacker][0] = 999999999
	}
	
	return HAM_SUPERCEDE;
}

// Ham Take Damage Post Forward
public fw_TakeDamage_Post(victim)
{
	// --- Check if victim should be Pain Shock Free ---
	
	// Check if proper CVARs are enabled
	if (g_class[victim] >= ZOMBIE)
	{
		if (g_class[victim] == NEMESIS)
		{
			if (!get_pcvar_num(cvar_nempainfree)) return;
		}
		else if (g_class[victim] == ALIEN)
		{
			if (!get_pcvar_num(cvar_alipainfree)) return;
		}
		else if (g_class[victim] == ASSASSIN)
		{
			if (!get_pcvar_num(cvar_asspainfree)) return;
		}
		else if (g_class[victim] == DEMON)
		{
			if (!get_pcvar_num(cvar_dempainfree)) return;
		}
		else
		{
			switch (get_pcvar_num(cvar_zombiepainfree))
			{
				case 0: return;
				case 2: if (g_class[victim] != LAST_ZOMBIE) return;
				case 3: if (g_class[victim] != FIRST_ZOMBIE) return;
			}
		}
	}
	else
	{
		if (g_class[victim] == SURVIVOR)
		{
			if (!get_pcvar_num(cvar_survpainfree)) return;
		}
		else if (g_class[victim] == WESKER)
		{
			if (!get_pcvar_num(cvar_weskpainfree)) return;
		}
		else if (g_class[victim] == SNIPER)
		{
			if (!get_pcvar_num(cvar_snippainfree)) return;
		}
		else if (g_class[victim] == PREDATOR)
		{
			if (!get_pcvar_num(cvar_predpainfree)) return;
		}
		else if (g_class[victim] == ANGEL)
		{
			if (!get_pcvar_num(cvar_angpainfree)) return;
		}
		else return;
	}
	
	// Prevent server crash if entity's private data not initalized
	if (pev_valid(victim) != PDATA_SAFE) return;
	
	// Set pain shock free offset
	set_pdata_float(victim, OFFSET_PAINSHOCK, 1.0, OFFSET_LINUX)
}



// Ham Trace Attack Forward
public fw_TraceAttack(victim, attacker, Float:damage, Float:direction[3], tracehandle, damage_type)
{
	// Non-player damage or self damage
	if (victim == attacker || !is_user_valid_connected(attacker))
		return HAM_IGNORED;
	
	// New round starting or round ended
	if (g_newround || g_endround || g_final)
		return HAM_SUPERCEDE;
	
	// Victim shouldn't take damage or victim is frozen
	if (g_nodamage[victim] || g_frozen[victim] && !get_pcvar_num(cvar_frozendamage))
		return HAM_SUPERCEDE;
	
	// Prevent friendly fire
	if (g_class[attacker] >= ZOMBIE && g_class[victim] >= ZOMBIE)
		return HAM_SUPERCEDE;
	
	// Victim isn't a zombie or not bullet damage, nothing else to do here
	if (g_class[victim] < ZOMBIE || !(damage_type & DMG_BULLET))
		return HAM_IGNORED;
	
	// If zombie hitzones are enabled, check whether we hit an allowed one
	if (get_pcvar_num(cvar_hitzones) && g_class[victim] < NEMESIS && !(get_pcvar_num(cvar_hitzones) & (1<<get_tr2(tracehandle, TR_iHitgroup))))
		return HAM_SUPERCEDE;
	
	// Knockback disabled, nothing else to do here
	if (!get_pcvar_num(cvar_knockback))
		return HAM_IGNORED;
	
	// Nemesis knockback disabled, nothing else to do here
	if (g_class[victim] == NEMESIS && get_pcvar_float(cvar_nemknockback) == 0.0)
		return HAM_IGNORED;
		
	// Alien knockback disabled, nothing else to do here
	if (g_class[victim] == ALIEN && get_pcvar_float(cvar_aliknockback) == 0.0)
		return HAM_IGNORED;
	
	// Alien knockback disabled, nothing else to do here
	if (g_class[victim] == ASSASSIN && get_pcvar_float(cvar_assknockback) == 0.0)
		return HAM_IGNORED;
	
	if (g_class[victim] == DEMON && get_pcvar_float(cvar_demknockback) == 0.0)
		return HAM_IGNORED;
	
	// Get whether the victim is in a crouch state
	static ducking
	ducking = pev(victim, pev_flags) & (FL_DUCKING | FL_ONGROUND) == (FL_DUCKING | FL_ONGROUND)
	
	// Zombie knockback when ducking disabled
	if (ducking && get_pcvar_float(cvar_knockbackducking) == 0.0)
		return HAM_IGNORED;
	
	// Get distance between players
	static origin1[3], origin2[3]
	get_user_origin(victim, origin1)
	get_user_origin(attacker, origin2)
	
	// Max distance exceeded
	if (get_distance(origin1, origin2) > get_pcvar_num(cvar_knockbackdist))
		return HAM_IGNORED;
	
	// Get victim's velocity
	static Float:velocity[3]
	pev(victim, pev_velocity, velocity)
	
	// Use damage on knockback calculation
	if (get_pcvar_num(cvar_knockbackdamage))
		xs_vec_mul_scalar(direction, damage, direction)
	
	// Use weapon power on knockback calculation
	if (get_pcvar_num(cvar_knockbackpower) && kb_weapon_power[g_currentweapon[attacker]] > 0.0)
		xs_vec_mul_scalar(direction, kb_weapon_power[g_currentweapon[attacker]], direction)
	
	// Apply ducking knockback multiplier
	if (ducking) xs_vec_mul_scalar(direction, get_pcvar_float(cvar_knockbackducking), direction)
	
	// Apply zombie class/nemesis/alien knockback multiplier
	if (g_class[victim] == NEMESIS)
		xs_vec_mul_scalar(direction, get_pcvar_float(cvar_nemknockback), direction)
	else if (g_class[victim] == ALIEN)
		xs_vec_mul_scalar(direction, get_pcvar_float(cvar_aliknockback), direction)
	else if (g_class[victim] == ASSASSIN)
		xs_vec_mul_scalar(direction, get_pcvar_float(cvar_assknockback), direction)
	else if (g_class[victim] == DEMON)
		xs_vec_mul_scalar(direction, get_pcvar_float(cvar_demknockback), direction)	
	else
		xs_vec_mul_scalar(direction, g_zombie_knockback[victim], direction)
	
	// Add up the new vector
	xs_vec_add(velocity, direction, direction)
	
	// Should knockback also affect vertical velocity?
	if (!get_pcvar_num(cvar_knockbackzvel)) direction[2] = velocity[2]
	
	// Set the knockback'd victim's velocity
	set_pev(victim, pev_velocity, direction)
	
	return HAM_IGNORED;
}

public fw_TraceAttack2(iEnt, iAttacker, Float:flDamage, Float:fDir[3], ptr, iDamageType)
{	
	if(!is_user_alive(iAttacker) || zp_get_user_zombie(iAttacker) || zp_get_user_angel(iAttacker))
		return

	if(get_user_weapon(iAttacker) != CSW_KNIFE)
		return
	
	if(g_knifes[iAttacker] == 0)
	SetHamParamFloat(3, flDamage * 1.0)
	else if(g_knifes[iAttacker] == 1)
	SetHamParamFloat(3, flDamage * 1.2)
	else if(g_knifes[iAttacker] == 2)
	SetHamParamFloat(3, flDamage * 1.4)
	else if(g_knifes[iAttacker] == 3)
	SetHamParamFloat(3, flDamage * 1.6)
	else if(g_knifes[iAttacker] == 4)
	SetHamParamFloat(3, flDamage * 1.8)
	else if(g_knifes[iAttacker] == 5)
	SetHamParamFloat(3, flDamage * 2.0)
	else if(g_knifes[iAttacker] == 6)
	SetHamParamFloat(3, flDamage * 2.2)
	else if(g_knifes[iAttacker] == 7)
	SetHamParamFloat(3, flDamage * 2.4)
	else if(g_knifes[iAttacker] == 8)
	SetHamParamFloat(3, flDamage * 2.6)
	else if(g_knifes[iAttacker] == 9)
	SetHamParamFloat(3, flDamage * 2.8)
	else if(g_knifes[iAttacker] == 10)
	SetHamParamFloat(3, flDamage * 3.0)
	else if(g_knifes[iAttacker] == 11)
	SetHamParamFloat(3, flDamage * 3.0)
}

// Ham Reset MaxSpeed Post Forward
public fw_ResetMaxSpeed_Post(id)
{
	// Freezetime active or player not alive
	if (g_freezetime || !g_isalive[id]) return;
	
	set_player_maxspeed(id)
}

// Ham Use Stationary Gun Forward
public fw_UseStationary(entity, caller, activator, use_type)
{
	// Prevent zombies from using stationary guns
	if (use_type == USE_USING && is_user_valid_connected(caller) && g_class[caller] >= ZOMBIE)
		return HAM_SUPERCEDE;
	
	return HAM_IGNORED;
}

// Ham Use Stationary Gun Post Forward
public fw_UseStationary_Post(entity, caller, activator, use_type)
{
	// Someone stopped using a stationary gun
	if (use_type == USE_STOPPED && is_user_valid_connected(caller))
		replace_weapon_models(caller, g_currentweapon[caller]) // replace weapon models (bugfix)
}

// Ham Use Pushable Forward
public fw_UsePushable()
{
	// Prevent speed bug with pushables?
	if (get_pcvar_num(cvar_blockpushables)) return HAM_SUPERCEDE;
	
	return HAM_IGNORED;
}

// Ham Weapon Pickup Forward
public fw_AddPlayerItem(id, weapon_ent)
{
	// HACK: Retrieve our custom extra ammo from the weapon
	static extra_ammo; extra_ammo = pev(weapon_ent, PEV_ADDITIONAL_AMMO)
	
	// If present
	if (extra_ammo)
	{
		// Get weapon's id
		static weaponid; weaponid = cs_get_weapon_id(weapon_ent)
		
		// Add to player's bpammo
		ExecuteHamB(Ham_GiveAmmo, id, extra_ammo, AMMOTYPE[weaponid], MAXBPAMMO[weaponid])
		set_pev(weapon_ent, PEV_ADDITIONAL_AMMO, 0)
	}
}

// Ham Weapon Deploy Forward
public fw_Item_Deploy_Post(weapon_ent)
{
	// Get weapon's owner
	static owner; owner = fm_cs_get_weapon_ent_owner(weapon_ent)
	
	// Valid owner?
	if (!pev_valid(owner)) return;
	
	// Get weapon's id
	static weaponid; weaponid = cs_get_weapon_id(weapon_ent)
	
	// Store current weapon's id for reference
	g_currentweapon[owner] = weaponid
	
	// Replace weapon models with custom ones
	replace_weapon_models(owner, weaponid)
	
	// Zombie not holding an allowed weapon for some reason
	if (g_class[owner] >= ZOMBIE && !((1<<weaponid) & ZOMBIE_ALLOWED_WEAPONS_BITSUM))
	{
		// Switch to knife
		g_currentweapon[owner] = CSW_KNIFE
		engclient_cmd(owner, "weapon_knife")
	}
}

// WeaponMod bugfix
//forward wpn_gi_reset_weapon(id);
public wpn_gi_reset_weapon(id)
{
	// Replace knife model
	replace_weapon_models(id, CSW_KNIFE)
}

// Client joins the game
public client_putinserver(id)
{
	// Plugin disabled?
	if (!g_pluginenabled) return;
	
	// Player joined
	g_isconnected[id] = true
	
	// Cache player's name
	get_user_name(id, g_playername[id], charsmax(g_playername[]))
	
	// Initialize player vars
	reset_vars(id, 1, 0)
	
	// Set some tasks for non-bots
	if (!is_user_bot(id))
	{
		// Disable minmodels for clients to see zombies properly
		set_task(5.0, "disable_minmodels", id)
		
		// Character names
		for (new i = 0; i < 1; i++) g_charactername[id][i] = "None"
		
		// Reset attempts to logging
		g_attempts[id] = g_attemptslogging
	}
	else
	{
		// Set bot flag
		g_isbot[id] = true
		
		// Set human class for bot
		set_task(0.1, "show_menu_hclass", id)
	}
}

// Client disconnects
public client_disconnect(id)
{
	// Plugin disabled?
	if (!g_pluginenabled) return;
	
	if(g_PartyData[id][In_Party])
	         g_PartyData[id][Position] ? g_PartyData[id][Amount_In_Party] == 2 ? destoy_party(id) : remove_party_user(id) : destoy_party(id)
		 
	g_PartyData[id][UserName][0] = 0
	g_PartyData[id][Block_Party] = false
	
	// Save progress
	Save(id)
}

// Client leaving
public fw_ClientDisconnect(id)
{
	// Check that we still have both humans and zombies to keep the round going
	if (g_isalive[id]) check_round(id)
	
	// Remove previous tasks
	remove_task(id+TASK_TEAM)
	remove_task(id+TASK_FLASH)
	remove_task(id+TASK_CHARGE)
	remove_task(id+TASK_SPAWN)
	remove_task(id+TASK_BLOOD)
	remove_task(id+TASK_AURA)
	remove_task(id+TASK_BURN)
	remove_task(id+TASK_NVISION)
	remove_task(id+TASK_SHOWHUD)
	remove_task(id+TASK_TIME)
	remove_task(id+TASK_COMBO)
	remove_task(id+TASK_INFO_COMBO) // remueve el task del combo
	remove_task(id+TASK_FINISH_COMBO) // remueve el task que indica que finalizó el combo
	remove_task(id+TASK_RESET_COMBO) // remueve el combo & lo reinicia
	
	// Prevent admin log out, loggin and get full modes again
	g_logoutname[id] = ""
	
	// Reset account vars
	user_id[id][0] = ""
	user_id[id][1] = ""
	user_password[id][0] = ""
	user_password[id][1] = ""
	g_status[id] = OFFLINE
	
	// Player left, clear cached flags
	g_isconnected[id] = g_isbot[id] = g_isalive[id] = false
}

// Client left
public fw_ClientDisconnect_Post()
{
	// Last Check
	fnCheckLast()
}

// Client Kill Forward
public fw_ClientKill()
{
	// Prevent players from killing themselves?
	if (get_pcvar_num(cvar_blocksuicide)) return FMRES_SUPERCEDE;
	
	return FMRES_IGNORED;
}

// Emit Sound Forward
public fw_EmitSound(id, channel, const sample[], Float:volume, Float:attn, flags, pitch)
{
	// Block all those unneeeded hostage sounds
	if (sample[0] == 'h' && sample[1] == 'o' && sample[2] == 's' && sample[3] == 't' && sample[4] == 'a' && sample[5] == 'g' && sample[6] == 'e')
		return FMRES_SUPERCEDE;
	
	// Replace these next sounds for zombies only
	if (!is_user_valid_connected(id) || g_class[id] < ZOMBIE)
		return FMRES_IGNORED;
	
	static sound[64]
	
	// Zombie being hit
	if (sample[7] == 'b' && sample[8] == 'h' && sample[9] == 'i' && sample[10] == 't')
	{
		if (g_class[id] >= NEMESIS)
			ArrayGetString(nemali_pain, random_num(0, ArraySize(nemali_pain) - 1), sound, charsmax(sound))
		else
			ArrayGetString(zombie_pain, random_num(0, ArraySize(zombie_pain) - 1), sound, charsmax(sound))
		emit_sound(id, channel, sound, volume, attn, flags, pitch)
		return FMRES_SUPERCEDE;
	}
	
	// Zombie attacks with knife
	if (sample[8] == 'k' && sample[9] == 'n' && sample[10] == 'i')
	{
		if (sample[14] == 's' && sample[15] == 'l' && sample[16] == 'a') // slash
		{
			ArrayGetString(zombie_miss_slash, random_num(0, ArraySize(zombie_miss_slash) - 1), sound, charsmax(sound))
			emit_sound(id, channel, sound, volume, attn, flags, pitch)
			return FMRES_SUPERCEDE;
		}
		if (sample[14] == 'h' && sample[15] == 'i' && sample[16] == 't') // hit
		{
			if (sample[17] == 'w') // wall
			{
				ArrayGetString(zombie_miss_wall, random_num(0, ArraySize(zombie_miss_wall) - 1), sound, charsmax(sound))
				emit_sound(id, channel, sound, volume, attn, flags, pitch)
				return FMRES_SUPERCEDE;
			}
			else
			{
				ArrayGetString(zombie_hit_normal, random_num(0, ArraySize(zombie_hit_normal) - 1), sound, charsmax(sound))
				emit_sound(id, channel, sound, volume, attn, flags, pitch)
				return FMRES_SUPERCEDE;
			}
		}
		if (sample[14] == 's' && sample[15] == 't' && sample[16] == 'a') // stab
		{
			ArrayGetString(zombie_hit_stab, random_num(0, ArraySize(zombie_hit_stab) - 1), sound, charsmax(sound))
			emit_sound(id, channel, sound, volume, attn, flags, pitch)
			return FMRES_SUPERCEDE;
		}
	}
	
	// Zombie dies
	if (sample[7] == 'd' && ((sample[8] == 'i' && sample[9] == 'e') || (sample[8] == 'e' && sample[9] == 'a')))
	{
		ArrayGetString(zombie_die, random_num(0, ArraySize(zombie_die) - 1), sound, charsmax(sound))
		emit_sound(id, channel, sound, volume, attn, flags, pitch)
		return FMRES_SUPERCEDE;
	}
	
	// Zombie falls off
	if (sample[10] == 'f' && sample[11] == 'a' && sample[12] == 'l' && sample[13] == 'l')
	{
		ArrayGetString(zombie_fall, random_num(0, ArraySize(zombie_fall) - 1), sound, charsmax(sound))
		emit_sound(id, channel, sound, volume, attn, flags, pitch)
		return FMRES_SUPERCEDE;
	}
	
	return FMRES_IGNORED;
}

// Forward Client User Info Changed -prevent players from changing name-
public fw_ClientUserInfoChanged(id)
{
	// Connected?
	if (!g_isconnected[id]) return FMRES_IGNORED;
	
	// Get client name
	static newname[32], oldname[32]
	get_user_name(id, oldname, charsmax(oldname))
	get_user_info(id, "name", newname, charsmax(newname))
	
	// Same name?
	if (equal(newname, oldname)) return FMRES_IGNORED;
	
	// Already logged (character selected)
	if (g_status[id] >= ONLINE_SPEC)
	{
		// Put old name
		set_user_info(id, "name", oldname)
		zp_colored_print(id, "^x04[ZE]^x01 No puedes cambiar el nombre estando logueado.")
		return FMRES_IGNORED;
	}
	
	// Cache new player's name
	copy(g_playername[id], charsmax(g_playername[]), newname)
		
	return FMRES_SUPERCEDE;
}

// Forward Get Game Description
public fw_GetGameDescription()
{
	// Return the mod name so it can be easily identified
	forward_return(FMV_STRING, g_modname)
	
	return FMRES_SUPERCEDE;
}

// Forward Set Model
public fw_SetModel(entity, model[])
{
	// We don't care
	if (strlen(model) < 8)
		return FMRES_IGNORED;
	
	// Remove weapons?
	if (get_pcvar_float(cvar_removedropped) > 0.0)
	{
		// Get entity's classname
		static classname[10]
		pev(entity, pev_classname, classname, charsmax(classname))
		
		// Check if it's a weapon box
		if (equal(classname, "weaponbox"))
		{
			// They get automatically removed when thinking
			set_pev(entity, pev_nextthink, get_gametime() + get_pcvar_float(cvar_removedropped))
			return FMRES_IGNORED;
		}
	}
	
	// Narrow down our matches a bit
	if (model[7] != 'w' || model[8] != '_')
		return FMRES_IGNORED;
	
	// Get damage time of grenade
	static Float:dmgtime
	pev(entity, pev_dmgtime, dmgtime)
	
	// Grenade not yet thrown
	if (dmgtime == 0.0)
		return FMRES_IGNORED;
	
	// Get whether grenade's owner is a zombie
	if (g_class[pev(entity, pev_owner)] >= ZOMBIE)
	{
		if (model[9] == 'h' && model[10] == 'e' && get_pcvar_num(cvar_extrainfbomb)) // Infection Bomb
		{
			// Give it a glow
			set_rendering(entity, kRenderFxGlowShell, 0, 200, 0, kRenderNormal, 16);
			
			// And a colored trail
			message_begin(MSG_BROADCAST, SVC_TEMPENTITY)
			write_byte(TE_BEAMFOLLOW) // TE id
			write_short(entity) // entity
			write_short(g_trailSpr) // sprite
			write_byte(10) // life
			write_byte(10) // width
			write_byte(0) // r
			write_byte(200) // g
			write_byte(0) // b
			write_byte(200) // brightness
			message_end()
			
			// Set grenade type on the thrown grenade entity
			set_pev(entity, PEV_NADE_TYPE, NADE_TYPE_INFECTION)
			
			// set grenade model              
                        engfunc(EngFunc_SetModel, entity, model_wgrenade_infect)
                        return FMRES_SUPERCEDE;    
		}
	}
	else if (model[9] == 'h' && model[10] == 'e' && get_pcvar_num(cvar_firegrenades)) // Napalm Grenade
	{
		// Give it a glow
		set_rendering(entity, kRenderFxGlowShell, 255, 100, 0, kRenderNormal, 16);
		
		// And a colored trail
		message_begin(MSG_BROADCAST, SVC_TEMPENTITY)
		write_byte(TE_BEAMFOLLOW) // TE id
		write_short(entity) // entity
		write_short(g_trailSpr) // sprite
		write_byte(10) // life
		write_byte(10) // width
		write_byte(255) // r
		write_byte(100) // g
		write_byte(0) // b
		write_byte(200) // brightness
		message_end()
		
		// Set grenade type on the thrown grenade entity
		set_pev(entity, PEV_NADE_TYPE, NADE_TYPE_NAPALM)
		
		// set grenade model              
                  engfunc(EngFunc_SetModel, entity, model_wgrenade_fire)
                  return FMRES_SUPERCEDE; 
	}
	else if (model[9] == 'f' && model[10] == 'l' && get_pcvar_num(cvar_frostgrenades)) // Frost Grenade
	{
		// Give it a glow
		set_rendering(entity, kRenderFxGlowShell, 0, 100, 200, kRenderNormal, 16);
		
		// And a colored trail
		message_begin(MSG_BROADCAST, SVC_TEMPENTITY)
		write_byte(TE_BEAMFOLLOW) // TE id
		write_short(entity) // entity
		write_short(g_trailSpr) // sprite
		write_byte(10) // life
		write_byte(10) // width
		write_byte(0) // r
		write_byte(100) // g
		write_byte(200) // b
		write_byte(200) // brightness
		message_end()
		
		// Set grenade type on the thrown grenade entity
		set_pev(entity, PEV_NADE_TYPE, NADE_TYPE_FROST)
		
		// set grenade model              
                  engfunc(EngFunc_SetModel, entity, model_wgrenade_frost)
                  return FMRES_SUPERCEDE; 
	}
	else if (model[9] == 's' && model[10] == 'm' && g_smokegrenade[pev(entity, pev_owner)] == 0) // Aura shield
	{
		// Give it a glow
		set_rendering(entity, kRenderFxGlowShell, 200, 0, 0, kRenderNormal, 16);
		
		// And a colored trail
		message_begin(MSG_BROADCAST, SVC_TEMPENTITY)
		write_byte(TE_BEAMFOLLOW) // TE id
		write_short(entity) // entity
		write_short(g_trailSpr) // sprite
		write_byte(10) // life
		write_byte(10) // width
		write_byte(200) // r
		write_byte(0) // g
		write_byte(0) // b
		write_byte(200) // brightness
		message_end()
		
		// Set grenade type on the thrown grenade entity
		set_pev(entity, PEV_NADE_TYPE, NADE_TYPE_GAS)
		
		// set grenade model              
                  engfunc(EngFunc_SetModel, entity, model_wgrenade_gas)
                  return FMRES_SUPERCEDE; 
	}
	else if (model[9] == 's' && model[10] == 'm' && g_smokegrenade[pev(entity, pev_owner)] == 1)
	{
		g_smokegrenade[pev(entity, pev_owner)] = 0	
			
		// Give it a glow
		set_rendering(entity, kRenderFxGlowShell, 255, 255, 0, kRenderNormal, 16);
		
		// And a colored trail
		message_begin(MSG_BROADCAST, SVC_TEMPENTITY)
		write_byte(TE_BEAMFOLLOW) // TE id
		write_short(entity) // entity
		write_short(g_trailSpr) // sprite
		write_byte(10) // life
		write_byte(10) // width
		write_byte(255) // r
		write_byte(255) // g
		write_byte(0) // b
		write_byte(200) // brightness
		message_end()
		
		// Set grenade type on the thrown grenade entity
		set_pev(entity, PEV_NADE_TYPE, NADE_TYPE_ANTI)
		
		// set grenade model        
		entity_set_model(entity, model_wgrenade_aurashield)
		return FMRES_SUPERCEDE
	}
	
	return FMRES_IGNORED;
}

// Ham Grenade Think Forward
public fw_ThinkGrenade(entity)
{
	// Invalid entity
	if (!pev_valid(entity)) return HAM_IGNORED;
	
	// Get damage time of grenade
	static Float:dmgtime, Float:current_time
	pev(entity, pev_dmgtime, dmgtime)
	current_time = get_gametime()
	
	// Check if it's time to go off
	if (dmgtime > current_time) return HAM_IGNORED;
	
	// Check if it's one of our custom nades
	switch (pev(entity, PEV_NADE_TYPE))
	{
		case NADE_TYPE_INFECTION: // Infection Bomb
		{
			infection_explode(entity)
			return HAM_SUPERCEDE;
		}
		case NADE_TYPE_NAPALM: // Napalm Grenade
		{
			fire_explode(entity)
			return HAM_SUPERCEDE;
		}
		case NADE_TYPE_FROST: // Frost Grenade
		{
			frost_explode(entity)
			return HAM_SUPERCEDE;
		}
		case NADE_TYPE_GAS: // Gas Grenade
		{
			gas_explode(entity)
			return HAM_SUPERCEDE;
		}
		case NADE_TYPE_ANTI: // Aura Shield Grenade
		{
			aurashield_explode(entity)
			return HAM_SUPERCEDE;
		}
	}
	
	return HAM_IGNORED;
}

// Ham Weapon Touch Forward
public fw_TouchWeapon(weapon, id)
{
	// Not a player
	if (!is_user_valid_connected(id))
		return HAM_IGNORED;
	
	// Dont pickup weapons if zombie, survivor or sniper (+PODBot MM fix)
	if (g_class[id] >= ZOMBIE || g_class[id] >= NEMESIS || g_class[id] >= SURVIVOR)
		return HAM_SUPERCEDE;
	
	return HAM_IGNORED;
}

// Forward CmdStart
public fw_CmdStart(id, handle)
{
	// Not alive
	if (!g_isalive[id]) return;
	
	// Not normal human
	if (g_class[id] >= SURVIVOR) return;
	
	// Check if it's a flashlight impulse
	if (get_uc(handle, UC_Impulse) != IMPULSE_FLASHLIGHT) return;
	
	// Block it I say!
	set_uc(handle, UC_Impulse, 0)
	
	// Should human's custom flashlight be turned on?
	if (g_flashbattery[id] > 2 && get_gametime() - g_lastflashtime[id] > 1.2)
	{
		// Prevent calling flashlight too quickly (bugfix)
		g_lastflashtime[id] = get_gametime()
		
		// Toggle custom flashlight
		g_flashlight[id] = !(g_flashlight[id])
		
		// Play flashlight toggle sound
		emit_sound(id, CHAN_ITEM, sound_flashlight, 1.0, ATTN_NORM, 0, PITCH_NORM)
		
		// Update flashlight status on the HUD
		message_begin(MSG_ONE, g_msgFlashlight, _, id)
		write_byte(g_flashlight[id]) // toggle
		write_byte(g_flashbattery[id]) // battery
		message_end()
		
		// Remove previous tasks
		remove_task(id+TASK_CHARGE)
		remove_task(id+TASK_FLASH)
		
		// Set the flashlight charge task
		set_task(1.0, "flashlight_charge", id+TASK_CHARGE, _, _, "b")
		
		// Call our custom flashlight task if enabled
		if (g_flashlight[id]) set_task(0.1, "set_user_flashlight", id+TASK_FLASH, _, _, "b")
	}
}

// Forward Player PreThink
public fw_PlayerPreThink(id)
{
	// Not alive
	if (!g_isalive[id]) return;
	
	// Enable custom buyzone for player during buytime, unless zombie or survivor or time expired
	if (g_cached_buytime > 0.0 && g_class[id] < SURVIVOR && (get_gametime() < g_buytime[id] + g_cached_buytime) && pev_valid(g_buyzone_ent))
		dllfunc(DLLFunc_Touch, g_buyzone_ent, id)
	
	// Silent footsteps for zombies?
	if (g_cached_zombiesilent && (g_class[id] >= ZOMBIE && g_class[id] < NEMESIS))
		set_pev(id, pev_flTimeStepSound, STEPTIME_SILENT)
	
	// Player frozen?
	if (g_frozen[id])
	{
		set_pev(id, pev_velocity, Float:{0.0,0.0,0.0}) // stop motion
		return; // shouldn't leap while frozen
	}
	
	// --- Check if player should leap ---
	
	// Don't allow leap during freezetime
	if (g_freezetime) return;
	
	// Not zombie
	if (g_class[id] < ZOMBIE) return;
	
	// Check if proper CVARs are enabled and retrieve leap settings
	static Float:cooldown, Float:current_time
	if (g_class[id] == NEMESIS)
	{
		if (!g_cached_leapnemesis) return;
		cooldown = g_cached_leapnemesiscooldown
	}
	else if (g_class[id] == ALIEN)
	{
		if (!g_cached_leapalien) return;
		cooldown = g_cached_leapaliencooldown
	}
	else
	{
		switch (g_cached_leapzombies)
		{
			case 0: return;
			case 2: if (g_class[id] != FIRST_ZOMBIE) return;
			case 3: if (g_class[id] != LAST_ZOMBIE) return;
		}
		cooldown = g_cached_leapzombiescooldown
	}
	
	current_time = get_gametime()
	
	// Cooldown not over yet
	if (current_time - g_lastleaptime[id] < cooldown) return;
	
	// Not doing a longjump (don't perform check for bots, they leap automatically)
	if (!(pev(id, pev_button) & (IN_JUMP | IN_DUCK) == (IN_JUMP | IN_DUCK)))
		return;
	
	// Not on ground or not enough speed
	if (!(pev(id, pev_flags) & FL_ONGROUND) || get_speed(id) < 80)
		return;
	
	static Float:velocity[3]
	
	// Make velocity vector
	velocity_by_aim(id, g_class[id] == NEMESIS ? get_pcvar_num(cvar_leapnemesisforce) : g_class[id] == ALIEN ? get_pcvar_num(cvar_leapalienforce) : get_pcvar_num(cvar_leapzombiesforce), velocity)
	
	// Set custom height
	velocity[2] = g_class[id] == NEMESIS ? get_pcvar_float(cvar_leapnemesisheight) : g_class[id] == ALIEN ? get_pcvar_float(cvar_leapalienheight) : get_pcvar_float(cvar_leapzombiesheight)
	
	// Apply the new velocity
	set_pev(id, pev_velocity, velocity)
	
	// Update last leap time
	g_lastleaptime[id] = current_time
}

/*================================================================================
 [Client Commands]
=================================================================================*/

// Chat say
public clcmd_say(id)
{
	static said[89]
	read_args(said, charsmax(said))
	remove_quotes(said)
	replace_all(said, charsmax(said), "%", " ")
	
	// Don't say nothing
	if (count_characters(said) < 1) return PLUGIN_HANDLED;
	
	// Prevent chat from a player calling many times in a minute
	static Float:chat_time[33]
	if (get_gametime() - chat_time[id] < 2.0) return PLUGIN_HANDLED;
	chat_time[id] = get_gametime()
	
	// Get unblock words
	static buffer[100], admin[100]
	for (new i = 0; i < ArraySize(g_unblock_words); i++)
	{
		ArrayGetString(g_unblock_words, i, buffer, charsmax(buffer))
		if (equal(said, buffer)) return PLUGIN_CONTINUE;
	}
	
	static userflags; userflags = get_user_flags(id)
	
	for (new i = 0; i < ArraySize(g_admin_names); i++)
	{
		if (userflags & ArrayGetCell(g_admin_flags, i))
		{
			ArrayGetString(g_admin_names, i, admin, charsmax(admin))
			if (equal(said, admin)) return PLUGIN_CONTINUE;
		}	
	}
	
	// Format classname
	static class[32]
	
	if (g_class[id] >= ZOMBIE) // zombies
	{
		if (g_class[id] == NEMESIS)
			formatex(class, charsmax(class), "Nemesis")
		else if (g_class[id] == ALIEN)
			formatex(class, charsmax(class), "Alien")
		else if (g_class[id] == ASSASSIN)
			formatex(class, charsmax(class), "Assassin")
		else if (g_class[id] == DEMON)
			formatex(class, charsmax(class), "Demon")	
		else
			copy(class, charsmax(class), g_zombie_classname[id])
	}
	else // humans
	{
		if (g_class[id] == SURVIVOR)
			formatex(class, charsmax(class), "Survivor")
		else if (g_class[id] == WESKER)
			formatex(class, charsmax(class), "Wesker")
		else if (g_class[id] == SNIPER)
			formatex(class, charsmax(class), "Sniper")
		else if (g_class[id] == PREDATOR)
			formatex(class, charsmax(class), "Predator")	
		else if (g_class[id] == ANGEL)
			formatex(class, charsmax(class), "Angel")		
		else
			copy(class, charsmax(class), RANGOS[g_rango[id]])
	}
	
	// Get his team and change the chat type and colors
	static message[156]
	switch (fm_cs_get_user_team(id))
	{
		case FM_CS_TEAM_UNASSIGNED: formatex(message, charsmax(message), "^x01*UNASSIGNED* %s%s^x03[%s] %s %s: %s", is_user_admin(id) ? "^x04" : "^x01", is_user_admin(id) ? admin : "", class, g_playername[id], is_user_admin(id) ? "^x04" : "^x01", said)
		case FM_CS_TEAM_T, FM_CS_TEAM_CT: formatex(message, charsmax(message), "^x01%s%s%s^x03[%s] %s %s: %s", g_isalive[id] ? "" : "*MUERTO* ", is_user_admin(id) ? "^x04" : "^x01", is_user_admin(id) ? admin  : "", class, g_playername[id], is_user_admin(id) ? "^x04" : "^x01", said)
		case FM_CS_TEAM_SPECTATOR: formatex(message, charsmax(message), "^x01*SPEC* %s%s^x03[%s] %s %s: %s", is_user_admin(id) ? "^x04" : "^x01", is_user_admin(id) ? admin  : "", class, g_playername[id], is_user_admin(id) ? "^x04" : "^x01", said)
	}
	
	zp_colored_print(0, message)
	
	return PLUGIN_HANDLED;
}

// Say "/zamenu"
public clcmd_saymenu(id)
{
	// character selected?
	if (g_status[id] < ONLINE_SPEC) return PLUGIN_HANDLED;
		
	show_menu_game(id) // show game menu
	
	return PLUGIN_HANDLED; // don't show the command on chat
}

// Say "/unstuck"
public clcmd_sayunstuck(id)
{
	// fully logged?
	if (g_status[id] != ONLINE) return PLUGIN_HANDLED;
		
	menu_game(id, 6) // try to get unstuck
	
	return PLUGIN_HANDLED; // don't show the command on chat
}

// Say "/hclass"
public clcmd_sayhclass(id)
{
	// character selected?
	if (g_status[id] < ONLINE_SPEC) return PLUGIN_HANDLED;
		
	menu_game(id, 2) // show human class menu
	
	return PLUGIN_HANDLED; // don't show the command on chat
}

// Say "/zclass"
public clcmd_sayzclass(id)
{
	// character selected?
	if (g_status[id] < ONLINE_SPEC) return PLUGIN_HANDLED;
		
	menu_game(id, 3) // show zombie class menu
	
	return PLUGIN_HANDLED; // don't show the command on chat
}

// Say "/hv"
public clcmd_sayhh(id)
{
	zp_colored_print(id, "^x04[ZE]^x01 Hora Vicio Comienza a las^x04 %d:00:00^x01 y Termina a las^x04 %d:00:00", get_pcvar_num(cvar_hhstart), get_pcvar_num(cvar_hhend))
	
	return PLUGIN_HANDLED; // don't show the command on chat
}

// Say "/modo"
public clcmd_saymod(id)
{
	zp_colored_print(id, "^x04[ZE]^x01 Modo:^x04 %s", mode_names[g_currentmode-1])
	
	return PLUGIN_HANDLED; // don't show the command on chat
}

// Say "/reglas"
public clcmd_sayreglas(id)
{
	info_reglas(id)
}

// Nightvision toggle
public clcmd_nightvision(id)
{
	// Nightvision available to player?
	if (g_nvision[id] || (g_isalive[id] && cs_get_user_nvg(id)))
	{
		// Enable-disable
		g_nvisionenabled[id] = !(g_nvisionenabled[id])
		
		// Custom nvg
		remove_task(id+TASK_NVISION)
		if (g_nvisionenabled[id]) set_task(0.1, "set_user_nvision", id+TASK_NVISION, _, _, "b")
	}
	
	return PLUGIN_HANDLED;
}

// Weapon Drop
public clcmd_drop(id)
{
	// Survivor/Wesker should stick with its weapon
	if (g_class[id] == SURVIVOR || g_class[id] == WESKER || g_class[id] == SNIPER || g_class[id] == PREDATOR || g_class[id] == ANGEL) return PLUGIN_HANDLED;
	
	return PLUGIN_CONTINUE;
}

// Buy BP Ammo
public clcmd_buyammo(id)
{
	// Not alive or infinite ammo setting enabled
	if (!g_isalive[id] || get_pcvar_num(cvar_infammo)) return PLUGIN_HANDLED;
	
	// Not human
	if (g_class[id] >= ZOMBIE) return PLUGIN_HANDLED;
	
	// Custom buytime enabled and human player standing in buyzone, allow buying weapon's ammo normally instead
	if (g_cached_buytime > 0.0 && g_class[id] < SURVIVOR && (get_gametime() < g_buytime[id] + g_cached_buytime) && cs_get_user_buyzone(id))
		return PLUGIN_CONTINUE;
	
	// Not enough ammo packs
	if (g_ammopacks[id][0] < 1)
	{
		zp_colored_print(id, "^x04[ZE]^x01 No tienes suficientes ammopacks.")
		return PLUGIN_HANDLED;
	}
	
	// Get user weapons
	static weapons[32], num, i, currentammo, weaponid, refilled
	num = 0 // reset passed weapons count (bugfix)
	refilled = false
	get_user_weapons(id, weapons, num)
	
	// Loop through them and give the right ammo type
	for (i = 0; i < num; i++)
	{
		// Prevents re-indexing the array
		weaponid = weapons[i]
		
		// Primary and secondary only
		if (MAXBPAMMO[weaponid] > 2)
		{
			// Get current ammo of the weapon
			currentammo = cs_get_user_bpammo(id, weaponid)
			
			// Give additional ammo
			ExecuteHamB(Ham_GiveAmmo, id, BUYAMMO[weaponid], AMMOTYPE[weaponid], MAXBPAMMO[weaponid])
			
			// Check whether we actually refilled the weapon's ammo
			if (cs_get_user_bpammo(id, weaponid) - currentammo > 0) refilled = true
		}
	}
	
	// Weapons already have full ammo
	if (!refilled) return PLUGIN_HANDLED;
	
	// Deduce ammo packs, play clip purchase sound, and notify player
	g_ammopacks[id][0]--
	g_ammopacks[id][1]++
	emit_sound(id, CHAN_ITEM, sound_buyammo, 1.0, ATTN_NORM, 0, PITCH_NORM)
	zp_colored_print(id, "^x04[ZE]^x01 Has comprado municion.")
	
	return PLUGIN_HANDLED;
}




/*=======================
MENU FPS
==============================*/

public fwdAddToFullPack_Post( es_handle, e, ent, host, hostflags, player, pset )
{
	if(player)
	{
		if(is_user_alive(host) && invisible[host] && host != ent && is_user_alive(ent) && cs_get_user_team(host) == cs_get_user_team(ent))
		{
			set_es( es_handle, ES_Origin, { 999999999.0, 999999999.0, 999999999.0 } );
		}
	}
}

public client_connect(id) 
{
	if(is_user_connected(id))
	{ 
		client_cmd(id, "fps_max 999")
		client_cmd(id, "fps_modem 1")
		client_cmd(id, "fps_override 1")
		FogMode[id] = false
		ModelMode[id] = false
		WeaponMode[id] = false
	}
}

public client_disconnected(id) 
{
	client_cmd(id, "cl_minmodels 1")
	client_cmd(id, "gl_fog 1")
	FogMode[id] = false
	ModelMode[id] = false
	WeaponMode[id] = false
}

public ModelSwitch(id)
{
	if(!ModelMode[id]) ModelMode[id] = true

	else ModelMode[id] = false
	
	set_task(0.1, "Change", id)
}
	
public FogSwitch(id)
{
	if(!FogMode[id]) FogMode[id] = true
	
	else FogMode[id] = false

	set_task(0.1, "Change2", id)
}

public WeaponSwitch(id)
{
	if(!WeaponMode[id]) WeaponMode[id] = true
	
	else WeaponMode[id] = false

	set_task(0.1, "Change3", id)
}

public InvisibleSwitch(id)
{
	set_task(0.1, "Change5", id)
}

public Change(id)
{
	if(ModelMode[id]) client_cmd(id, "cl_minmodels 1")
	
	else client_cmd(id, "cl_minmodels 0")
}

public Change2(id)
{
	if(FogMode[id]) client_cmd(id, "gl_fog 0")
	
	else client_cmd(id, "gl_fog 1")
}


public Change3(id)
{
	if(WeaponMode[id]) client_cmd(id, "say /oldguns")

	else client_cmd(id, "say /newguns")
}

public Change5(id)
{
	if(invisible[id])
		invisible[id] = false;
	else
		invisible[id] = true;
}





/*=========================================*/
// Block Team Change
public clcmd_changeteam(id)
{
	// Show character menu
	if (g_status[id] == CHARACTER_MENU)
	{
		show_menu_character_selection(id)
		return PLUGIN_HANDLED;
	}
	// If not logged don't show menu!
	else if (g_status[id] == OFFLINE)
	{
		show_menu_registration(id)
		return PLUGIN_HANDLED;
	}
	
	// Block "Only 1 team is allowed" to spectators
	set_pdata_int(id, 125, (get_pdata_int(id, 125, 5) & ~(1<<8)), 5)
	
	// Pressing 'M' (chooseteam) ingame should show the main menu instead
	show_menu_game(id)
	return PLUGIN_HANDLED;
}

// Block radio
public clcmd_radio(id)
{
	// Zombies shouldn't speak on radio
	if (g_class[id] >= ZOMBIE) return PLUGIN_HANDLED;
	
	return PLUGIN_CONTINUE;
}

/*================================================================================
 [Account System]
=================================================================================*/

// Logging Account: Logging ID
public logging_id(id)
{
	if (g_status[id] != OFFLINE) return;
	
	read_args(user_id[id][0], charsmax(user_id[][]))
	remove_quotes(user_id[id][0]);trim(user_id[id][0])
	
	if (fvault_get_keynum(g_VaultAccounts, user_id[id][0]) >= 0)
	{
		client_cmd(id, "messagemode ^"your_password^"")
		set_hudmessage(255, 0, 0, 0.03, 0.05, 0, 0.1, 4.0, 0.01, 0.01, -1)
		ShowSyncHudMsg(id, g_MsgSync5, "Ingresa tu Contrasenia^nPulse ESC para salir")
	}
	else
	{
		g_attempts[id]--
		client_print(id, print_center, "[ZE] Error: El ID ingresado no existe. Intentos restantes: %d", g_attempts[id])
		show_menu_registration(id)
	}
}

// Logging Account: Logging Password
public logging_password(id)
{
	read_args(user_password[id][0], charsmax(user_password[][]))
	remove_quotes(user_password[id][0]);trim(user_password[id][0])
	
	static data[62]
	if (fvault_get_data(g_VaultAccounts, (g_status[id] != OFFLINE) ? user_id[id][1] : user_id[id][0], data, charsmax(data)))
	{
		static szPass[35], szBuffer[34], szRegDate[11], szLoggin[11]
		parse(data, szPass, charsmax(szPass), szRegDate, charsmax(szRegDate), szLoggin, charsmax(szLoggin))
		
		md5(user_password[id][0], szBuffer)
		
		if (equal(szBuffer, szPass))
		{
			if (g_status[id] != OFFLINE)
			{
				CONFIRM_MENU = 3
				client_cmd(id, "messagemode ^"register_new_password^"")
				set_hudmessage(255, 0, 0, 0.03, 0.05, 0, 0.1, 4.0, 0.01, 0.01, -1)
				ShowSyncHudMsg(id, g_MsgSync5, "Ingresa una Contrasenia nueva^nPulse ESC para salir")
			}
			else
			{
				copy(g_register_date[id], charsmax(g_register_date[]), szRegDate)
				copy(g_last_loggin[id], charsmax(g_last_loggin[]), szLoggin)
				check_online_account(id)
			}
		}
		else
		{
			if (g_status[id] != OFFLINE)
			{
				user_password[id][0] = ""
				client_print(id, print_center, "[ZE] Error: La contrasenia ingresada es incorrecta.")
				show_menu_character_selection(id)
			}
			else
			{
				g_attempts[id]--
				client_print(id, print_center, "[ZE] Error: La contrasenia ingresada es incorrecta. Intentos restantes: %d", g_attempts[id])
				show_menu_registration(id)
			}
		}
	}
}
	
// Check if account is currently online
check_online_account(id)
{
	// Get logged players count
	static iPlayersnum; iPlayersnum = fnGetLogged()
	
	// Not enough players, load directly
	if (iPlayersnum < 1)
	{
		copy(user_id[id][1], charsmax(user_id[][]), user_id[id][0])
		copy(user_password[id][1], charsmax(user_password[][]), user_password[id][0])
		user_id[id][0] = ""
		user_password[id][0] = ""
		Load(id, 0)
		return;
	}
	
	// Check all players ID's
	for (new i = 1; i <= g_maxplayers; i++)
	{
		// Same user ID
		if (equal(user_id[i][1], user_id[id][0]) && g_status[i] > OFFLINE)
		{
			client_print(id, print_center, "[ZE] Error: La cuenta se esta utilizando actualmente.")
			show_menu_registration(id)
			break;
		}
		else if (i == g_maxplayers) // All players checked
		{
			copy(user_id[id][1], charsmax(user_id[][]), user_id[id][0])
			copy(user_password[id][1], charsmax(user_password[][]), user_password[id][0])
			user_id[id][0] = ""
			user_password[id][0] = ""
			Load(id, 0)
		}
	}
}

// Register Account: Checking ID
public check_id(id)
{
	if (g_status[id] != OFFLINE) return;
	
	read_args(user_id[id][0], charsmax(user_id[][]))
	remove_quotes(user_id[id][0]);trim(user_id[id][0])
	
	if (count_characters(user_id[id][0]) < g_minidcharacters)
	{
		client_print(id, print_center, "[ZE] Error: El ID debe contener al menos %d caracteres", g_minidcharacters)
		show_menu_registration(id)
		return;
	}
	if (contain_special_characters(user_id[id][0]))
	{
		client_print(id, print_center, "[ZE] Error: El ID no debe contener caracteres especiales")
		show_menu_registration(id)
		return;
	}
	
	if (fvault_get_keynum(g_VaultAccounts, user_id[id][0]) >= 0)
	{
		client_print(id, print_center, "[ZE] Error: El ID ingresado se encuentra en uso")
		show_menu_registration(id)
	}
	else
	{
		client_cmd(id, "messagemode ^"register_password^"")
		set_hudmessage(255, 0, 0, 0.03, 0.05, 0, 0.1, 4.0, 0.01, 0.01, -1)
		ShowSyncHudMsg(id, g_MsgSync5, "Ingresa una Contrasenia^nPulse ESC para salir")
	}
}

// Register Account / Change Account: Checking Password
public check_password(id)
{
	if (g_status[id] != OFFLINE && CONFIRM_MENU != 3) return;
	
	read_args(user_password[id][0], charsmax(user_password[][]))
	remove_quotes(user_password[id][0]);trim(user_password[id][0])
	
	if (count_characters(user_password[id][0]) < g_minpasscharacters)
	{
		client_print(id, print_center, "[ZE] Error: La contrasenia debe contener al menos %d caracteres", g_minpasscharacters)
		(CONFIRM_MENU == 3) ? show_menu_character_selection(id) : show_menu_registration(id)
		return;
	}
	if (contain_special_characters(user_password[id][0]))
	{
		client_print(id, print_center, "[ZE] Error: La contrasenia no debe contener caracteres especiales")
		(CONFIRM_MENU == 3) ? show_menu_character_selection(id) : show_menu_registration(id)
		return;
	}
	if (equal(user_password[id][0], user_id[id][0]) && CONFIRM_MENU != 3 || equal(user_password[id][0], user_id[id][1]) && CONFIRM_MENU == 3)
	{
		client_print(id, print_center, "[ZE] Error: La contrasenia no puede ser similar al ID")
		(CONFIRM_MENU == 3) ? show_menu_character_selection(id) : show_menu_registration(id)
		return;
	}
	if (equal(user_password[id][0], user_password[id][1]) && CONFIRM_MENU == 3)
	{
		client_print(id, print_center, "[ZE] Error: La contrasenia es la misma que la actual")
		show_menu_character_selection(id)
		return;
	}
	
	show_menu_confirm(id)
}

save_account_count()
{
	formatex(g_fkey, charsmax(g_fkey), "Accounts / Characters")
	formatex(g_fdata, charsmax(g_fdata), "%d %d", g_createdaccounts, g_createdcharacters)
	fvault_set_data(g_VaultCreated, g_fkey, g_fdata)
}

load_account_count()
{
	formatex(g_fkey, charsmax(g_fkey), "Accounts / Characters")
	
	static data[51]
	if (fvault_get_data(g_VaultCreated, g_fkey, data, charsmax(data)))
	{
		static szAccounts[15], szCharacters[15]
		parse(data, szAccounts, charsmax(szAccounts), szCharacters, charsmax(szCharacters))
        
		g_createdaccounts = str_to_num(szAccounts)
		g_createdcharacters = str_to_num(szCharacters)
	}
	else
		g_createdaccounts = g_createdcharacters = 0
}

Save(id)
{
	// Not character selected don't save
	if (g_status[id] < ONLINE_SPEC) return;
	
	static szBuffer[34], szDate[11]
	md5(user_password[id][1], szBuffer)
	get_time("%Y/%m/%d", szDate, charsmax(szDate))
	
	formatex(g_fdata, charsmax(g_fdata), "%s %s %s", szBuffer, g_register_date[id], szDate)
	fvault_set_data(g_VaultAccounts, user_id[id][1], g_fdata)
	
	formatex(g_fkey, charsmax(g_fkey), "ID: %s Character: %s", user_id[id][1], g_playername[id])
    	
	formatex(g_fdata, charsmax(g_fdata), "%d %d %d %d %d", g_level[id], g_experience[id], g_point[id], g_rango[id], g_rango2[id])
	fvault_set_data(g_VaultExp, g_fkey, g_fdata)
	
	formatex(g_fdata, charsmax(g_fdata), "%d %d %d %d", g_humanclass[id], g_humanclassnext[id], g_zombieclass[id], g_zombieclassnext[id])
	fvault_set_data(g_VaultClasses, g_fkey, g_fdata)
	
	formatex(g_fdata, charsmax(g_fdata), "%d %d %d %d %d %d %d %d %d %d", g_infected[id][0], g_killed[id][0][0], g_killed[id][0][1], g_killed[id][0][2], g_killed[id][0][3], g_killed[id][0][4], 
	g_killed[id][0][5], g_killed[id][0][6], g_killed[id][0][7], g_escape[id])
	fvault_set_data(g_VaultKills, g_fkey, g_fdata)
	
	formatex(g_fdata, charsmax(g_fdata), "%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d", g_quest[id], g_questcompleted[id][0], g_questcompleted[id][1], g_questcompleted[id][2], g_questcompleted[id][3], g_questcompleted[id][4], g_questcompleted[id][5], g_questcompleted[id][6], g_questcompleted[id][7],
	g_completed[id], g_questrounds[id], g_questkill[id][0], g_questkill[id][1], g_questkill[id][2], g_questkill[id][3], g_questkill[id][4], g_questkill[id][5], g_questkill[id][6], g_questkill[id][7])
	fvault_set_data(g_VaultQuests, g_fkey, g_fdata)
	
	formatex(g_fdata, charsmax(g_fdata), "%d %d %d %d", g_playedtime[id][0], g_playedtime[id][1], g_playedtime[id][2], g_playedtime[id][3])
	fvault_set_data(g_VaultTime, g_fkey, g_fdata)
	
	formatex(g_fdata, charsmax(g_fdata), "%d %d %d %d %d %d %d %d %d %d %d %d %d %d", g_hudred[id], g_hudgreen[id], g_hudblue[id], g_nvgred[id], g_nvggreen[id], g_nvgblue[id], g_flashred[id], g_flashgreen[id], g_flashblue[id], g_hud[id], g_weapon[id], g_hud_stats_x[id], g_hud_stats_y[id], g_hud_stats_t[id])
	fvault_set_data(g_VaultColors, g_fkey, g_fdata)
	
	formatex(g_fdata, charsmax(g_fdata), "%d %d %d %d %d", g_models[id], g_hats[id], g_glows[id], g_knifes[id], g_grenades[id])
	fvault_set_data(g_VaultPj, g_fkey, g_fdata)
	
}

Load(id, yourdata)
{
	formatex(g_fkey, charsmax(g_fkey), "ID: %s Character: %s", user_id[id][1], g_charactername[id][SELECTED_CHARACTER])
	
	switch (yourdata)
	{
		case 0:
		{
			static key2[46]
			formatex(key2, charsmax(key2), "ID: %s", user_id[id][1])
			formatex(g_fdata, charsmax(g_fdata), "%s", g_charactername[id][0])
    
			if (fvault_get_data(g_VaultCharacters, key2, g_fdata, charsmax(g_fdata)))
			{
				static sz1[32]
				parse(g_fdata, sz1, charsmax(sz1))
        
				copy(g_charactername[id][0], charsmax(g_charactername[][]), sz1)
			}
		
			g_status[id] = CHARACTER_MENU
			show_menu_character_selection(id)
		}
		case 1:
		{
			formatex(g_fdata, charsmax(g_fdata), "%i %i %i %i %i", g_level[id], g_experience[id], g_point[id], g_rango[id], g_rango2[id])
    
			if (fvault_get_data(g_VaultExp, g_fkey, g_fdata, charsmax(g_fdata)))
			{
				static szLvl[4], szExp[15], szPoint[15], szRango[3], szRango2[3]
				parse(g_fdata, szLvl, charsmax(szLvl), szExp, charsmax(szExp), szPoint, charsmax(szPoint), szRango, charsmax(szRango), szRango2, charsmax(szRango2))
        
				g_level[id] = str_to_num(szLvl)
				g_experience[id] = str_to_num(szExp)
				g_point[id] = str_to_num(szPoint)
				g_rango[id] = str_to_num(szRango)
				g_rango2[id] = str_to_num(szRango2)
				Load(id, 2)
			}
			else // Doesn't have data saved, show directly the menu
				show_menu_character(id)
		}
		case 2:
		{
			formatex(g_fdata, charsmax(g_fdata), "%i %i %i %i", g_humanclass[id], g_humanclassnext[id], g_zombieclass[id], g_zombieclassnext[id])
    
			if (fvault_get_data(g_VaultClasses, g_fkey, g_fdata, charsmax(g_fdata)))
			{
				static szHcl[3], szHcln[3], szZcl[3], szZcln[3]
				parse(g_fdata, szHcl, charsmax(szHcl), szHcln, charsmax(szHcln), szZcl, charsmax(szZcl), szZcln, charsmax(szZcln))
        
				g_humanclass[id] = str_to_num(szHcl)
				g_humanclassnext[id] = str_to_num(szHcln)
				g_zombieclass[id] = str_to_num(szZcl)
				g_zombieclassnext[id] = str_to_num(szZcln)
			}
			Load(id, 3)
		}
		case 3:
		{
			formatex(g_fdata, charsmax(g_fdata), "%i %i %i %i %i %i %i %i %i %i", g_infected[id][0], g_killed[id][0][0], g_killed[id][0][1], g_killed[id][0][2], g_killed[id][0][3], g_killed[id][0][4], g_killed[id][0][5],
			g_killed[id][0][6], g_killed[id][0][7], g_escape[id])
    
			if (fvault_get_data(g_VaultKills, g_fkey, g_fdata, charsmax(g_fdata)))
			{
				static szInf[10], szKill1[10], szKill2[10], szKill3[10], szKill4[10], szKill5[10], szKill6[10], szKill7[10], szKill8[10], szEscape[10]
				parse(g_fdata, szInf, charsmax(szInf), szKill1, charsmax(szKill1), szKill2, charsmax(szKill2), szKill3, charsmax(szKill3), szKill4, charsmax(szKill4), szKill5, charsmax(szKill5), szKill6, charsmax(szKill6), 
				szKill7, charsmax(szKill7), szKill8, charsmax(szKill8), szEscape, charsmax(szEscape))
        
				g_infected[id][0] = str_to_num(szInf)
				g_killed[id][0][0] = str_to_num(szKill1)
				g_killed[id][0][1] = str_to_num(szKill2)
				g_killed[id][0][2] = str_to_num(szKill3)
				g_killed[id][0][3] = str_to_num(szKill4)
				g_killed[id][0][4] = str_to_num(szKill5)
				g_killed[id][0][5] = str_to_num(szKill6)
				g_killed[id][0][6] = str_to_num(szKill7)
				g_killed[id][0][7] = str_to_num(szKill8)
				g_escape[id]= str_to_num(szEscape)
			}
			Load(id, 4)
		}
		case 4:
		{
			formatex(g_fdata, charsmax(g_fdata), "%i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i", g_quest[id], g_questcompleted[id][0], g_questcompleted[id][1], g_questcompleted[id][2], g_questcompleted[id][3], g_questcompleted[id][4], g_questcompleted[id][5], g_questcompleted[id][6], g_questcompleted[id][7], 
			g_completed, g_questrounds[id], g_questkill[id][0], g_questkill[id][1], g_questkill[id][2], g_questkill[id][3], g_questkill[id][4], g_questkill[id][5], g_questkill[id][6], g_questkill[id][7])
    
			if (fvault_get_data(g_VaultQuests, g_fkey, g_fdata, charsmax(g_fdata)))
			{
				static szQue1[3], szQue2[4], szQue3[4], szQue4[4], szQue5[4], szQue6[4], szQue7[4], szQue8[4], szQue9[4], szQue10[4], szQue11[4],
				szKill1[4], szKill2[4], szKill3[4], szKill4[4], szKill5[4], szKill6[4], szKill7[4], szKill8[4]
				parse(g_fdata, szQue1, charsmax(szQue1), szQue2, charsmax(szQue2), szQue3, charsmax(szQue3), szQue4, charsmax(szQue4), szQue5, charsmax(szQue5), szQue6, charsmax(szQue6), szQue7, charsmax(szQue7), szQue8, charsmax(szQue8), szQue9, charsmax(szQue9), szQue10, charsmax(szQue10),
				szQue11, charsmax(szQue11), szKill1, charsmax(szKill1), szKill2, charsmax(szKill2), szKill3, charsmax(szKill3), szKill4, charsmax(szKill4), szKill5, charsmax(szKill5), szKill6, charsmax(szKill6), szKill7, charsmax(szKill7), szKill8, charsmax(szKill8))
        
				g_quest[id] = str_to_num(szQue1)
				g_questcompleted[id][0] = str_to_num(szQue2)
				g_questcompleted[id][1] = str_to_num(szQue3)
				g_questcompleted[id][2] = str_to_num(szQue4)
				g_questcompleted[id][3] = str_to_num(szQue5)
				g_questcompleted[id][4] = str_to_num(szQue6)
				g_questcompleted[id][5] = str_to_num(szQue7)
				g_questcompleted[id][6] = str_to_num(szQue8)
				g_questcompleted[id][7] = str_to_num(szQue9)
				g_completed[id] = str_to_num(szQue10)
				g_questrounds[id] = str_to_num(szQue11)
				g_questkill[id][0] = str_to_num(szKill1)
				g_questkill[id][1] = str_to_num(szKill2)
				g_questkill[id][2] = str_to_num(szKill3)
				g_questkill[id][3] = str_to_num(szKill4)
				g_questkill[id][4] = str_to_num(szKill5)
				g_questkill[id][5] = str_to_num(szKill6)
				g_questkill[id][6] = str_to_num(szKill7)
				g_questkill[id][7] = str_to_num(szKill8)
			}
			Load(id, 5)
		}
		case 5:
		{
			formatex(g_fdata, charsmax(g_fdata), "%i %i %i %i", g_playedtime[id][0], g_playedtime[id][1], g_playedtime[id][2], g_playedtime[id][3])
    
    			if (fvault_get_data(g_VaultTime, g_fkey, g_fdata, charsmax(g_fdata)))
    			{
				static szPla1[10], szPla2[10], szPla3[3], szPla4[3]
				parse(g_fdata, szPla1, charsmax(szPla1), szPla2, charsmax(szPla2), szPla3, charsmax(szPla3), szPla4, charsmax(szPla4))
        
				g_playedtime[id][0] = str_to_num(szPla1)
				g_playedtime[id][1] = str_to_num(szPla2)
				g_playedtime[id][2] = str_to_num(szPla3)
				g_playedtime[id][3] = str_to_num(szPla4)
			}
			Load(id, 6)
		}
		case 6:
		{
			formatex(g_fdata, charsmax(g_fdata), "%f %f %f %f %f %f %f %f %f %f %f %f %f %f", g_hudred[id], g_hudgreen[id], g_hudblue[id], g_nvgred[id], g_nvggreen[id], g_nvgblue[id], g_flashred[id], g_flashgreen[id], g_flashblue[id], g_hud[id], g_weapon[id], g_hud_stats_x[id], g_hud_stats_y[id], g_hud_stats_t[id])
    
    			if (fvault_get_data(g_VaultColors, g_fkey, g_fdata, charsmax(g_fdata)))
    			{
				static szHudRed[20], szHudGreen[20], szHudBlue[20], szNvgRed[20], szNvgGreen[20], szNvgBlue[20], szFlashRed[20], szFlashGreen[20], szFlashBlue[20], szHud[20], szWeapon[20], szHudx[20], szHudy[20], szHudt[20]
				parse(g_fdata, szHudRed, charsmax(szHudRed), szHudGreen, charsmax(szHudGreen), szHudBlue, charsmax(szHudBlue), szNvgRed, charsmax(szNvgRed), szNvgGreen, charsmax(szNvgGreen), szNvgBlue, charsmax(szNvgBlue),
				szFlashRed, charsmax(szFlashRed), szFlashGreen, charsmax(szFlashGreen), szFlashBlue, charsmax(szFlashBlue), szHud, charsmax(szHud), szWeapon, charsmax(szWeapon), szHudx, charsmax(szHudx), szHudy, charsmax(szHudy), szHudt, charsmax(szHudt))
        
				g_hudred[id] = str_to_num(szHudRed)
				g_hudgreen[id] = str_to_num(szHudGreen)
				g_hudblue[id] = str_to_num(szHudBlue)
				g_nvgred[id] = str_to_num(szNvgRed)
				g_nvggreen[id] = str_to_num(szNvgGreen)
				g_nvgblue[id] = str_to_num(szNvgBlue)
				g_flashred[id] = str_to_num(szFlashRed)
				g_flashgreen[id] = str_to_num(szFlashGreen)
				g_flashblue[id] = str_to_num(szFlashBlue)
				g_hud[id] = str_to_num(szHud)
				g_weapon[id] = str_to_num(szWeapon)
				g_hud_stats_x[id] = str_to_num(szHudx)
				g_hud_stats_y[id] = str_to_num(szHudy)
				g_hud_stats_t[id] = str_to_num(szHudt)
			}
			Load(id, 7)
		}
		case 7:
		{
			formatex(g_fdata, charsmax(g_fdata), "%f %f %f %f %f", g_models[id], g_hats[id], g_glows[id], g_knifes[id], g_grenades[id])
    
    			if (fvault_get_data(g_VaultPj, g_fkey, g_fdata, charsmax(g_fdata)))
    			{
				static szModels[20], szHats[20], szGlows[20], szKnifes[20], szGrenades[20]
				parse(g_fdata, szModels, charsmax(szModels), szHats, charsmax(szHats), szGlows, charsmax(szGlows), szKnifes, charsmax(szKnifes), szGrenades, charsmax(szGrenades))
        
				g_models[id] = str_to_num(szModels)
				g_hats[id] = str_to_num(szHats)
				g_glows[id] = str_to_num(szGlows)
				g_knifes[id] = str_to_num(szKnifes)
				g_grenades[id] = str_to_num(szGrenades)
			}
			show_menu_character(id)
		}
	}
}

// Create New Account
create_account(id)
{
	new szBuffer[34], szDate[11]
	md5(user_password[id][0], szBuffer)
	get_time("%Y/%m/%d", szDate, charsmax(szDate))
	
	g_createdaccounts++
	save_account_count()
	formatex(g_fdata, charsmax(g_fdata), "%s %s 0000-00-00", szBuffer, szDate)
	fvault_set_data(g_VaultAccounts, user_id[id][0], g_fdata)
	
	user_id[id][0] = ""
	client_print(id, print_center, "[ZE] Registro finalizado con exito")
	
	// Show menu again
	show_menu_registration(id)
}

// Create Character: Check Character
create_character(id)
{
	if (equal(g_playername[id], "None"))
	{
		client_print(id, print_center, "[ZE] Error: Este nombre no puede ser usado. Por favor, cambiese el nombre")
		show_menu_character_selection(id)
		return;
	}
	
	if (TrieKeyExists(g_tcharacternames, g_playername[id]))
		client_print(id, print_center, "[ZE] El nombre se encuentra en uso. Por favor, cambiese el nombre")
	else
	{
		g_createdcharacters++
		save_account_count()
		TrieSetCell(g_tcharacternames, g_playername[id], 1)
		copy(g_charactername[id][SELECTED_CHARACTER], charsmax(g_charactername[][]), g_playername[id])
		
		formatex(g_fkey, charsmax(g_fkey), "ID: %s", user_id[id][1])
		formatex(g_fdata, charsmax(g_fdata), "^"%s^"", g_charactername[id][0])
		fvault_set_data(g_VaultCharacters, g_fkey, g_fdata)
		
		client_print(id, print_center, "[ZE] Personaje creado con exito")
	}
	
	show_menu_character_selection(id)
}

// Change Password
change_password(id)
{
	new szBuffer[34], szDate[11]
	md5(user_password[id][0], szBuffer)
	get_time("%Y/%m/%d", szDate, charsmax(szDate))
	
	formatex(g_fdata, charsmax(g_fdata), "%s %s %s", szBuffer, g_register_date[id], szDate)
	fvault_set_data(g_VaultAccounts, user_id[id][1], g_fdata)
	
	copy(user_password[id][1], charsmax(user_password[][]), user_password[id][0])
	user_password[id][0] = ""
	client_print(id, print_center, "[ZE] Contrasenia cambiada con exito")
	
	// Show menu again
	show_menu_character_selection(id)
}

loggin_success(id, spec = 0)
{
	// Set character name
	set_user_info(id, "name", g_charactername[id][SELECTED_CHARACTER])
	
	// Welcome message
	zp_colored_print(0, "^x04[ZE]^x01 Bienvenido! ^x04%s^x01 ha iniciado sesion.", g_charactername[id][SELECTED_CHARACTER])
	
	// Update level
	update_level(id)
	
	// Set the custom HUD display task if enabled
	if (get_pcvar_num(cvar_huddisplay))
		set_task(1.0, "ShowHUD", id+TASK_SHOWHUD, _, _, "b")
	
	// Set time check task
	set_task(1.0, "check_time", id+TASK_TIME, _, _, "b")
	
	// Go to spectator?
	if (spec)
	{
		// Make a task because name has to be changed, after set account it's logged
		set_task(0.5, "join_team_spec", id)
	}
	else
	{
		// Make a task because name has to be changed, after set account it's logged
		set_task(0.5, "join_team_t_ct", id)
	}
}

public join_team_spec(id)
{
	// Not connected
	if (!g_isconnected[id]) return;
	
	// Currently logged spectator
	g_status[id] = ONLINE_SPEC
		
	// Join SPEC team
	engclient_cmd(id, "jointeam", "6")
}

public join_team_t_ct(id)
{
	// Not connected
	if (!g_isconnected[id]) return;
	
	// Currently logged
	g_status[id] = ONLINE
		
	// Join T or CT team
	if (fnGetTs() >= fnGetCTs())
		engclient_cmd(id, "jointeam", "2")
	else
		engclient_cmd(id, "jointeam", "1")
		
	// Prevent player bugged if he was logged as spectator and
	// went to character menu again
	if (fm_cs_get_user_team(id) == FM_CS_TEAM_SPECTATOR)
	{
		remove_task(id+TASK_TEAM)
		fm_cs_set_user_team(id, FM_CS_TEAM_CT) // must be CT (he isn't a zombie)
		fm_user_team_update(id)
	}
}

// Log Out from Account
log_out(id, charactermenu)
{
	// Player alive?
	if (g_isalive[id])
	{
		// Prevent players from killing themselves?
		if (get_pcvar_num(cvar_blocksuicide))
		{
			zp_colored_print(id, "^x04[ZE]^x01 No puedes salir estando vivo.")
			return;
		}
				
		// Check that we still have both humans and zombies to keep the round going
		check_round(id)
				
		// Kill him before he switches team
		dllfunc(DLLFunc_ClientKill, id)
	}
	
	// Remove previous tasks
	remove_task(id+TASK_SPAWN)
	remove_task(id+TASK_SHOWHUD)
	remove_task(id+TASK_TIME)
	remove_task(id+TASK_COMBO)
	
	// Save progress
	Save(id)
	
	// Move him to unassigned team
	if (fm_cs_get_user_team(id) != FM_CS_TEAM_SPECTATOR)
	{
		remove_task(id+TASK_TEAM)
		fm_cs_set_user_team(id, FM_CS_TEAM_UNASSIGNED)
		fm_user_team_update(id)
	}
	
	// Initialize player vars
	reset_vars(id, 1, 0)
	
	// Prevent admin log out, loggin and get full modes again
	copy(g_logoutname[id], charsmax(g_logoutname[]), g_playername[id])
	
	// Go to character menu?
	if (!charactermenu)
	{
		// Show print
		client_print(id, print_center, "[ZE] Sesion cerrada con exito.")
	
		// Reset character names
		for (new i = 0; i < 1; i++) g_charactername[id][i] = "None"
		
		// Show register menu
		g_attempts[id] = g_attemptslogging
		user_id[id][0] = ""
		user_id[id][1] = ""
		user_password[id][0] = ""
		user_password[id][1] = ""
		g_status[id] = OFFLINE
		show_menu_registration(id)
	}
	else
	{
		// Show character menu
		g_status[id] = CHARACTER_MENU
		show_menu_character_selection(id)
	}
}

/*================================================================================
 [Menus]
=================================================================================*/

// Loggin Account Menu
public show_menu_registration(id)
{
	// Player disconnected?
	if (!g_isconnected[id]) return;
	
	formatex(g_menu, charsmax(g_menu), "^n^n\yBienvenido a\r [Fo]rce-[G]ames] Zombie Escape 7.5b [Dark] ^n\wEditado por \y%s", 
	PLUGIN_COAUTHOR)
	
	new menu = menu_create(g_menu, "menu_registration")
		
	menu_additem(menu, "\wRegistrarse", "1", 0)
	menu_additem(menu, "\wLoguearse^n^n\yUpdate 9.9^n\r- \wAgregado Nuevas Pack De Armas y skins Etc.^n\r- \wAgregado Sistema de Party.^n\r- \wAgregado Anti-Frost y Anti-Fire Items Extra.", "2", 0)
	
	menu_setprop(menu, MPROP_EXIT, MEXIT_NEVER)
	
	menu_display(id, menu)
}

// Confirm Menu
show_menu_confirm(id)
{
	switch (CONFIRM_MENU)
	{
		case 0: formatex(g_menu, charsmax(g_menu), "\yÂ¿Desea finalizar el registro?^n^n\rID: \w%s^n\rContrasenia: \w%s", user_id[id][0], user_password[id][0])
		case 1: formatex(g_menu, charsmax(g_menu), "\yÂ¿Desea crear un personaje con el nombre %s?", g_playername[id])
		case 2: formatex(g_menu, charsmax(g_menu), "^n\rSubir Fama del Personaje^n^n\wNivel Requerido: \r%d^n\wFama maxima: \r%d^n^n\wBeneficios:^n\y1. %d Puntos Humano y Zombie^n2. x2 Drop de Experiencia^n3. Armas Categoria B (Fama: %d)^n4. Armas Categoria E (Fama: %d)", g_max_level, g_max_fame, get_pcvar_num(cvar_pointsfameup), g_fame_category[0], g_fame_category[1])
		case 3: formatex(g_menu, charsmax(g_menu), "\yÂ¿Desea cambiar los datos?^n^n\rContrasenia actual: \w%s^n^n\rContrasenia nueva: \w%s", user_password[id][1], user_password[id][0])
	}
	new menu = menu_create(g_menu, "menu_confirm")
	
	formatex(g_menu, charsmax(g_menu), "%s", CONFIRM_MENU > 0 ? CONFIRM_MENU > 1 ? CONFIRM_MENU > 2 ? "\wSi, \ycambiar contrasenia." : "\wSi, \ysubir fama." : "\wSi, \ycrear personaje." : "\wSi, \ycrear cuenta.")
	menu_additem(menu, g_menu, "1", 0)
	menu_additem(menu, "\wNo, \ycancelar operacion.", "2", 0)
	
	menu_setprop(menu, MPROP_EXIT, MEXIT_NEVER)
	
	menu_display(id, menu)
}

// Character Selection Menu
show_menu_character_selection(id)
{
	new num[2]
	if (equal(g_last_loggin[id], "0000-00-00"))
		formatex(g_menu, charsmax(g_menu), "\rID Usuario: \w%s^n\rFecha de Registro: \w%s^n\rUltima Sesion: \wNinguna^n^n\ySeleccione un personaje", user_id[id][1], g_register_date[id])
	else
		formatex(g_menu, charsmax(g_menu), "\rID Usuario: \w%s^n\rFecha de Registro: \w%s^n\rUltima Sesion: \w%s^n^n\ySeleccione un personaje", user_id[id][1], g_register_date[id], g_last_loggin[id])
	new menu = menu_create(g_menu, "menu_character_selection")
	
	for (new i = 0; i < 1; i++)
	{
		if (equal(g_charactername[id][i], "None"))
			formatex(g_menu, charsmax(g_menu), "\wCrear Personaje \y[Slot %d]%s", i+1, i == 0 ? "^n" : "")
		else
			formatex(g_menu, charsmax(g_menu), "\w%s \y[Slot %d]%s", g_charactername[id][i], i+1, i == 0 ? "^n" : "")
		
		num_to_str(i+1, num, charsmax(num))
		menu_additem(menu, g_menu, num)
	}
	
	// 6. Change Password
	menu_additem(menu, "\wCambiar \ycontrasenia", "2", 0)
	
	// 7. Log out
	menu_additem(menu, "\wCerrar \ysesion", "3", 0)
	
	menu_setprop(menu, MPROP_EXIT, MEXIT_NEVER)
	
	menu_display(id, menu)
}

// Character Menu
show_menu_character(id)
{
	// Get range name
	static models[32], hats[32], glows[32], knifes[32]
	
	if (g_models[id] == 0)
		formatex(models, charsmax(models), "Desactivado")
	else if (g_models[id] == 1)
		formatex(models, charsmax(models), "S.W.R.C")
	else if (g_models[id] == 2)
		formatex(models, charsmax(models), "Elite Combine")
	else if (g_models[id] == 3)
		formatex(models, charsmax(models), "Dallas")
	else if (g_models[id] == 4)
		formatex(models, charsmax(models), "Carlitos")
	else if (g_models[id] == 5)
		formatex(models, charsmax(models), "Walter")
	else if (g_models[id] == 6)
		formatex(models, charsmax(models), "Spy")
	else if (g_models[id] == 7)
		formatex(models, charsmax(models), "Skaynet")	
	else if (g_models[id] == 8)
		formatex(models, charsmax(models), "Mr. Foster")
	else if (g_models[id] == 9)
		formatex(models, charsmax(models), "Mike Noble")
	else if (g_models[id] == 10)
		formatex(models, charsmax(models), "VIP")
	else if (g_models[id] == 11)
		formatex(models, charsmax(models), "Chickenator")	
	else if (g_models[id] == 12)
		formatex(models, charsmax(models), "Goku")
		
	if (g_hats[id] == 0)
		formatex(hats, charsmax(hats), "Desactivado")
	else if (g_hats[id] == 1)
		formatex(hats, charsmax(hats), "Bandera Lancelot")	
	else if (g_hats[id] == 2)
		formatex(hats, charsmax(hats), "Knuckles")
	else if (g_hats[id] == 3)
		formatex(hats, charsmax(hats), "Santa")
	else if (g_hats[id] == 4)
		formatex(hats, charsmax(hats), "Cannibal")
	else if (g_hats[id] == 5)
		formatex(hats, charsmax(hats), "Bomba")
	else if (g_hats[id] == 6)
		formatex(hats, charsmax(hats), "Clon")	
	else if (g_hats[id] == 7)
		formatex(hats, charsmax(hats), "Clon 2")		
	else if (g_hats[id] == 8)
		formatex(hats, charsmax(hats), "Dr. Doom")	
	else if (g_hats[id] == 9)
		formatex(hats, charsmax(hats), "Sheih")
	else if (g_hats[id] == 10)
		formatex(hats, charsmax(hats), "Svarshik")
	else if (g_hats[id] == 11)
		formatex(hats, charsmax(hats), "Gazowa")
	else if (g_hats[id] == 12)
		formatex(hats, charsmax(hats), "Marsjanin")
	else if (g_hats[id] == 13)
		formatex(hats, charsmax(hats), "Alien")
	else if (g_hats[id] == 14)
		formatex(hats, charsmax(hats), "Zelazny")
	else if (g_hats[id] == 15)
		formatex(hats, charsmax(hats), "Mummy")
	else if (g_hats[id] == 16)
		formatex(hats, charsmax(hats), "Diabel")
	else if (g_hats[id] == 17)
		formatex(hats, charsmax(hats), "Doccabi")
	else if (g_hats[id] == 18)
		formatex(hats, charsmax(hats), "Bruja")
	else if (g_hats[id] == 19)
		formatex(hats, charsmax(hats), "Frankenstein")		
	else if (g_hats[id] == 20)
		formatex(hats, charsmax(hats), "Monin")	
	else if (g_hats[id] == 21)
		formatex(hats, charsmax(hats), "Scream")	
	else if (g_hats[id] == 22)
		formatex(hats, charsmax(hats), "Jack")	
	else if (g_hats[id] == 23)
		formatex(hats, charsmax(hats), "Futbolista")	
	else if (g_hats[id] == 24)
		formatex(hats, charsmax(hats), "Darkvader")	
	else if (g_hats[id] == 25)
		formatex(hats, charsmax(hats), "Rotwaila")	
	else if (g_hats[id] == 26)
		formatex(hats, charsmax(hats), "Mario")	
		
	if (g_glows[id] == 0)
		formatex(glows, charsmax(glows), "Desactivado")
	else if (g_glows[id] == 1)
		formatex(glows, charsmax(glows), "Rojo")
	else if (g_glows[id] == 2)
		formatex(glows, charsmax(glows), "Verde")
	else if (g_glows[id] == 3)
		formatex(glows, charsmax(glows), "Azul")
	else if (g_glows[id] == 4)
		formatex(glows, charsmax(glows), "Amarilllo")
	else if (g_glows[id] == 5)
		formatex(glows, charsmax(glows), "Naranja")
	else if (g_glows[id] == 6)
		formatex(glows, charsmax(glows), "Celeste")
	else if (g_glows[id] == 7)
		formatex(glows, charsmax(glows), "Rosa")
	else if (g_glows[id] == 8)
		formatex(glows, charsmax(glows), "Morado")
	else if (g_glows[id] == 9)
		formatex(glows, charsmax(glows), "Blanco")	
		
	if (g_knifes[id] == 0)
		formatex(knifes, charsmax(knifes), "Manos")
	else if (g_knifes[id] == 1)
		formatex(knifes, charsmax(knifes), "Razor")
	else if (g_knifes[id] == 2)
		formatex(knifes, charsmax(knifes), "Strong")
	else if (g_knifes[id] == 3)
		formatex(knifes, charsmax(knifes), "Master Combat")
	else if (g_knifes[id] == 4)
		formatex(knifes, charsmax(knifes), "Xmas")
	else if (g_knifes[id] == 5)
		formatex(knifes, charsmax(knifes), "Crowbar")
	else if (g_knifes[id] == 6)
		formatex(knifes, charsmax(knifes), "Hammer")
	else if (g_knifes[id] == 7)
		formatex(knifes, charsmax(knifes), "Machete")
	else if (g_knifes[id] == 8)
		formatex(knifes, charsmax(knifes), "Katana")
	else if (g_knifes[id] == 9)
		formatex(knifes, charsmax(knifes), "Skullaxe")
	else if (g_knifes[id] == 10)
		formatex(knifes, charsmax(knifes), "Dual Katana")
	else if (g_knifes[id] == 11)
		formatex(knifes, charsmax(knifes), "Motocierra")
	
	ArrayGetString(g_range_names, g_rangelevel[id]-1, g_rangename[id], charsmax(g_rangename[]))
	
	formatex(g_menu, charsmax(g_menu), "\rPersonaje: \w%s \y[Slot %d]^n^n\rNivel:\w %d^n\rExperiencia:\w %d^n\rP. Upgrade:\w %d^n\rRango Actual: \w%s^n\rModelo: \w%s^n\rSombrero: \w%s^n\rGlow: \w%s^n\rCuchillo: \w%s", 
	g_charactername[id][SELECTED_CHARACTER], SELECTED_CHARACTER + 1, g_level[id], g_experience[id], g_point[id], RANGOS[g_rango[id]], models, hats, glows, knifes)
	
	new menu = menu_create(g_menu, "menu_character")
	
	menu_additem(menu, "\wEntrar", "1", 0)
	menu_additem(menu, "\wEntrar como Espectador^n", "2", 0)
	menu_additem(menu, "\wAtras", "3", 0)
	
	menu_setprop(menu, MPROP_EXIT, MEXIT_NEVER)
	
	menu_display(id, menu)
}

// Game Menu
show_menu_game(id)
{
	static len, szNum, szNum2; len = szNum = szNum2 = 0
	
	if (g_level[id] < g_max_level) szNum += cost_levelup((g_level[id]+1))-g_experience[id]
	
	if (g_level[id] < g_max_level) szNum2 += (g_level[id]+1)
	
	// Title
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r[ZE] \wZombie Escape \r%s^n", PLUGIN_VERSION)
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\dby \d%s^n^n", PLUGIN_COAUTHOR)
	
		// 1. Buy weapons / Play if spectator
	if (g_status[id] == ONLINE_SPEC)
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1.\wSALIR DE ESPECTADOR^n")
	else
		if (get_pcvar_num(cvar_buycustom) && g_canbuy[id] != 2 && g_class[id] < SURVIVOR)
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1.\wARMAS^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1.\dARMAS^n")	
		
	// 2. Special Weapons
	if (get_pcvar_num(cvar_extraitems) && g_isalive[id])
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r2.\wEXTRA ITEMS^n")
	else
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r2.\dEXTRA ITEMS^n")	
	
	// 3. Human/Zombie classes
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r3.\wPERSONAJE^n^n")
	
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r4.\wPARTY^n^n")
	
	// 4. Configure account and help
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r5.\wUSUARIO^n")
	

	// 6. Unstuck
	if (g_isalive[id])
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r6.\wDESTRABAR^n")
	else
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r6.\dDESTRABAR^n")
	
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r7.\wCAMARA^n^n")

	// 5. Player Menu
	if (get_user_flags(id) & g_access_flag[ACCESS_ADMIN_MENU])
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r8.\w MENU VIP^n")
	else 
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r8.\d MENU VIP^n")	
	// 9. Admin menu
	if (get_user_flags(id) & g_access_flag[ACCESS_ADMIN_MENU])
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r9.\wADMINISTRACION")
	else
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r9.\dADMINISTRACION")
	
	// 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n^n\r0.\w Salir")
	
	show_menu(id, KEYSMENU, g_menu, -1, "Game Menu")
}


/*==============================================================
					MENU DE ARMAS DASH
===================================================================	*/
	show_menu_weapon(id)
{
	static len; len = 0
	
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\wElegir \wArmamento\r^n^n")
	
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1.\w Armamento Primario ^n\wEquipado\r: \y  %s^n", WEAPONNAMES[ArrayGetCell(g_primary_weaponids, g_primary[id])])

	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r2.\w Armamento Secundario^n\wEquipado\r: \y  %s^n^n", WEAPONNAMES[ArrayGetCell(g_secondary_weaponids, g_secondary[id])])

	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r3.\w Comprar Armamento^n")

	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r4.\w Comprar Armamento y No Mostrar El Menu^n")
	
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n\r0.\w Salir")
	
	show_menu(id, KEYSMENU, g_menu, -1, "Weapon Menu")
}

public menu_weapon(id, key)
{	
	switch (key)
	{
                case 0:
		{
			show_menu_buy1(id)
		}
                case 1:
		{
			show_menu_buy2(id)
		}
		case 2:
		{
			buy_weapons(id)
		}
		case 3:
		{
			g_nomenu[id] = 1
			buy_weapons(id)
		}
		case 4:
		{
			show_menu_weapon(id)
		}
		case 5:
		{
			show_menu_weapon(id)
		}
		case 6:
		{
			show_menu_weapon(id)
		}
		case 7:
		{
			show_menu_weapon(id)
		}
		case 8:
		{
			show_menu_weapon(id)
		}
	}
	
	return PLUGIN_HANDLED;
}

public buy_weapons(id)
{
	if (g_class[id] >= ZOMBIE || g_class[id] >= SURVIVOR) return PLUGIN_HANDLED;

	drop_weapons(id, 1)
	drop_weapons(id, 2)

	if (g_isbot[id])
	{
		g_primary[id] = random_num(0, ArraySize(g_primary_items) - 1)
		g_secondary[id] = random_num(0, ArraySize(g_secondary_items) - 1)
	}

        static weaponid, wname[32]
	weaponid = ArrayGetCell(g_primary_weaponids, g_primary[id])
	ArrayGetString(g_primary_items, g_primary[id], wname, charsmax(wname))
		
	give_item(id, wname)
	ExecuteHamB(Ham_GiveAmmo, id, MAXBPAMMO[weaponid], AMMOTYPE[weaponid], MAXBPAMMO[weaponid])

        static weaponid2, wname2[32]
	weaponid2 = ArrayGetCell(g_secondary_weaponids, g_secondary[id])
	ArrayGetString(g_secondary_items, g_secondary[id], wname2, charsmax(wname2))

	give_item(id, wname2)
	ExecuteHamB(Ham_GiveAmmo, id, MAXBPAMMO[weaponid2], AMMOTYPE[weaponid2], MAXBPAMMO[weaponid2])

	give_item(id, "weapon_hegrenade")
	give_item(id, "weapon_flashbang")
	give_item(id, "weapon_smokegrenade")

	/*if (g_level[id] >= 440)
	{
		cs_set_user_bpammo(id, CSW_HEGRENADE, 1)
		cs_set_user_bpammo(id, CSW_FLASHBANG, 1)
		cs_set_user_bpammo(id, CSW_SMOKEGRENADE, 1)
	}
	else if (g_level[id] >= 385)
	{
		cs_set_user_bpammo(id, CSW_HEGRENADE, 1)
		cs_set_user_bpammo(id, CSW_FLASHBANG, 1)
		cs_set_user_bpammo(id, CSW_SMOKEGRENADE, 1)
	}
	else if (g_level[id] >= 325)
	{
		cs_set_user_bpammo(id, CSW_HEGRENADE, 1)
		cs_set_user_bpammo(id, CSW_FLASHBANG, 1)
		cs_set_user_bpammo(id, CSW_SMOKEGRENADE, 1)
	}*/
	if (g_level[id] >= 250)
	{
		cs_set_user_bpammo(id, CSW_HEGRENADE, 1)
		cs_set_user_bpammo(id, CSW_FLASHBANG, 1)
		cs_set_user_bpammo(id, CSW_SMOKEGRENADE, 1)
	}
	else if (g_level[id] >= 220)
	{
		cs_set_user_bpammo(id, CSW_HEGRENADE, 1)
		cs_set_user_bpammo(id, CSW_FLASHBANG, 1)
		cs_set_user_bpammo(id, CSW_SMOKEGRENADE, 1)
	}
	else if (g_level[id] >= 175)
	{
		cs_set_user_bpammo(id, CSW_HEGRENADE, 1)
		cs_set_user_bpammo(id, CSW_FLASHBANG, 1)
		cs_set_user_bpammo(id, CSW_SMOKEGRENADE, 1)
	}
	else if (g_level[id] >= 135)
	{
		cs_set_user_bpammo(id, CSW_HEGRENADE, 3)
		cs_set_user_bpammo(id, CSW_FLASHBANG, 3)
		cs_set_user_bpammo(id, CSW_SMOKEGRENADE, 3)
	}
	else if (g_level[id] >= 100)
	{
		cs_set_user_bpammo(id, CSW_HEGRENADE, 3)
		cs_set_user_bpammo(id, CSW_FLASHBANG, 3)
		cs_set_user_bpammo(id, CSW_SMOKEGRENADE, 2)
	}
	else if (g_level[id] >= 70)
	{
		cs_set_user_bpammo(id, CSW_HEGRENADE, 3)
		cs_set_user_bpammo(id, CSW_FLASHBANG, 2)
		cs_set_user_bpammo(id, CSW_SMOKEGRENADE, 2)
	}
	else if (g_level[id] >= 45)
	{
		cs_set_user_bpammo(id, CSW_HEGRENADE, 2)
		cs_set_user_bpammo(id, CSW_FLASHBANG, 2)
		cs_set_user_bpammo(id, CSW_SMOKEGRENADE, 2)
	}
	else if (g_level[id] >= 25)
	{
		cs_set_user_bpammo(id, CSW_HEGRENADE, 1)
		cs_set_user_bpammo(id, CSW_FLASHBANG, 1)
		cs_set_user_bpammo(id, CSW_SMOKEGRENADE, 1)
	}
	else if (g_level[id] >= 10)
	{
		cs_set_user_bpammo(id, CSW_HEGRENADE, 1)
		cs_set_user_bpammo(id, CSW_FLASHBANG, 1)
		cs_set_user_bpammo(id, CSW_SMOKEGRENADE, 1)
	}
	else if (g_level[id] >= 0)
	{
		cs_set_user_bpammo(id, CSW_HEGRENADE, 1)
		cs_set_user_bpammo(id, CSW_FLASHBANG, 1)
		cs_set_user_bpammo(id, CSW_SMOKEGRENADE, 1)
	}

        g_canbuy[id] = 1

	return PLUGIN_HANDLED;
}

// Buy Menu 1
public show_menu_buy1(id)
{
	// Player dead?
	if (!g_isalive[id]) return;
	
	// Zombies, survivors or wesker get no guns
	if (g_class[id] >= SURVIVOR) return;
	
	static len, weap, maxloops
	len = 0
	maxloops = min(WPN_STARTID+7, WPN_MAXIDS)
	
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\wArmamento \y[Primario] \r[%d-%d]^n^n", WPN_STARTID+1, min(WPN_STARTID+7, WPN_MAXIDS))
	
	// 1-7. Weapon List
	for (weap = WPN_STARTID; weap < maxloops; weap++)
	{
		if (weap == g_primary[id])
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r%d.\d %s \y(ACTUAL)^n", weap-WPN_STARTID+1, WEAPONNAMES[ArrayGetCell(g_primary_weaponids, weap)])
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r%d.\w %s^n", weap-WPN_STARTID+1, WEAPONNAMES[ArrayGetCell(g_primary_weaponids, weap)])
	}
	
	// 8. Back 9. Next - 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n\r8.\w Anterior^n\r9.\w Siguiente^n^n\r0.\w Volver")
	
	show_menu(id, KEYSMENU, g_menu, -1, "Buy Menu 1")
}

// Buy Menu 2
show_menu_buy2(id)
{
	// Player dead?
	if (!g_isalive[id]) return;
	
	static len, weap, maxloops
	len = 0
	maxloops = ArraySize(g_secondary_items)
	
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\wArmamento \y[Secundario]^n^n")
	
	// 1-6. Weapon List
	for (weap = 0; weap < maxloops; weap++)
	{
		if (weap == g_secondary[id])
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r%d.\d %s \y(ACTUAL)^n", weap+1, WEAPONNAMES[ArrayGetCell(g_secondary_weaponids, weap)])
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r%d.\w %s^n", weap+1, WEAPONNAMES[ArrayGetCell(g_secondary_weaponids, weap)])
	}
	
	// 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n^n\r0.\w Volver")
	
	show_menu(id, KEYSMENU, g_menu, -1, "Buy Menu 2")
}

// Buy Menu 1
/*public menu_buy1(id, key)
{
	// Player dead?
	if (!g_isalive[id]) return PLUGIN_HANDLED;
	
	// Not normal human
	if (g_class[id] >= SURVIVOR) return PLUGIN_HANDLED;
	
	// Special keys / weapon list exceeded
	if (key >= MENU_KEY_BACK || WPN_SELECTION >= WPN_MAXIDS)
	{
		switch (key)
		{
			case MENU_KEY_BACK: // back
			{
				if (WPN_STARTID-7 >= 0) WPN_STARTID -= 7
			}
			case MENU_KEY_NEXT: // next
			{
				if (WPN_STARTID+7 < WPN_MAXIDS) WPN_STARTID += 7
			}
			case MENU_KEY_EXIT: // exit
			{
				show_menu_weapon(id)
				return PLUGIN_HANDLED;
			}
		}
		
		// Show buy menu again
		show_menu_buy1(id)
		return PLUGIN_HANDLED;
	}
	
	// Buy primary weapon
	buy_primary_weapon(id, WPN_SELECTION)
	
	return PLUGIN_HANDLED;
}

// Buy Primary Weapon
buy_primary_weapon(id, selection)
{
	// Get weapon's id and name
	g_primary[id] = selection

	show_menu_weapon(id)

	return PLUGIN_HANDLED;
}

// Buy Menu 2
public menu_buy2(id, key)
{
	switch (key)
	{
		case MENU_KEY_EXIT: // exit
		{
			show_menu_weapon(id)
			return PLUGIN_HANDLED;
		}
	}
		
	// Get weapon's id and name
	g_secondary[id] = key

	show_menu_weapon(id)

	return PLUGIN_HANDLED;
}*/


/*==========================================================================*/


// Category Weapons Menu
show_menu_category(id)
{
	// Player dead?
	if (!g_isalive[id]) return;
	

	// Zombies, survivors or wesker get no guns
	if (g_class[id] >= SURVIVOR) return;
	
	// Bots pick their weapons randomly / Random weapons setting enabled
	if (get_pcvar_num(cvar_randweapons))
	{
		buy_primary_weapon(id, random_num(0, ArraySize(g_primary_items) - 1))
		menu_buy2(id, random_num(0, ArraySize(g_secondary_items) - 1))
		return;
	}
	
	static len, userflags
	len = 0
	userflags = get_user_flags(id)
	
	// Title
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rCategoria de armas^n^n")
	
	// 1. Category A
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1.\w Categoria \rA \y[Nivel: 1 ~ %d]^n", g_max_level)
	
	// 2. Category B
	if (g_fame[id] >= g_fame_category[0] || (userflags & g_access_flag[ACCESS_WEAPONS_FREE]))
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r2.\w Categoria \rB \y[Fama: %d ~ %d]^n", g_fame_category[0], g_max_fame)
	else
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r2.\d Categoria \rB \y[Fama: %d ~ %d]^n", g_fame_category[0], g_max_fame)
		
	// 3. Category E
	if (g_fame[id] >= g_fame_category[1] || (userflags & g_access_flag[ACCESS_WEAPONS_FREE]))
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r3.\w Categoria \rE \y[Fama: %d ~ %d]^n^n", g_fame_category[1], g_max_fame)
	else
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r3.\d Categoria \rE \y[Fama: %d ~ %d]^n^n", g_fame_category[1], g_max_fame)
	
	// Note - 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rNota: \wLas armas de Categoria B hacen +50% danio^n^n\r0.\w Salir")
	
	show_menu(id, KEYSMENU, g_menu, -1, "Category Menu")
}
/*
// Buy Menu 1
public show_menu_buy1(id)
{
	// Player dead?
	if (!g_isalive[id]) return;
	
	// Zombies, survivors or wesker get no guns
	if (g_class[id] >= SURVIVOR) return;
	
	// Bots pick their weapons randomly / Random weapons setting enabled
	if (g_isbot[id])
	{
		buy_primary_weapon(id, random_num(0, ArraySize(g_primary_items) - 1))
		menu_buy2(id, random_num(0, ArraySize(g_secondary_items) - 1))
		return;
	}
	
	static len, weap, maxloops
	len = 0
	maxloops = min(WPN_STARTID+7, WPN_MAXIDS)
	
	// Title
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r[ZE] \yArma Primaria \r[%d-%d]^n^n", WPN_STARTID+1, min(WPN_STARTID+7, WPN_MAXIDS))
	
	// 1-7. Weapon List
	for (weap = WPN_STARTID; weap < maxloops; weap++)
	{
		if (g_level[id] >= ArrayGetCell(g_primary_levels, weap) || (get_user_flags(id) & g_access_flag[ACCESS_WEAPONS_FREE]))
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r%d.\w %s^n", weap-WPN_STARTID+1, WEAPONNAMES[ArrayGetCell(g_primary_weaponids, weap)])
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r%d.\d %s (\rMin Nivel \w%d\d)^n", weap-WPN_STARTID+1, WEAPONNAMES[ArrayGetCell(g_primary_weaponids, weap)], ArrayGetCell(g_primary_levels, weap))
	}
	
	// 8. Back 9. Next - 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n\r8.\w Anterior^n\r9.\w Siguiente^n^n\r0.\w Salir")
	
	show_menu(id, KEYSMENU, g_menu, -1, "Buy Menu 1")
}

// Buy Menu 2
show_menu_buy2(id)
{
	// Player dead?
	if (!g_isalive[id]) return;
	
	static len, weap, maxloops
	len = 0
	maxloops = ArraySize(g_secondary_items)
	
	// Title
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r[ZE] \yArma Secundaria^n^n")
	
	// 1-6. Weapon List
	for (weap = 0; weap < maxloops; weap++)
	{
		if (g_level[id] >= ArrayGetCell(g_secondary_levels, weap) || (get_user_flags(id) & g_access_flag[ACCESS_WEAPONS_FREE]))
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r%d.\w %s^n", weap+1, WEAPONNAMES[ArrayGetCell(g_secondary_weaponids, weap)])
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r%d.\d %s (\rMin Nivel \w%d\d)^n", weap+1, WEAPONNAMES[ArrayGetCell(g_secondary_weaponids, weap)], ArrayGetCell(g_secondary_levels, weap))
	}
	
	// 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n^n\r0.\w Salir")
	
	show_menu(id, KEYSMENU, g_menu, -1, "Buy Menu 2")
}*/

// Extra Items Menu
show_menu_extras(id)
{
	// Player dead?
	if (!g_isalive[id]) return;
	
	static menuid, item, team, buffer[32]
	
	// Title
	formatex(g_menu, charsmax(g_menu), "\r[ZE] \yItems Extra [%s]\r", g_class[id] == NEMESIS ? "Nemesis" : g_class[id] == ALIEN ? "Alien" : g_class[id] == ASSASSIN ? "Assassin" : g_class[id] == DEMON ? "Demon" 
	: g_class[id] == SURVIVOR ? "Survivor" : g_class[id] == WESKER ? "Wesker" : g_class[id] == SNIPER ? "Sniper" : g_class[id] == PREDATOR ? "Predator" : g_class[id] == ANGEL ? "Angel" : g_class[id] >= ZOMBIE ? "Zombie" : "Humano")
	menuid = menu_create(g_menu, "menu_extras")
	
	// Item List
	for (item = 0; item < g_extraitem_i; item++)
	{
		// Retrieve item's team
		team = ArrayGetCell(g_extraitem_team, item)
		
		// Item not available to player's team/class
		if (((g_class[id] >= ZOMBIE && g_class[id] < NEMESIS) && !(team & ZP_TEAM_ZOMBIE)) || (g_class[id] < SURVIVOR && !(team & ZP_TEAM_HUMAN)) || (g_class[id] == NEMESIS && !(team & ZP_TEAM_NEMESIS)) || (g_class[id] == ALIEN && !(team & ZA_TEAM_ALIEN)) || 
		(g_class[id] == ASSASSIN && !(team & ZP_TEAM_NEMESIS)) || (g_class[id] == DEMON && !(team & ZP_TEAM_NEMESIS)) || (g_class[id] == SURVIVOR && !(team & ZP_TEAM_SURVIVOR)) || (g_class[id] == WESKER && !(team & ZA_TEAM_WESKER)) || (g_class[id] == SNIPER && !(team & ZP_TEAM_SURVIVOR)) || (g_class[id] == PREDATOR && !(team & ZP_TEAM_SURVIVOR)) || (g_class[id] == ANGEL && !(team & ZP_TEAM_SURVIVOR)))
			continue;
		
		// Check if it's one of the hardcoded items, check availability, set translated caption
		switch (item)
		{
			case EXTRA_NVISION:
			{
				if (!get_pcvar_num(cvar_extranvision)) continue;
				formatex(buffer, charsmax(buffer), "Vision Nocturna (una ronda)")
			}
			case EXTRA_FIRE:
			{
				if (!get_pcvar_num(cvar_extraitems)) continue;
				formatex(buffer, charsmax(buffer), "G. de Fuego")
			}
			case EXTRA_FROST:
			{
				if (!get_pcvar_num(cvar_extraitems)) continue;
				formatex(buffer, charsmax(buffer), "G. de Frost")
			}
			case EXTRA_GAS:
			{
				if (!get_pcvar_num(cvar_extraitems)) continue;
				formatex(buffer, charsmax(buffer), "Gas Balon")
			}
			case EXTRA_ANTI:
			{
				if (!get_pcvar_num(cvar_extraitems)) continue;
				formatex(buffer, charsmax(buffer), "Bomba de Antidoto")
			}
			case EXTRA_ANTIDOTE:
			{
				if (!get_pcvar_num(cvar_extraantidote) || g_antidotecounter >= get_pcvar_num(cvar_antidotelimit)) continue;
				formatex(buffer, charsmax(buffer), "Antidoto del Virus-T")
			}
			case EXTRA_MADNESS:
			{
				if (!get_pcvar_num(cvar_extramadness) || g_madnesscounter >= get_pcvar_num(cvar_madnesslimit)) continue;
				formatex(buffer, charsmax(buffer), "Furia Zombie")
			}
			case EXTRA_INFBOMB:
			{
				if (!get_pcvar_num(cvar_extrainfbomb) || g_infbombcounter >= get_pcvar_num(cvar_infbomblimit)) continue;
				formatex(buffer, charsmax(buffer), "Bomba de Infeccion")
			}
			case EXTRA_ANTI_ICE:
			{
				if (!get_pcvar_num(cvar_extra_anti_ice) || g_anti_ice_counter >= get_pcvar_num(cvar_anti_ice_limit)) continue;
				formatex(buffer, charsmax(buffer), "Anti-Congelacion (una ronda)")
			}
			case EXTRA_ANTI_FIRE:
			{
				if (!get_pcvar_num(cvar_extra_anti_fire) || g_anti_fire_counter >= get_pcvar_num(cvar_anti_fire_limit)) continue;
				formatex(buffer, charsmax(buffer), "Anti-Incendiaria (una ronda)")
			}
			default:
			{
				if (item >= EXTRA_WEAPONS_STARTID && item <= EXTRAS_CUSTOM_STARTID-1 && !get_pcvar_num(cvar_extraweapons)) continue;
				ArrayGetString(g_extraitem_name, item, buffer, charsmax(buffer))
			}
		}
		
		// Add Item Name, Level and Cost
		if (g_level[id] < ArrayGetCell(g_extraitem_lvl, item) && !(get_user_flags(id) & g_access_flag[ACCESS_EXTRA_ITEMS_FREE]))
			formatex(g_menu, charsmax(g_menu), "\d%s (Min Nivel \r%d\d)", buffer, ArrayGetCell(g_extraitem_lvl, item))
		else if (g_ammopacks[id][0] < ArrayGetCell(g_extraitem_cost, item))
			formatex(g_menu, charsmax(g_menu), "\d%s \d%d Apps", buffer, ArrayGetCell(g_extraitem_cost, item))
		else
			formatex(g_menu, charsmax(g_menu), "\w%s \r%d Apps", buffer, ArrayGetCell(g_extraitem_cost, item))
		buffer[0] = item
		buffer[1] = 0
		menu_additem(menuid, g_menu, buffer)
	}
	
	// No items to display?
	if (menu_items(menuid) <= 0)
	{
		zp_colored_print(id, "^x04[ZE]^x01 Comando no Disponible.")
		return;
	}
	
	// Back - Next - Exit
	menu_setprop(menuid, MPROP_BACKNAME, "\wAnterior")
	menu_setprop(menuid, MPROP_NEXTNAME, "\wSiguiente")
	menu_setprop(menuid, MPROP_EXITNAME, "\wSalir")
		
	// If remembered page is greater than number of pages, clamp down the value
	MENU_PAGE_EXTRAS = min(MENU_PAGE_EXTRAS, menu_pages(menuid)-1)
	
	menu_display(id, menuid, MENU_PAGE_EXTRAS)
}

// Declarar variable global para la clase humana seleccionada temporalmente
new g_selected_human_class[MAX_PLAYERS + 1]; 

// Mostrar el menú de clases humanas
public show_menu_hclass(id)
{
    // Jugador desconectado
    if (!g_isconnected[id]) return;
    
    // Los bots seleccionan su clase humana al azar
    if (g_isbot[id])
    {
        g_humanclassnext[id] = random_num(0, g_hclass_i - 1);
        return;
    }
    
    static menuid, class, buffer[32], buffer2[72];
    
    // Título del menú
    formatex(g_menu, charsmax(g_menu), "\r[ZE]\y Clases de Humanos\r");
    menuid = menu_create(g_menu, "menu_hclass");
    
    // Lista de clases
    for (class = 0; class < g_hclass_i; class++)
    {
        // Recuperar nombre y descripción de la clase
        ArrayGetString(g_hclass_name, class, buffer, charsmax(buffer));
        ArrayGetString(g_hclass_info, class, buffer2, charsmax(buffer2));
        
        // Agregar la clase al menú
        if (g_level[id] >= ArrayGetCell(g_hclass_lvl, class) || (get_user_flags(id) & g_access_flag[ACCESS_CLASSES_FREE]))
        { 
            if (class == g_humanclass[id])
                formatex(g_menu, charsmax(g_menu), "\g%s  %s", buffer, buffer2 ? "\y(ACTUAL)" : ""); 
            else
                formatex(g_menu, charsmax(g_menu), "%s ", buffer);
        }
        else 
            formatex(g_menu, charsmax(g_menu), "\d%s \r[\yVIP\r]", buffer);
        
        buffer[0] = class;
        buffer[1] = 0;
        buffer[2] = 0;
        menu_additem(menuid, g_menu, buffer);
    }
    
    // Configurar propiedades del menú
    menu_setprop(menuid, MPROP_BACKNAME, "\wAnterior");
    menu_setprop(menuid, MPROP_NEXTNAME, "\wSiguiente");
    menu_setprop(menuid, MPROP_EXITNAME, "\wSalir");
    
    // Controlar la página del menú
    MENU_PAGE_HCLASS = min(MENU_PAGE_HCLASS, menu_pages(menuid) - 1);
    
    // Mostrar el menú al jugador
    menu_display(id, menuid, MENU_PAGE_HCLASS);
}


// Mostrar información de la clase humana antes de elegir
public show_human_class_info(id, classid)
{
    // Buffer para almacenar el texto del menú
    static buffer[256], name[32], description[128], len;
    len = 0;

    // Recuperar el nombre de la clase y la descripción
    ArrayGetString(g_hclass_name, classid, name, charsmax(name));
    ArrayGetString(g_hclass_info, classid, description, charsmax(description));

    // Recuperar estadísticas de la clase
    new vida = ArrayGetCell(g_hclass_hp, classid) + ammount_hhealth(g_level[id]);
    new velocidad = ArrayGetCell(g_hclass_spd, classid) + floatround(ammount_hspeed(g_level[id]));
    new gravedad = floatround(Float:ArrayGetCell(g_hclass_grav, classid) * 800.0 - floatround(Float:ammount_hgravity(g_level[id]) * 800.0));

    // Formatear el menú con la información de la clase
    len += formatex(buffer[len], charsmax(buffer) - len, "\yCLASE HUMANA - %s^n^n", name);
    len += formatex(buffer[len], charsmax(buffer) - len, "\yDESCRIPCIÓN\r:^n \r- \w%s^n^n", description);
    len += formatex(buffer[len], charsmax(buffer) - len, "\yESTADÍSTICAS BASE\r:^n");
    len += formatex(buffer[len], charsmax(buffer) - len, "\r-\wVIDA\r: \y%d^n", vida);
    len += formatex(buffer[len], charsmax(buffer) - len, "\r-\wVELOCIDAD\r: \y%d^n", velocidad);
    len += formatex(buffer[len], charsmax(buffer) - len, "\r-\wGRAVEDAD\r: \y%d^n", gravedad);

    // Mostrar el menú para confirmar la selección de clase
    show_human_class_confirm_menu(id, buffer);
}

// Mostrar el menú para confirmar la selección de clase humana
public show_human_class_confirm_menu(id, buffer[])
{
    static menuid;

    // Crear el menú de confirmación basado en la información
    menuid = menu_create(buffer, "menu_hclass_confirm");

    // Asignar opciones para el menú
    menu_additem(menuid, "Elegir Clase", "0", 0);
    menu_additem(menuid, "Volver", "1", 0);

    // Mostrar el menú al jugador
    menu_display(id, menuid, 0);
}

// Función para manejar la confirmación de la clase humana seleccionada
public menu_hclass_confirm(id, menuid, item)
{
    // Si el jugador cierra el menú, no hacer nada
    if (item == MENU_EXIT) return PLUGIN_HANDLED;

    switch (item)
    {
        case 1: // Volver al menú de clases humanas
        {
            show_menu_hclass(id);
            return PLUGIN_HANDLED;
        }
        case 0: // Confirmar selección de clase humana
        {
            // Guardar la clase humana seleccionada previamente
            g_humanclassnext[id] = g_selected_human_class[id]; 

            // Recuperar el nombre de la clase para confirmación
            static name[32];
            ArrayGetString(g_hclass_name, g_humanclassnext[id], name, charsmax(name));

            // Mostrar la confirmación de la clase seleccionada
            zp_colored_print(id, "^x04[ZE]^x01 En tu próxima reaparición tu clase será: %s", name);
        }
    }

    // Destruir el menú
    menu_destroy(menuid);
    return PLUGIN_HANDLED;
}
// Zombie Class Menu
public show_menu_zclass(id)
{	
	// Player disconnected
	if (!g_isconnected[id]) return;
	
	// Bots pick their zombie class randomly
	if (g_isbot[id])
	{
		g_zombieclassnext[id] = random_num(0, g_zclass_i - 1)
		return;
	}
	
	static menuid, class, buffer[32], buffer2[72]
	
	// Title
	formatex(g_menu, charsmax(g_menu), "\r[ZE]\y Clases de Zombies\r")
	menuid = menu_create(g_menu, "menu_zclass")
	
	// Class List
	for (class = 0; class < g_zclass_i; class++)
	{
		// Retrieve name and info
		ArrayGetString(g_zclass_name, class, buffer, charsmax(buffer))
		ArrayGetString(g_zclass_info, class, buffer2, charsmax(buffer2))
		
		// Add to menu
		if (g_level[id] >= ArrayGetCell(g_zclass_lvl, class) || (get_user_flags(id) & g_access_flag[ACCESS_CLASSES_FREE]))
		{ 
			if (class == g_zombieclass[id])
				formatex(g_menu, charsmax(g_menu), "\g%s  %s", buffer, buffer2 ? "\y(ACTUAL)" : "")
			else
				formatex(g_menu, charsmax(g_menu), "%s", buffer, buffer2)
		}
		else 
			formatex(g_menu, charsmax(g_menu), "\d%s \r[\yVIP\r]", buffer)
		
		buffer[0] = class
		buffer[1] = 0
		buffer[2] = 0
		menu_additem(menuid, g_menu, buffer)
	}
	
	// Back - Next - Exit
	menu_setprop(menuid, MPROP_BACKNAME, "\wAnterior")
	menu_setprop(menuid, MPROP_NEXTNAME, "\wSiguiente")
	menu_setprop(menuid, MPROP_EXITNAME, "\wSalir")
	
	// If remembered page is greater than number of pages, clamp down the value
	MENU_PAGE_ZCLASS = min(MENU_PAGE_ZCLASS, menu_pages(menuid)-1)
	
	menu_display(id, menuid, MENU_PAGE_ZCLASS)
}


// Skill Main Menu
show_menu_skill(id)
{
	static len; len = 0
	
	// Title
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rHabilidades por puntos^n^n")
	
	// 1. - 3. - 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1. \wHabilidades de \yHumano^n\r2. \wHabilidades de \yZombie^n^n\r3. \wIntercambio de \yPuntos^n^n\r0.\w Salir")
	
	show_menu(id, KEYSMENU, g_menu, -1, "Skill Menu")
}

// Upgrade Skill Menu
show_menu_upgrade(id)
{
	static len; len = 0
	
	// Title
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rHabilidades de %s^n^n\yTienes \w%s\y puntos para gastar^nHas gastado un total de \w%s\y puntos^nLos puntos se consiguen recogiendo los cofres^n^n", 
	SKILL_MENU == 0 ? "humano" : "zombie", add_point(g_points[id][SKILL_MENU]), add_point(g_usedpoints[id][SKILL_MENU]))
	
	// 1. - 5.
	for (new i = 0; i < 5; i++)
    	{
		if (g_skill_points[id][SKILL_MENU][i] < g_skill_max[SKILL_MENU][i])
		{
			if (g_points[id][SKILL_MENU] >= skill_cost(g_skill_points[id][SKILL_MENU][i]))
				len += formatex(g_menu[len], charsmax(g_menu) - len, "\r%d. \y%s \w(%d punto%s) \r(%d/%d)^n", i+1, g_skill_names[SKILL_MENU][i], skill_cost(g_skill_points[id][SKILL_MENU][i]), skill_cost(g_skill_points[id][SKILL_MENU][i]) == 1 ? "" : "s", g_skill_points[id][SKILL_MENU][i], g_skill_max[SKILL_MENU][i])
			else
				len += formatex(g_menu[len], charsmax(g_menu) - len, "\r%d. \d%s (%d punto%s) \r(%d/%d)^n", i+1, g_skill_names[SKILL_MENU][i], skill_cost(g_skill_points[id][SKILL_MENU][i]), skill_cost(g_skill_points[id][SKILL_MENU][i]) == 1 ? "" : "s", g_skill_points[id][SKILL_MENU][i], g_skill_max[SKILL_MENU][i])
		}
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r%d. \d%s \r[%d/%d]^n", i+1, g_skill_names[SKILL_MENU][i], g_skill_points[id][SKILL_MENU][i], g_skill_max[SKILL_MENU][i])
	}
	
	// 6.
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n\r6.\%s Devolver puntos gastados", g_usedpoints[id][SKILL_MENU] >= 1 ? "w" : "d")
	
	// 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n^n\r0.\w Salir")
	
	show_menu(id, KEYSMENU, g_menu, -1, "Upgrade Menu")
}

// Exchange Points Menu
show_menu_exchange(id)
{
	static len; len = 0
	
	// Title
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rIntercambio de puntos^n^n\yTienes: \w%s \yPH | \w%s \yPZ^n^n", add_point(g_points[id][0]), add_point(g_points[id][1]))
	
	if (g_points[id][1] >= 2)
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1. \w1 Punto Zombie (\yRequerido: \w2 \yPuntos Humano\w)^n")
	else
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1. \d1 Punto Zombie (\rRequerido: \w2 \rPuntos Humano\d)^n")
	if (g_points[id][1] >= 2)
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r2. \w1 Punto Humano (\yRequerido: \w2 \yPuntos Zombie\w)^n")
	else
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r2. \d1 Punto Humano (\rRequerido: \w2 \rPuntos Zombie\d)^n")
	if (g_points[id][0])
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r3. \w250 EXP (\yRequerido: \w1 \yPunto Humano\w)^n")
	else
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r3. \d250 EXP (\rRequerido: \w1 \rPunto Humano\d)^n")
	if (g_points[id][1])
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r4. \w250 EXP (\yRequerido: \w1 \yPunto Zombie\w)")
	else
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r4. \d250 EXP (\rRequerido: \w1 \rPunto Zombie\d)")
	
	// 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n^n\r0.\w Salir")
	
	show_menu(id, KEYSMENU, g_menu, -1, "Exchange Menu")
}

// Quest Menu
show_menu_quest(id)
{
	static len; len = 0
	
	// Title
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r[ZE] \yMenu de Misiones^n^n")
	
	// 1. - 8.
	for (new i = 0; i < 8; i++)
    	{
		// If is in quest don't show the others
		if (g_quest[id] == 0)
		{
		         if (g_questcompleted[id][i] < g_quest_max[0][i])
			         len += formatex(g_menu[len], charsmax(g_menu) - len, "\r%d. \w%s^n", i+1, g_quest_names[0][i])
		         else
		                  len += formatex(g_menu[len], charsmax(g_menu) - len, "\r%d. \d%s\r [Completado]^n", i+1, g_quest_names[0][i])
		}	 
			 
		else if (g_quest[id] == i + 1)
		{
			if (g_questkill[id][i] >= quest_cost(g_questcompleted[id][i]))
				len += formatex(g_menu[len], charsmax(g_menu) - len, "\r%d. [COMPLETAR] \w%s^n", i+1, g_quest_names[0][i])
			else
				len += formatex(g_menu[len], charsmax(g_menu) - len, "\rEstado:\d %d/%d^n\rLimites:\d %d/%d^n\rRondas:\d %d^n^n\rDescripcion:^n\d%s\y %d\d %s^n\rGanancia:^n\y%d\d de Experiencia^n^n", 
				g_questkill[id][i], quest_cost(g_questcompleted[id][i]), g_questcompleted[id][i], g_quest_max[0][i], g_questrounds[id], g_quest_names[2][i], quest_cost(g_questcompleted[id][i]), g_quest_names[1][i], experience + experience_cost(g_questcompleted[id][i]))
			break;
		}
	}
	
	// Cancel quest
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n\r9.\%s Cancelar mision actual", g_quest[id] ? "w" : "d")
		
	// 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n^n\r0.\w Exit")
	
	show_menu(id, KEYSMENU, g_menu, -1, "Quest Menu")
}

// User/Information Menu
public show_menu_user(id)
{
	static menu[350], len
	len = 0
	
	// Title
	len += formatex(menu[len], charsmax(menu) - len, "\r[ZE] \yOPCIONES DE USUARIO^n^n")
	
	len += formatex(menu[len], charsmax(menu) - len, "\r1. \wElegir Colores^n")
	
	len += formatex(menu[len], charsmax(menu) - len, "\r2. \wLista de Niveles^n^n")

	len += formatex(menu[len], charsmax(menu) - len, "\r3. \wOpciones de HUD General^n^n")

	if(!invisible[id]){
		len += formatex(menu[len], charsmax(menu) - len, "\r4. \wHumanos invisibles\r: \yNo^n")	
	}
	else
		{
			len += formatex(menu[len], charsmax(menu) - len, "\r4. \wHumanos invisibles\r: \ySi^n")
	}

	if(!ModelMode[id])
		{
			len += formatex(menu[len], charsmax(menu) - len, "\r5. \wSkin desactivadas\r: \yNo^n")
		}
		else
		{
			len += formatex(menu[len], charsmax(menu) - len, "\r5. \wSkin desactivadas\r: \ySi^n")
		}

		if(!FogMode[id])
		{
			len += formatex(menu[len], charsmax(menu) - len, "\r6. \wNiebla desactivada\r: \yNo^n^n")
		}
		else
		{
			len += formatex(menu[len], charsmax(menu) - len, "\r6. \wNiebla desactivada\r: \ySi^n^n")
		}

	len += formatex(menu[len], charsmax(menu) - len, "\r9. \wVincular cuenta")
	
	// 0. Exit
	len += formatex(menu[len], charsmax(menu) - len, "^n\r0.\w Salir")
	
	show_menu(id, KEYSMENU, menu, -1, "User Menu")	
}

// Personalize Menu
show_menu_personalize(id)
{
	static len; len = 0
	
	// Title
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r[ZE] \yMENU DE COLORES^n^n")
	
	// 1. - 2.
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1. \wVision Noctura^n\r2. \wLinterna^n")
	
	// 3. - 5.
	if (get_pcvar_num(cvar_huddisplay))
	{
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r3. \wHUD^n")
	}
	else
	{
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r3. \dHUD^n")
	}
	
	// 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n^n\r0. \wSalir")
	
	show_menu(id, KEYSMENU, g_menu, -1, "Personalize Menu")
}

// HUD MENU DASH

show_menu_hud1(id)
{
	static len; len = 0
	
	// Title
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r[ZE] \yOPCIONES DE HUD GENERAL^n^n")
	
	// 1. - 4. - 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1. \wMover hacia Arriba^n\r2. \wMover hacia Abajo^n^n\r3. \wMover hacia la Izquierda^n\r4. \wMover hacia la Derecha^n^n")

	if (get_pcvar_num(cvar_huddisplay))
	{
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r5. \wEfecto del HUD \y(%sctivado)^n", g_hud_stats_t[id] == 1 ? "A" : "Desa")
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r6. \wEstilos del HUD^n")
	}
	else
	{
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r5. \dEfecto del HUD \y(%sctivado)^n", g_hud_stats_t[id] == 1 ? "A" : "Desa")
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r6. \wEstilos del HUD^n")
	}

	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n^n\r0. \wSalir")
	show_menu(id, KEYSMENU, g_menu, -1, "HUD1 Menu")
}

// HUD Menu
show_menu_hud(id)
{
	static len; len = 0
	
	// Title
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r[ZE] \yMover HUD hacia...^n^n")
	
	// 1. - 4. - 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1. \wArriba^n\r2. \wAbajo^n\r3. \wIzquierda^n\r4. \wDerecha^n^n\r0. \wSalir")
	
	show_menu(id, KEYSMENU, g_menu, -1, "HUD Menu")
}

// HUD Menu
show_menu_cambiar_hud(id)
{
	static len; len = 0
	
	// Title
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r[ZE] \yEstilos del HUD^n^n")
	
	// 1. - 3. - 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1. \wNormal con corchetes %s^n", g_hud[id] == 0 ? "\r(Actual)" : "")
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r2. \wClasico con corchetes %s^n^n", g_hud[id] == 1 ? "\r(Actual)" : "")
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r0. \wSalir")
	
	show_menu(id, KEYSMENU, g_menu, -1, "HUD_CAMBIAR Menu")
}

show_menu_cambiar_weapon(id)
{
	static len; len = 0
	
	// Title
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r[ZE] \yCambiar de Armas^n^n")
	
	// 1. - 3. - 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1. \wLancelotgames 1 %s^n", g_weapon[id] == 0 ? "\r(Actual)" : "")
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r2. \wLancelotgames 2 %s^n", g_weapon[id] == 1 ? "\r(Actual)" : "")
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r3. \wLancelotgames 3 %s^n^n", g_weapon[id] == 2 ? "\r(Actual)" : "")
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r0. \wSalir")
	
	show_menu(id, KEYSMENU, g_menu, -1, "WEAPON_CAMBIAR Menu")
}

// Colors Menu
show_menu_colors(id)
{
	static len; len = 0
	
	// Title
	switch (COLOR_MENU)
	{
		case 0: len += formatex(g_menu[len], charsmax(g_menu) - len, "\r[ZE] \yVision Nocturna^n^n")
		case 1: len += formatex(g_menu[len], charsmax(g_menu) - len, "\r[ZE] \yLinterna^n^n")
		case 2: len += formatex(g_menu[len], charsmax(g_menu) - len, "\r[ZE] \yHUD^n^n")
	}
	
	// Options
	switch (COLOR_MENU)
	{
		case 0:
		{
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1. \wBlanco%s^n", g_nvgred[id] == 255 && g_nvggreen[id] == 255 && g_nvgblue[id] == 255 ? " \y(Actual)" : "")
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r2. \wRojo%s^n", g_nvgred[id] == 255 && g_nvggreen[id] == 0 && g_nvgblue[id] == 0 ? " \y(Actual)" : "")
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r3. \wVerde%s^n", g_nvgred[id] == 0 && g_nvggreen[id] == 255 && g_nvgblue[id] == 0 ? " \y(Actual)" : "")
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r4. \wAmarillo%s^n", g_nvgred[id] == 255 && g_nvggreen[id] == 255 && g_nvgblue[id] == 0 ? " \y(Actual)" : "")
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r5. \wCeleste%s^n", g_nvgred[id] == 0 && g_nvggreen[id] == 255 && g_nvgblue[id] == 255 ? " \y(Actual)" : "")
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r6. \wAzul%s^n", g_nvgred[id] == 0 && g_nvggreen[id] == 0 && g_nvgblue[id] == 255 ? " \y(Actual)" : "")
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r7. \wColVioleta%s^n", g_nvgred[id] == 255 && g_nvggreen[id] == 0 && g_nvgblue[id] == 100 ? " \y(Actual)" : "")
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r8. \wNaranja%s^n", g_nvgred[id] == 255 && g_nvggreen[id] == 100 && g_nvgblue[id] == 0 ? " \y(Actual)" : "")
		}
		case 1:
		{
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1. \wBlanco%s^n", g_flashred[id] == 255 && g_flashgreen[id] == 255 && g_flashblue[id] == 255 ? " \y(Actual)" : "")
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r2. \wRojo%s^n", g_flashred[id] == 255 && g_flashgreen[id] == 0 && g_flashblue[id] == 0 ? " \y(Actual)" : "")
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r3. \wVerde%s^n", g_flashred[id] == 0 && g_flashgreen[id] == 255 && g_flashblue[id] == 0 ? " \y(Actual)" : "")
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r4. \wAmarillo%s^n", g_flashred[id] == 255 && g_flashgreen[id] == 255 && g_flashblue[id] == 0 ? " \y(Actual)" : "")
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r5. \wCeleste%s^n", g_flashred[id] == 0 && g_flashgreen[id] == 255 && g_flashblue[id] == 255 ? " \y(Actual)" : "")
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r6. \wAzul%s^n", g_flashred[id] == 0 && g_flashgreen[id] == 0 && g_flashblue[id] == 255 ? " \y(Actual)" : "")
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r7. \wVioleta%s^n", g_flashred[id] == 255 && g_flashgreen[id] == 0 && g_flashblue[id] == 100 ? " \y(Actual)" : "")
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r8. \wNaranja%s^n", g_flashred[id] == 255 && g_flashgreen[id] == 100 && g_flashblue[id] == 0 ? " \y(Actual)" : "")
		}
		case 2:
		{
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1. \wBlanco%s^n", g_hudred[id] == 255 && g_hudgreen[id] == 255 && g_hudblue[id] == 255 ? " \y(Actual)" : "")
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r2. \wRojo%s^n", g_hudred[id] == 255 && g_hudgreen[id] == 0 && g_hudblue[id] == 0 ? " \y(Actual)" : "")
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r3. \wVerde%s^n", g_hudred[id] == 0 && g_hudgreen[id] == 255 && g_hudblue[id] == 0 ? " \y(Actual)" : "")
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r4. \wAmarillo%s^n", g_hudred[id] == 255 && g_hudgreen[id] == 255 && g_hudblue[id] == 0 ? " \y(Actual)" : "")
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r5. \wCeleste%s^n", g_hudred[id] == 0 && g_hudgreen[id] == 255 && g_hudblue[id] == 255 ? " \y(Actual)" : "")
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r6. \wAzul%s^n", g_hudred[id] == 0 && g_hudgreen[id] == 0 && g_hudblue[id] == 255 ? " \y(Actual)" : "")
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r7. \wVioleta%s^n", g_hudred[id] == 255 && g_hudgreen[id] == 0 && g_hudblue[id] == 100 ? " \y(Actual)" : "")
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r8. \wNaranja%s^n", g_hudred[id] == 255 && g_hudgreen[id] == 100 && g_hudblue[id] == 0 ? " \y(Actual)" : "")
		}
	}
	
	// 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n^n\r0. \wSalir")
	
	show_menu(id, KEYSMENU, g_menu, -1, "Color Menu")
}

// Statistics Menu
show_menu_statistics1(id)
{
	static szRangeNext[12], szNum, szNum2, len
	if (g_rangelevel[id] < g_max_range) ArrayGetString(g_range_names, g_rangelevel[id], szRangeNext, charsmax(szRangeNext))
	len = szNum = szNum2 = 0
	if (g_level[id] < g_max_level) szNum += cost_levelup((g_level[id]+1))
	if (g_rangelevel[id] < g_max_range) szNum2 += cost_rangeup((g_rangelevel[id]+1))
	
	// Get player aiming
	static models[32], hats[32], glows[32], knifes[32], grenades[32], hud[32], weapon[32]
	
	if (g_models[id] == 0)
		formatex(models, charsmax(models), "Desactivado")
	else if (g_models[id] == 1)
		formatex(models, charsmax(models), "S.W.R.C")
	else if (g_models[id] == 2)
		formatex(models, charsmax(models), "Elite Combine")
	else if (g_models[id] == 3)
		formatex(models, charsmax(models), "Dallas")
	else if (g_models[id] == 4)
		formatex(models, charsmax(models), "Carlitos")
	else if (g_models[id] == 5)
		formatex(models, charsmax(models), "Walter")
	else if (g_models[id] == 6)
		formatex(models, charsmax(models), "Spy")
	else if (g_models[id] == 7)
		formatex(models, charsmax(models), "Skaynet")	
	else if (g_models[id] == 8)
		formatex(models, charsmax(models), "Mr. Foster")
	else if (g_models[id] == 9)
		formatex(models, charsmax(models), "Mike Noble")
	else if (g_models[id] == 10)
		formatex(models, charsmax(models), "VIP")
	else if (g_models[id] == 11)
		formatex(models, charsmax(models), "Chickenator")
	else if (g_models[id] == 12)
		formatex(models, charsmax(models), "Goku")	
		
	if (g_hats[id] == 0)
		formatex(hats, charsmax(hats), "Desactivado")
	else if (g_hats[id] == 1)
		formatex(hats, charsmax(hats), "Bandera Lancelot")	
	else if (g_hats[id] == 2)
		formatex(hats, charsmax(hats), "Knuckles")
	else if (g_hats[id] == 3)
		formatex(hats, charsmax(hats), "Santa")
	else if (g_hats[id] == 4)
		formatex(hats, charsmax(hats), "Cannibal")
	else if (g_hats[id] == 5)
		formatex(hats, charsmax(hats), "Bomba")
	else if (g_hats[id] == 6)
		formatex(hats, charsmax(hats), "Clon")	
	else if (g_hats[id] == 7)
		formatex(hats, charsmax(hats), "Clon 2")		
	else if (g_hats[id] == 8)
		formatex(hats, charsmax(hats), "Dr. Doom")	
	else if (g_hats[id] == 9)
		formatex(hats, charsmax(hats), "Sheih")
	else if (g_hats[id] == 10)
		formatex(hats, charsmax(hats), "Svarshik")
	else if (g_hats[id] == 11)
		formatex(hats, charsmax(hats), "Gazowa")
	else if (g_hats[id] == 12)
		formatex(hats, charsmax(hats), "Marsjanin")
	else if (g_hats[id] == 13)
		formatex(hats, charsmax(hats), "Alien")
	else if (g_hats[id] == 14)
		formatex(hats, charsmax(hats), "Zelazny")
	else if (g_hats[id] == 15)
		formatex(hats, charsmax(hats), "Mummy")
	else if (g_hats[id] == 16)
		formatex(hats, charsmax(hats), "Diabel")
	else if (g_hats[id] == 17)
		formatex(hats, charsmax(hats), "Doccabi")
	else if (g_hats[id] == 18)
		formatex(hats, charsmax(hats), "Bruja")
	else if (g_hats[id] == 19)
		formatex(hats, charsmax(hats), "Frankenstein")		
	else if (g_hats[id] == 20)
		formatex(hats, charsmax(hats), "Monin")	
	else if (g_hats[id] == 21)
		formatex(hats, charsmax(hats), "Scream")	
	else if (g_hats[id] == 22)
		formatex(hats, charsmax(hats), "Jack")	
	else if (g_hats[id] == 23)
		formatex(hats, charsmax(hats), "Futbolista")	
	else if (g_hats[id] == 24)
		formatex(hats, charsmax(hats), "Darkvader")	
	else if (g_hats[id] == 25)
		formatex(hats, charsmax(hats), "Rotwaila")	
	else if (g_hats[id] == 26)
		formatex(hats, charsmax(hats), "Mario")	
		
	if (g_glows[id] == 0)
		formatex(glows, charsmax(glows), "Desactivado")
	else if (g_glows[id] == 1)
		formatex(glows, charsmax(glows), "Rojo")
	else if (g_glows[id] == 2)
		formatex(glows, charsmax(glows), "Verde")
	else if (g_glows[id] == 3)
		formatex(glows, charsmax(glows), "Azul")
	else if (g_glows[id] == 4)
		formatex(glows, charsmax(glows), "Amarilllo")
	else if (g_glows[id] == 5)
		formatex(glows, charsmax(glows), "Naranja")
	else if (g_glows[id] == 6)
		formatex(glows, charsmax(glows), "Celeste")
	else if (g_glows[id] == 7)
		formatex(glows, charsmax(glows), "Rosa")
	else if (g_glows[id] == 8)
		formatex(glows, charsmax(glows), "Morado")
	else if (g_glows[id] == 9)
		formatex(glows, charsmax(glows), "Blanco")	
		
	if (g_knifes[id] == 0)
		formatex(knifes, charsmax(knifes), "Manos")
	else if (g_knifes[id] == 1)
		formatex(knifes, charsmax(knifes), "Razor")
	else if (g_knifes[id] == 2)
		formatex(knifes, charsmax(knifes), "Strong")
	else if (g_knifes[id] == 3)
		formatex(knifes, charsmax(knifes), "Master Combat")
	else if (g_knifes[id] == 4)
		formatex(knifes, charsmax(knifes), "Xmas")
	else if (g_knifes[id] == 5)
		formatex(knifes, charsmax(knifes), "Crowbar")
	else if (g_knifes[id] == 6)
		formatex(knifes, charsmax(knifes), "Hammer")
	else if (g_knifes[id] == 7)
		formatex(knifes, charsmax(knifes), "Machete")
	else if (g_knifes[id] == 8)
		formatex(knifes, charsmax(knifes), "Katana")
	else if (g_knifes[id] == 9)
		formatex(knifes, charsmax(knifes), "Skullaxe")
	else if (g_knifes[id] == 10)
		formatex(knifes, charsmax(knifes), "Dual Katana")
	else if (g_knifes[id] == 11)
		formatex(knifes, charsmax(knifes), "Motocierra")
		
	if (g_grenades[id] == 0)
		formatex(grenades, charsmax(grenades), "[GF: 1 | GH: 1 | GB: 1]")
	else if (g_grenades[id] == 1)
		formatex(grenades, charsmax(grenades), "[GF: 1 | GH: 2 | GB: 1]")
	else if (g_grenades[id] == 2)
		formatex(grenades, charsmax(grenades), "[GF: 2 | GH: 2 | GB: 1]")
	else if (g_grenades[id] == 3)
		formatex(grenades, charsmax(grenades), "[GF: 2 | GH: 2 | GB: 2]")
	else if (g_grenades[id] == 4)
		formatex(grenades, charsmax(grenades), "[GF: 2 | GH: 3 | GB: 2]")
	else if (g_grenades[id] == 5)
		formatex(grenades, charsmax(grenades), "[GF: 3 | GH: 3 | GB: 2]")
	else if (g_grenades[id] == 6)
		formatex(grenades, charsmax(grenades), "[GF: 3 | GH: 3 | GB: 3]")	
	
	if (g_hud[id] == 0)
		formatex(hud, charsmax(hud), "Lancelotgames 1")
	else if (g_hud[id] == 1)
		formatex(hud, charsmax(hud), "Lancelotgames 2")
		
	if (g_weapon[id] == 0)
		formatex(weapon, charsmax(weapon), "Lancelotgames 1")
	else if (g_weapon[id] == 1)
		formatex(weapon, charsmax(weapon), "Lancelotgames 2")	
	else if (g_weapon[id] == 2)
		formatex(weapon, charsmax(weapon), "Lancelotgames 3")		
	
	// Title
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r[ZE] \yMis estadisticas \r1/4^n^n")
	
	if (g_level[id] < g_max_level)
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rPersonaje: \w%s^n\rNivel: \w%d^n\rExperiencia: \w%d/%d^n", g_playername[id], g_level[id], g_experience[id], szNum)
	else
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rPersonaje: \w%s^n\rNivel: \w%d^n\rExperiencia: \w%d^n", g_playername[id], g_level[id], g_experience[id])
	
	if (g_level[id] < g_max_level)
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rRango Actual: \w%s^n\rRango Proximo: \w%s^n", RANGOS[g_rango[id]], RANGOS2[g_rango2[id]])
	else
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rRango Actual: \w%s^n", RANGOS[g_rango[id]])
	
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rHud: \w%s^n\rP. Upgrade: \w%d^n\rModelo: \w%s^n\rSombreros: \w%s^n\rGlow: \w%s^n\rCuchillo: \w%s^n", hud, g_point[id], models, hats, glows, knifes)
	
	// 9. Back/Next - 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n^n\r9.\w Anterior \y/ \wSiguiente^n\r0.\w Salir")
	
	checkrango(id)
	checkrango2(id)
	
	show_menu(id, KEYSMENU, g_menu, -1, "Statistics Menu")
}

// Statistics Menu 2
show_menu_statistics2(id)
{
	static len; len = 0
	
	// Title
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r[ZE] \yMis estadisticas \r2/4^n^n")
	
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rPersonaje:\w %s^n^n", g_playername[id])
	
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\yInformacion Humanos^n\rVida: \w+ %d^n\rVelocidad: \w+ %d^n", ammount_hhealth(g_level[id]), floatround(ammount_hspeed(g_level[id])))
	
	if (g_level[id] < g_max_level)
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rGravedad: \w- %d^n\rAtaque: \w+ 0.%s^n^n", ammount_sgravity(g_level[id]), add_point2(floatround(ammount_sdamage(g_level[id]))))
	else
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rGravedad: \w- %d^n\rAtaque: \w+ %s^n^n", ammount_sgravity(g_level[id]), add_point2(floatround(ammount_sdamage(g_level[id]))))
	
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\yEstadistica como Humano:^n")
	
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rAssassins Matados: \w%d^n\rAliens Matados: \w%d^n\rNemesis Matados: \w%d^n\rZombies Matados: \w%d", 
	g_killed[id][0][7], g_killed[id][0][6], g_killed[id][0][5], g_killed[id][0][1])
	
	// 9. Back/Next - 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n^n\r9.\w Anterior \y/ \wSiguiente^n\r0.\w Salir")
	
	show_menu(id, KEYSMENU, g_menu, -1, "Statistics Menu")
}

// Statistics Menu 3
show_menu_statistics3(id)
{
	static len; len = 0
	
	// Title
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r[ZE] \yMis estadisticas \r3/4^n^n")
	
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rPersonaje:\w %s^n^n", g_playername[id])
	
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\yInformacion Zombies^n\rVida: \w+ %d^n\rVelocidad: \w+ %d^n", ammount_zhealth(g_level[id]), floatround(ammount_zspeed(g_level[id])))
	
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rGravedad: \w- %d^n^n", ammount_sgravity(g_level[id]))
	
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\yEstadistica como Zombie:^n")
	
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rSnipers Matados: \w%d^n\rWeskers Matados: \w%d^n\rSurvivors Matados: \w%d^n\rHumanos Matados: \w%d^n\rHumanos Infectados: \w%d", 
	g_killed[id][0][4], g_killed[id][0][3], g_killed[id][0][2], g_killed[id][0][0], g_infected[id][0])
	
	// 9. Back/Next - 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n^n\r9.\w Anterior \y/ \wSiguiente^n\r0.\w Salir")
	
	show_menu(id, KEYSMENU, g_menu, -1, "Statistics Menu")
}

// Statistics Menu 4
show_menu_statistics4(id)
{
	static len; len = 0
	
	// Title
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r[ZE] \yMis estadisticas \r4/4^n^n")
	
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rPersonaje:\w %s^n^n", g_playername[id])
	
	// Statistics
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\yTiempo de Juego^n\rPartidas Jugadas: \w%d^n\rHoras Jugadas: \w%d^n\rMinutos Jugados: \w%d^n\rSegundos Jugados: \w%d^n^n", 
	g_playedtime[id][0], g_playedtime[id][1], g_playedtime[id][2], g_playedtime[id][3])
	
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\yOtros^n\rEscapes Exitos: \w%d", g_escape[id])
	
	// 9. Back/Next - 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n^n\r9.\w Anterior \y/ \wSiguiente^n\r0.\w Salir")
	
	show_menu(id, KEYSMENU, g_menu, -1, "Statistics Menu")
}

// Help Menu
show_menu_info(id)
{
	static len; len = 0
	
	// Title
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r[ZE] \yInformacion del Juego^n^n")
	
	// 1. - 7.
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1.\w General^n\r2.\w Humanos^n\r3.\w Zombies^n\r4.\w Modos de Juego \yParte 1^n\r5.\w Modos de Juego \yParte 2^n\r6.\w Modos de Juego \yParte 3^n\r7.\w Items Extras")
	
	// 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n^n\r0. \wSalir")
	
	show_menu(id, KEYSMENU, g_menu, -1, "Mod Info")
}

public show_menu_class(id)
{
	static menu[250], len
	len = 0
	
	// Title
	len += formatex(menu[len], charsmax(menu) - len, "\r[ZE] \yClases de Humanos/Zombies^n^n")
	
	// 2. Human Class
	if (get_pcvar_num(cvar_hclasses))
		len += formatex(menu[len], charsmax(menu) - len, "\r1.\w Clases de Humanos^n")
	else
		len += formatex(menu[len], charsmax(menu) - len, "\d1. Clases de Humanos^n")
	
	// 1. Zombie Class
	if (get_pcvar_num(cvar_zclasses))
		len += formatex(menu[len], charsmax(menu) - len, "\r2.\w Clases de Zombies^n^n^n^n^n")
	else
		len += formatex(menu[len], charsmax(menu) - len, "\d2. Clases de Zombies^n^n^n^n^n")
		
	// 0. Exit
	len += formatex(menu[len], charsmax(menu) - len, "^n^n\r0.\w Salir")
	
	show_menu(id, KEYSMENU, menu, -1, "Class Menu")	
}

public show_menu_personaje(id){

	static menu[350],models[32], hats[32], glows[32], knifes[32], grenades[32],name[32], namez[32], len
	len = 0
	ArrayGetString(g_zclass_name, g_zombieclassnext[id], namez, charsmax(namez))
	ArrayGetString(g_hclass_name, g_humanclassnext[id], name, charsmax(name))
if (g_models[id] == 0)
		formatex(models, charsmax(models), "Ninguno")
	else if (g_models[id] == 1)
		formatex(models, charsmax(models), "S.W.R.C")
	else if (g_models[id] == 2)
		formatex(models, charsmax(models), "Elite Combine")
	else if (g_models[id] == 3)
		formatex(models, charsmax(models), "Dallas")
	else if (g_models[id] == 4)
		formatex(models, charsmax(models), "Carlitos")
	else if (g_models[id] == 5)
		formatex(models, charsmax(models), "Walter")
	else if (g_models[id] == 6)
		formatex(models, charsmax(models), "Spy")
	else if (g_models[id] == 7)
		formatex(models, charsmax(models), "Skaynet")	
	else if (g_models[id] == 8)
		formatex(models, charsmax(models), "Mr. Foster")
	else if (g_models[id] == 9)
		formatex(models, charsmax(models), "Mike Noble")
	else if (g_models[id] == 10)
		formatex(models, charsmax(models), "VIP")
	else if (g_models[id] == 11)
		formatex(models, charsmax(models), "Chickenator")
	else if (g_models[id] == 12)
		formatex(models, charsmax(models), "Goku")	
		
	if (g_hats[id] == 0)
		formatex(hats, charsmax(hats), "Desactivado")
	else if (g_hats[id] == 1)
		formatex(hats, charsmax(hats), "Bandera Lancelot")	
	else if (g_hats[id] == 2)
		formatex(hats, charsmax(hats), "Knuckles")
	else if (g_hats[id] == 3)
		formatex(hats, charsmax(hats), "Santa")
	else if (g_hats[id] == 4)
		formatex(hats, charsmax(hats), "Cannibal")
	else if (g_hats[id] == 5)
		formatex(hats, charsmax(hats), "Bomba")
	else if (g_hats[id] == 6)
		formatex(hats, charsmax(hats), "Clon")	
	else if (g_hats[id] == 7)
		formatex(hats, charsmax(hats), "Clon 2")		
	else if (g_hats[id] == 8)
		formatex(hats, charsmax(hats), "Dr. Doom")	
	else if (g_hats[id] == 9)
		formatex(hats, charsmax(hats), "Sheih")
	else if (g_hats[id] == 10)
		formatex(hats, charsmax(hats), "Svarshik")
	else if (g_hats[id] == 11)
		formatex(hats, charsmax(hats), "Gazowa")
	else if (g_hats[id] == 12)
		formatex(hats, charsmax(hats), "Marsjanin")
	else if (g_hats[id] == 13)
		formatex(hats, charsmax(hats), "Alien")
	else if (g_hats[id] == 14)
		formatex(hats, charsmax(hats), "Zelazny")
	else if (g_hats[id] == 15)
		formatex(hats, charsmax(hats), "Mummy")
	else if (g_hats[id] == 16)
		formatex(hats, charsmax(hats), "Diabel")
	else if (g_hats[id] == 17)
		formatex(hats, charsmax(hats), "Doccabi")
	else if (g_hats[id] == 18)
		formatex(hats, charsmax(hats), "Bruja")
	else if (g_hats[id] == 19)
		formatex(hats, charsmax(hats), "Frankenstein")		
	else if (g_hats[id] == 20)
		formatex(hats, charsmax(hats), "Monin")	
	else if (g_hats[id] == 21)
		formatex(hats, charsmax(hats), "Scream")	
	else if (g_hats[id] == 22)
		formatex(hats, charsmax(hats), "Jack")	
	else if (g_hats[id] == 23)
		formatex(hats, charsmax(hats), "Futbolista")	
	else if (g_hats[id] == 24)
		formatex(hats, charsmax(hats), "Darkvader")	
	else if (g_hats[id] == 25)
		formatex(hats, charsmax(hats), "Rotwaila")	
	else if (g_hats[id] == 26)
		formatex(hats, charsmax(hats), "Mario")	
		
	if (g_glows[id] == 0)
		formatex(glows, charsmax(glows), "Desactivado")
	else if (g_glows[id] == 1)
		formatex(glows, charsmax(glows), "Rojo")
	else if (g_glows[id] == 2)
		formatex(glows, charsmax(glows), "Verde")
	else if (g_glows[id] == 3)
		formatex(glows, charsmax(glows), "Azul")
	else if (g_glows[id] == 4)
		formatex(glows, charsmax(glows), "Amarilllo")
	else if (g_glows[id] == 5)
		formatex(glows, charsmax(glows), "Naranja")
	else if (g_glows[id] == 6)
		formatex(glows, charsmax(glows), "Celeste")
	else if (g_glows[id] == 7)
		formatex(glows, charsmax(glows), "Rosa")
	else if (g_glows[id] == 8)
		formatex(glows, charsmax(glows), "Morado")
	else if (g_glows[id] == 9)
		formatex(glows, charsmax(glows), "Blanco")	
		
	if (g_knifes[id] == 0)
		formatex(knifes, charsmax(knifes), "Manos")
	else if (g_knifes[id] == 1)
		formatex(knifes, charsmax(knifes), "Razor")
	else if (g_knifes[id] == 2)
		formatex(knifes, charsmax(knifes), "Strong")
	else if (g_knifes[id] == 3)
		formatex(knifes, charsmax(knifes), "Master Combat")
	else if (g_knifes[id] == 4)
		formatex(knifes, charsmax(knifes), "Xmas")
	else if (g_knifes[id] == 5)
		formatex(knifes, charsmax(knifes), "Crowbar")
	else if (g_knifes[id] == 6)
		formatex(knifes, charsmax(knifes), "Hammer")
	else if (g_knifes[id] == 7)
		formatex(knifes, charsmax(knifes), "Machete")
	else if (g_knifes[id] == 8)
		formatex(knifes, charsmax(knifes), "Katana")
	else if (g_knifes[id] == 9)
		formatex(knifes, charsmax(knifes), "Skullaxe")
	else if (g_knifes[id] == 10)
		formatex(knifes, charsmax(knifes), "Dual Katana")
	else if (g_knifes[id] == 11)
		formatex(knifes, charsmax(knifes), "Motocierra")
		
	if (g_grenades[id] == 0)
		formatex(grenades, charsmax(grenades), "[GF: 1 | GH: 1 | GB: 1]")
	else if (g_grenades[id] == 1)
		formatex(grenades, charsmax(grenades), "[GF: 1 | GH: 2 | GB: 1]")
	else if (g_grenades[id] == 2)
		formatex(grenades, charsmax(grenades), "[GF: 2 | GH: 2 | GB: 1]")
	else if (g_grenades[id] == 3)
		formatex(grenades, charsmax(grenades), "[GF: 2 | GH: 2 | GB: 2]")
	else if (g_grenades[id] == 4)
		formatex(grenades, charsmax(grenades), "[GF: 2 | GH: 3 | GB: 2]")
	else if (g_grenades[id] == 5)
		formatex(grenades, charsmax(grenades), "[GF: 3 | GH: 3 | GB: 2]")
	else if (g_grenades[id] == 6)
		formatex(grenades, charsmax(grenades), "[GF: 3 | GH: 3 | GB: 3]")	
	
	// Title
	len += formatex(menu[len], charsmax(menu) - len, "\r[ZE] \yPersonaje^n^n")
	
	// 2. Human Class
	if (get_pcvar_num(cvar_hclasses))
		len += formatex(menu[len], charsmax(menu) - len, "\r1.\w Clases de Humanos \y[%s]^n", name)
	else
		len += formatex(menu[len], charsmax(menu) - len, "\d1. Clases de Humanos \y[%s]^n", name)
	
	// 1. Zombie Class
	if (get_pcvar_num(cvar_zclasses))
		len += formatex(menu[len], charsmax(menu) - len, "\r2.\w Clases de Zombies \y[%s]^n^n", namez)
	else
		len += formatex(menu[len], charsmax(menu) - len, "\d2. Clases de Zombies \y[%s]^n^n", namez)

	len += formatex(menu[len], charsmax(menu) - len, "\r3. \wEstadisticas HUMANOS/ZOMBIES^n^n")

	// 1. Zombie Class
	len += formatex(menu[len], charsmax(menu) - len, "\r4.\w Modelos \y[%s]^n", models)
	
	// 2. Human Class
	len += formatex(menu[len], charsmax(menu) - len, "\r5.\w Sombreros \y[%s]^n", hats)
	len += formatex(menu[len], charsmax(menu) - len, "\r6.\w Glows \y[%s]^n", glows)
	len += formatex(menu[len], charsmax(menu) - len, "\r7.\w Cuchillos \y[%s]^n^n", knifes)

	len += formatex(menu[len], charsmax(menu) - len, "\r8. \wLogros^n^n")
	// 0. Exit
	len += formatex(menu[len], charsmax(menu) - len, "^n\r0.\w Salir")
	
	show_menu(id, KEYSMENU, menu, -1, "psj Menu")	


}


// User/Information Menu
public show_menu_pj(id)
{
	static len
	len = 0
	
	// Get player aiming
	static models[32], hats[32], glows[32], knifes[32], grenades[32] 
	
	if (g_models[id] == 0)
		formatex(models, charsmax(models), "Desactivado")
	else if (g_models[id] == 1)
		formatex(models, charsmax(models), "S.W.R.C")
	else if (g_models[id] == 2)
		formatex(models, charsmax(models), "Elite Combine")
	else if (g_models[id] == 3)
		formatex(models, charsmax(models), "Dallas")
	else if (g_models[id] == 4)
		formatex(models, charsmax(models), "Carlitos")
	else if (g_models[id] == 5)
		formatex(models, charsmax(models), "Walter")
	else if (g_models[id] == 6)
		formatex(models, charsmax(models), "Spy")
	else if (g_models[id] == 7)
		formatex(models, charsmax(models), "Skaynet")	
	else if (g_models[id] == 8)
		formatex(models, charsmax(models), "Mr. Foster")
	else if (g_models[id] == 9)
		formatex(models, charsmax(models), "Mike Noble")
	else if (g_models[id] == 10)
		formatex(models, charsmax(models), "VIP")
	else if (g_models[id] == 11)
		formatex(models, charsmax(models), "Chickenator")
	else if (g_models[id] == 12)
		formatex(models, charsmax(models), "Goku")	
		
	if (g_hats[id] == 0)
		formatex(hats, charsmax(hats), "Desactivado")
	else if (g_hats[id] == 1)
		formatex(hats, charsmax(hats), "Bandera Lancelot")	
	else if (g_hats[id] == 2)
		formatex(hats, charsmax(hats), "Knuckles")
	else if (g_hats[id] == 3)
		formatex(hats, charsmax(hats), "Santa")
	else if (g_hats[id] == 4)
		formatex(hats, charsmax(hats), "Cannibal")
	else if (g_hats[id] == 5)
		formatex(hats, charsmax(hats), "Bomba")
	else if (g_hats[id] == 6)
		formatex(hats, charsmax(hats), "Clon")	
	else if (g_hats[id] == 7)
		formatex(hats, charsmax(hats), "Clon 2")		
	else if (g_hats[id] == 8)
		formatex(hats, charsmax(hats), "Dr. Doom")	
	else if (g_hats[id] == 9)
		formatex(hats, charsmax(hats), "Sheih")
	else if (g_hats[id] == 10)
		formatex(hats, charsmax(hats), "Svarshik")
	else if (g_hats[id] == 11)
		formatex(hats, charsmax(hats), "Gazowa")
	else if (g_hats[id] == 12)
		formatex(hats, charsmax(hats), "Marsjanin")
	else if (g_hats[id] == 13)
		formatex(hats, charsmax(hats), "Alien")
	else if (g_hats[id] == 14)
		formatex(hats, charsmax(hats), "Zelazny")
	else if (g_hats[id] == 15)
		formatex(hats, charsmax(hats), "Mummy")
	else if (g_hats[id] == 16)
		formatex(hats, charsmax(hats), "Diabel")
	else if (g_hats[id] == 17)
		formatex(hats, charsmax(hats), "Doccabi")
	else if (g_hats[id] == 18)
		formatex(hats, charsmax(hats), "Bruja")
	else if (g_hats[id] == 19)
		formatex(hats, charsmax(hats), "Frankenstein")		
	else if (g_hats[id] == 20)
		formatex(hats, charsmax(hats), "Monin")	
	else if (g_hats[id] == 21)
		formatex(hats, charsmax(hats), "Scream")	
	else if (g_hats[id] == 22)
		formatex(hats, charsmax(hats), "Jack")	
	else if (g_hats[id] == 23)
		formatex(hats, charsmax(hats), "Futbolista")	
	else if (g_hats[id] == 24)
		formatex(hats, charsmax(hats), "Darkvader")	
	else if (g_hats[id] == 25)
		formatex(hats, charsmax(hats), "Rotwaila")	
	else if (g_hats[id] == 26)
		formatex(hats, charsmax(hats), "Mario")	
		
	if (g_glows[id] == 0)
		formatex(glows, charsmax(glows), "Desactivado")
	else if (g_glows[id] == 1)
		formatex(glows, charsmax(glows), "Rojo")
	else if (g_glows[id] == 2)
		formatex(glows, charsmax(glows), "Verde")
	else if (g_glows[id] == 3)
		formatex(glows, charsmax(glows), "Azul")
	else if (g_glows[id] == 4)
		formatex(glows, charsmax(glows), "Amarilllo")
	else if (g_glows[id] == 5)
		formatex(glows, charsmax(glows), "Naranja")
	else if (g_glows[id] == 6)
		formatex(glows, charsmax(glows), "Celeste")
	else if (g_glows[id] == 7)
		formatex(glows, charsmax(glows), "Rosa")
	else if (g_glows[id] == 8)
		formatex(glows, charsmax(glows), "Morado")
	else if (g_glows[id] == 9)
		formatex(glows, charsmax(glows), "Blanco")	
		
	if (g_knifes[id] == 0)
		formatex(knifes, charsmax(knifes), "Manos")
	else if (g_knifes[id] == 1)
		formatex(knifes, charsmax(knifes), "Razor")
	else if (g_knifes[id] == 2)
		formatex(knifes, charsmax(knifes), "Strong")
	else if (g_knifes[id] == 3)
		formatex(knifes, charsmax(knifes), "Master Combat")
	else if (g_knifes[id] == 4)
		formatex(knifes, charsmax(knifes), "Xmas")
	else if (g_knifes[id] == 5)
		formatex(knifes, charsmax(knifes), "Crowbar")
	else if (g_knifes[id] == 6)
		formatex(knifes, charsmax(knifes), "Hammer")
	else if (g_knifes[id] == 7)
		formatex(knifes, charsmax(knifes), "Machete")
	else if (g_knifes[id] == 8)
		formatex(knifes, charsmax(knifes), "Katana")
	else if (g_knifes[id] == 9)
		formatex(knifes, charsmax(knifes), "Skullaxe")
	else if (g_knifes[id] == 10)
		formatex(knifes, charsmax(knifes), "Dual Katana")
	else if (g_knifes[id] == 11)
		formatex(knifes, charsmax(knifes), "Motocierra")
		
	if (g_grenades[id] == 0)
		formatex(grenades, charsmax(grenades), "[GF: 1 | GH: 1 | GB: 1]")
	else if (g_grenades[id] == 1)
		formatex(grenades, charsmax(grenades), "[GF: 1 | GH: 2 | GB: 1]")
	else if (g_grenades[id] == 2)
		formatex(grenades, charsmax(grenades), "[GF: 2 | GH: 2 | GB: 1]")
	else if (g_grenades[id] == 3)
		formatex(grenades, charsmax(grenades), "[GF: 2 | GH: 2 | GB: 2]")
	else if (g_grenades[id] == 4)
		formatex(grenades, charsmax(grenades), "[GF: 2 | GH: 3 | GB: 2]")
	else if (g_grenades[id] == 5)
		formatex(grenades, charsmax(grenades), "[GF: 3 | GH: 3 | GB: 2]")
	else if (g_grenades[id] == 6)
		formatex(grenades, charsmax(grenades), "[GF: 3 | GH: 3 | GB: 3]")	
	
	// Title
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r[ZE] \yMenu de Upgrade^n^n")
	
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\wP. Upgrade: \y%d^n^n", g_point[id])
	
	// 1. Zombie Class
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1.\w Modelos^n")
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rEquipado:\y %s^n", models)
	
	// 2. Human Class
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r2.\w Sombreros^n")
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rEquipado:\y %s^n", hats)
	
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r3.\w Glows^n")
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rEquipado:\y %s^n", glows)
	
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r4.\w Cuchillos^n")
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rEquipado:\y %s^n", knifes)
	
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r5.\w Granadas^n")
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\rEquipado:\y %s^n", grenades)
		
	// 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n\r0.\w Salir")
	
	show_menu(id, KEYSMENU, g_menu, -1, "PJ Menu")	
}

// User/Information Menu
public menu_pj(id, key)
{
	switch (key)
	{
		case 0:
		{
			SetupSelectMenu(id)
		}
		case 1:
		{
			SetupSelectMenu2(id)				
		}
		case 2:
		{
			SetupSelectMenu3(id)
		}
		case 3:
		{
			SetupSelectMenu4(id)
		}
		case 4:
		{
			SetupSelectMenu5(id)
		}
	}
	return PLUGIN_HANDLED;
}	



public menu_personaje(id,key)
{	
	switch (key)
	{

		case 0: // Human Classes
		{
			// Human classes enabled?
			if (get_pcvar_num(cvar_hclasses))
				show_menu_hclass(id)
			else
				zp_colored_print(id, "^x04[ZE]^x01 Las Clases de Humano estan desactivadas.")
		}
		case 1: // Zombie Classes
		{
			// Zombie classes enabled?
			if (get_pcvar_num(cvar_zclasses))
				show_menu_zclass(id)
			else
				zp_colored_print(id, "^x04[ZE]^x01 Las Clases de Zombie estan desactivadas.")
		}
		case 2:
		{
			show_menu_statistics1(id)
		}
		case 3:
		{
			SetupSelectMenu(id)				
		}
		case 4:
		{
			SetupSelectMenu2(id)
		}
		case 5:
		{
			SetupSelectMenu3(id)
		}
		case 6:
		{
			SetupSelectMenu4(id)
		}
		case 7:
		{
			zp_colored_print(id, "^x04[ZE]^x01 Por el momento esta desactivado.")
		}
	}
	return PLUGIN_HANDLED;
}
// User/Information Menu
public menu_class(id, key)
{
	switch (key)
	{
		case 0: // Human Classes
		{
			// Human classes enabled?
			if (get_pcvar_num(cvar_hclasses))
				show_menu_hclass(id)
			else
				zp_colored_print(id, "^x04[ZE]^x01 Las Clases de Humano estan desactivadas.")
		}
		case 1: // Zombie Classes
		{
			// Zombie classes enabled?
			if (get_pcvar_num(cvar_zclasses))
				show_menu_zclass(id)
			else
				zp_colored_print(id, "^x04[ZE]^x01 Las Clases de Zombie estan desactivadas.")
		}
	}
	return PLUGIN_HANDLED;
}

// List Levels Menu
show_menu_list_levels(id)
{
	new num[2]
	new menu = menu_create("\r[ZE] \yLista de Niveles\r", "menu_list_levels")
	
	for (new i = 1; i < g_max_level + 1; i++)
	{
		if (g_level[id] >= i)
			formatex(g_menu, charsmax(g_menu), "\wNivel %d: \y%d EXP", i, cost_levelup(i))
		else
			formatex(g_menu, charsmax(g_menu), "\dNivel %d: %d EXP", i, cost_levelup(i))
		
		num_to_str(i, num, charsmax(num))
		menu_additem(menu, g_menu, num)
	}
	
	// Back - Next - Exit
	menu_setprop(menu, MPROP_BACKNAME, "\wAnterior")
	menu_setprop(menu, MPROP_NEXTNAME, "\wSiguiente")
	menu_setprop(menu, MPROP_EXITNAME, "\wSalir")
	
	// If remembered page is greater than number of pages, clamp down the value
	MENU_PAGE_LEVELS = min(MENU_PAGE_LEVELS, menu_pages(menu)-1)
	
	menu_display(id, menu, MENU_PAGE_LEVELS)
}

// Information Admin Motd
info_reglas(id)
{
	static len; len = 0
	
	len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Las Reglas del [Fo]rce-ProjectX-Gaming] Zombie Escape [Dark]")
	len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Las Reglas Para los Usuarios")
	len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>1. No Esconderse : Slap 3 Veces , Si no se Muestra Hasta la 3 vez Slay")
	len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>2. No Hacer Spam de Otros Servers : Kick Por el Caso que sea Virus Los Admins o Usuarios te Ayudaran ")
	len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>3. No Insultar a los Usuarios/Admines : Ban por 30 Minutos")
	len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>3. No Campear : Ban por 30 Minutos / Solo pueden Atacar en Zona de Rescate : Holdear")
	len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>5. No Cerrar o Romper a los Companieros : Slay, Si el Usuario Sigue Cerrando o Rompiendo Ban por 1 Hora")
	len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>6. No Quedarse Como Espectador Mas de 3 Minutos : Kick")
	len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>7. No Tomar el Antidoto Despues de la Explosion : Ban por 1 Hora")
	len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>8. No Bugear la Zona de Rescate : Slay , Si el Usuario Sigue Bugeando Ban por 15 minutos")
	len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>9. No Subir Arriba del Equipo de Rescate : Slay , Si el Usuario Sigue Bugeando Ban por 15 minutos")
	len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>10. No Hacer Free : Ban por 30 Minutos")
	len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>11. No Hacer Retry Cuando eres el Primer Zombie , Ultimo Zombie o Ultimo Humano : Ban Por 1 Hora")
	len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>12. No Usar Hack , Wall , Aimbot Etc : Ban Permanente")
	len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Las Reglas Para los Admins")
	len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>1. No Insultar a un Usuario : Se te Quitara tu Admin por 3 Dias")
	len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>2. No Dar Ban sin razon : Se te Quitara tu Admin por 1 Semana")
	len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>3. No Poner Modos Sin Haber Hecho el Vote")
	len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>4. No Puedes Darte Modo Sin Haber Hecho un Vote : Se te Quitara tu Admin por 1 Semana")
	len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Informacion")
	len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Si el Server tiene bugs o no tiene exp llama a lssj999 por face : Victor Jesus Rodriguez Blanco")
	
	show_motd(id, g_motd, "[ZE] Reglas")
}

public show_menu_admin1(id)
{
	// Get admin flags
	static len, userflags; userflags = get_user_flags(id), len = 0
	len += formatex(g_menu, charsmax(g_menu) - len,"\r[ZE] \wADMINISTRACION^n^n")

	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1.\y[\wMODOS \rINDIVIDUALES \y]^n")

	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r2.\y[ \wMODOS \rMULTIJUGADOR \y]^n^n")

	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r3.\y[ \wMODOS \rDEADMATCH \y]^n")

	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r4.\y[ \wMODOS \rAPOCALYPTICOS \y]^n")

	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r5.\y[ \wREVIVIR \rJUGADOR \y]^n^n")

	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r6.\y[ \wUNIRSE A \rESPECTADOR \y]^n")

	len += formatex(g_menu[len], charsmax(g_menu) - len, "\r7.\y[ \wMENU DE \rMODERACION \y]^n^n")
	// 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n\r0.\w Salir")
	
	show_menu(id, KEYSMENU, g_menu, -1, "Admin1 Menu")	

}


public show_menu_singleplayer(id)
{

	// Get admin flags
		static len, userflags; userflags = get_user_flags(id), len = 0
	
	// Title
	len += formatex(g_menu[len], charsmax(g_menu) - len,"\r[ZE] \wModos Individuales\r^n^n")
	

	
	
	if (userflags & g_access_flag[ACCESS_START_MODES])
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1. \wConvertir en Nemesis^n")
	else
	{
		if (g_currentmode == MODE_NEMESIS)
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1. \wConvertir en Nemesis \r(Actual)^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\d1. \wConvertir en Nemesis^n")
	}
	
	// 3. Alien command
	if (userflags & g_access_flag[ACCESS_START_MODES])
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r2. \wConvertir en Alien^n")
	else
	{
		if (g_currentmode == MODE_ALIEN)
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r2. \wConvertir en Alien \r(Actual)^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\d2. \wConvertir en Alien^n")
	}
	
	// 4. Assassin command
	if (userflags & g_access_flag[ACCESS_START_MODES])
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r3. \wConvertir en Assassin^n")
	else
	{
		if (g_currentmode == MODE_ASSASSIN)
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r3. \wConvertir en Assassin \r(Actual)^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\d3. \wConvertir en Assassin^n")
	}
	
	// 5. Demon command
	if (userflags & g_access_flag[ACCESS_START_MODES])
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r4. \wConvertir en Demon^n")
	else
	{
		if (g_currentmode == MODE_DEMON)
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r4. \wConvertir en Demon \r(Actual)^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\d4. \wConvertir en Demon^n")
	}
	
	// 6. Survivor command
	if (userflags & g_access_flag[ACCESS_START_MODES])
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r5. \wConvertir en Survivor^n")
	else
	{
		if (g_currentmode == MODE_SURVIVOR)
			len += formatex(g_menu[len], charsmax(g_menu) - len,"\r5. \wConvertir en Survivor \r(Actual)^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\d5. \wConvertir en Survivor^n")
	}
	
	// 7. Wesker command
	if (userflags & g_access_flag[ACCESS_START_MODES])
		len += formatex(g_menu[len], charsmax(g_menu) - len,"\r6. \wConvertir en Wesker^n")
	else
	{
		if (g_currentmode == MODE_WESKER)
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r6. \wConvertir en Wesker \r(Actual)^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\d6. \wConvertir en Wesker^n")
	}
	
	// 8. Sniper command
	if (userflags & g_access_flag[ACCESS_START_MODES])
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r7. \wConvertir en Sniper^n")
	else
	{
		if (g_currentmode == MODE_SNIPER)
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r7. \wConvertir en Sniper \r(Actual)^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\d7. \wConvertir en Sniper^n")
	}
	
	// 9. Predator command
	if (userflags & g_access_flag[ACCESS_START_MODES])
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r8. \wConvertir en Predator^n")
	else
	{
		if (g_currentmode == MODE_SNIPER)
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r8. \wConvertir en Predator \r(Actual)^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\d8. \wConvertir en Predator^n")
	}
	
	// 10. Angel command
	if (userflags & g_access_flag[ACCESS_START_MODES])
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r9. \wConvertir en Angel^n")
	else
	{
		if (g_currentmode == MODE_SNIPER)
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r9. \wConvertir en Angel \r(Actual)^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\d9. \wConvertir en Angel^n")
	}


	// 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n\r0.\w Volver")

	show_menu(id, KEYSMENU, g_menu, -1, "Singleplayer Menu")
}
public show_menu_multiplayer(id)
{			
	// Get admin flags
		static len, userflags; userflags = get_user_flags(id), len = 0
	

	// Title
	len += formatex(g_menu[len], charsmax(g_menu) - len,"\r[ZE] \wModos Multijugador\r^n^n")

	// 11. Multi infection command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_multi())
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1. \wComenzar Modo Multiple Infeccion^n")
	else
	{
		if (g_currentmode == MODE_MULTI)
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1. \wComenzar Modo Multiple Infeccion \r(Actual)^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\d1. \wComenzar Modo Multiple Infeccion^n")
	}
	
	// 12. Swarm mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_swarm())
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r2. \wComenzar Modo Swarm^n")
	else
	{
		if (g_currentmode == MODE_SWARM)
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r2. \wComenzar Modo Swarm \r(Actual)^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\d2. \wComenzar Modo Swarm^n")
	}
	
	// 13. Plague mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_plague())
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r3. \wComenzar Modo Plague^n")
	else
	{
		if (g_currentmode == MODE_PLAGUE)
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r3. \wComenzar Modo Plague \r(Actual)^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\d3. \wComenzar Modo Plague^n")
	}
		len += formatex(g_menu[len], charsmax(g_menu) - len, "^n\r0.\w Volver")


		show_menu(id, KEYSMENU, g_menu, -1, "Multiplayer Menu")	
	
}


public show_menu_deathmatch(id)
{
		static len, userflags; userflags = get_user_flags(id), len = 0

		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r[ZE] \wModos Deadmatch^n^n")


		// 14. Cooperative mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_cooperative())
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1. \wComenzar Modo Cooperative^n")
	else
	{
		if (g_currentmode == MODE_COOPERATIVE)
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1. \wComenzar Modo Cooperative \r(Actual)^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\d1. \wComenzar Modo Cooperative^n")
	}
	
	// 15. Cooperative mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_nextremo())
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r2. \wComenzar Modo Nemesis Extremo^n")
	else
	{
		if (g_currentmode == MODE_NEXTREMO)
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r2. \wComenzar Modo Nemesis Extremo \r(Actual)^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\d2. \wComenzar Modo Nemesis Extremo^n")
	}
	
	// 16. Synapsis mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_synapsis())
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r3. \wComenzar Modo Synapsis^n")
	else
	{
		if (g_currentmode == MODE_SYNAPSIS)
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r3. \wComenzar Modo Synapsis \r(Actual)^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\d3. \wComenzar Modo Synapsis^n")
	}
	
	// 17. Left 4 Dead mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_l4d())
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r4. \wComenzar Modo Left 4 Dead^n")
	else
	{
		if (g_currentmode == MODE_L4D)
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r4. \wComenzar Modo Left 4 Dead \r(Actual)^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\d4. \wComenzar Modo Left 4 Dead^n")
	}
	// 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n\r0.\w Volver")
	
	show_menu(id, KEYSMENU, g_menu, -1, "Deathmatch Menu")
}

public show_menu_xtreme(id)
{
		static len, userflags; userflags = get_user_flags(id), len = 0

		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r[ZE] \wModos Apocalyptiscos^n^n")

// 18. Armageddon mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_armageddon())
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r1. \wComenzar Modo Armageddon^n")
	else
	{
		if (g_currentmode == MODE_ARMAGEDDON)
			len += formatex(g_menu[len], charsmax(g_menu) - len,"\r1. \wComenzar Modo Armageddon \r(Actual)^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len,"\d1. \wComenzar Modo Armageddon^n")
	}
	
	// 19. Crysis mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_crysis())
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r2. \wComenzar Modo Crysis^n")
	else
	{
		if (g_currentmode == MODE_CRYSIS)
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r2. \wComenzar Modo Crysis \r(Actual)^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\d2. \wComenzar Modo Crysis^n")
	}
	
	// 20. Assassins vs Snipers mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_avs())
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r3. \wComenzar Modo Assassins vs Snipers^n")
	else
	{
		if (g_currentmode == MODE_AVS)
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r3. \wComenzar Modo Assassins vs Snipers \r(Actual)^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\d3. \wComenzar Modo Assassins vs Snipers^n")
	}
	
	// 21. Apocalypse mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_apocalypse())
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r4. \wComenzar Modo Apocalypse^n")
	else
	{
		if (g_currentmode == MODE_APOCALYPSE)
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r4. \wComenzar Modo Apocalypse \r(Actual)^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\d4. \wComenzar Modo Apocalypse^n")
	}
	
	// 22. Nightmare mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_nightmare())
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r5. \wComenzar Modo Nightmare^n")
	else
	{
		if (g_currentmode == MODE_NIGHTMARE)
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r5. \wComenzar Modo Nightmare \r(Actual)^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\d5. \wComenzar Modo Nightmare^n")
	}
	
	// 23. Nightmare mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_ultimate())
		len += formatex(g_menu[len], charsmax(g_menu) - len, "\r6. \wComenzar Modo Ultimate^n")
	else
	{
		if (g_currentmode == MODE_ULTIMATE)
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\r6. \wComenzar Modo Ultimate \r(Actual)^n")
		else
			len += formatex(g_menu[len], charsmax(g_menu) - len, "\d6. \wComenzar Modo Ultimate^n")
	}

	// 0. Exit
	len += formatex(g_menu[len], charsmax(g_menu) - len, "^n\r0.\w Volver")
	
	show_menu(id, KEYSMENU, g_menu, -1,"Xtreme Menu")
}


// Admin Menu
show_menu_admin(id)
{
	// Get admin flags
	static userflags; userflags = get_user_flags(id)
	
	// Title
	formatex(g_menu, charsmax(g_menu),"\r[ZE] \yADMINISTRACION\r")
	new menu = menu_create(g_menu, "menu_admin")
	
	

	
	if (userflags & g_access_flag[ACCESS_START_MODES])
		menu_additem(menu, "\wHacer Zombie/Humano", "1")
	else
		menu_additem(menu, "\dHacer Zombie/Humano", "1")
		
	
	if (userflags & g_access_flag[ACCESS_START_MODES])
		menu_additem(menu, "\wHacer Nemesis", "2")
	else
	{
		if (g_currentmode == MODE_NEMESIS)
			menu_additem(menu, "\wHacer Nemesis \r(Actual)", "2")
		else
			menu_additem(menu, "\dHacer Nemesis", "2")
	}
	
	// 3. Alien command
	if (userflags & g_access_flag[ACCESS_START_MODES])
		menu_additem(menu, "\wHacer Alien", "3")
	else
	{
		if (g_currentmode == MODE_ALIEN)
			menu_additem(menu, "\wHacer Alien \r(Actual)", "3")
		else
			menu_additem(menu, "\dHacer Alien", "3")
	}
	
	// 4. Assassin command
	if (userflags & g_access_flag[ACCESS_START_MODES])
		menu_additem(menu, "\wHacer Assassin", "4")
	else
	{
		if (g_currentmode == MODE_ASSASSIN)
			menu_additem(menu, "\wHacer Assassin \r(Actual)", "4")
		else
			menu_additem(menu, "\dHacer Assassin", "4")
	}
	
	// 5. Demon command
	if (userflags & g_access_flag[ACCESS_START_MODES])
		menu_additem(menu, "\wHacer Demon", "5")
	else
	{
		if (g_currentmode == MODE_DEMON)
			menu_additem(menu, "\wHacer Demon \r(Actual)", "5")
		else
			menu_additem(menu, "\dHacer Demon", "5")
	}
	
	// 6. Survivor command
	if (userflags & g_access_flag[ACCESS_START_MODES])
		menu_additem(menu, "\wHacer Survivor", "6")
	else
	{
		if (g_currentmode == MODE_SURVIVOR)
			menu_additem(menu, "\wHacer Survivor \r(Actual)", "6")
		else
			menu_additem(menu, "\dHacer Survivor", "6")
	}
	
	// 7. Wesker command
	if (userflags & g_access_flag[ACCESS_START_MODES])
		menu_additem(menu, "\wHacer Wesker", "7")
	else
	{
		if (g_currentmode == MODE_WESKER)
			menu_additem(menu, "\wHacer Wesker \r(Actual)", "7")
		else
			menu_additem(menu, "\dHacer Wesker", "7")
	}
	
	// 8. Sniper command
	if (userflags & g_access_flag[ACCESS_START_MODES])
		menu_additem(menu, "\wHacer Sniper", "8")
	else
	{
		if (g_currentmode == MODE_SNIPER)
			menu_additem(menu, "\wHacer Sniper \r(Actual)", "8")
		else
			menu_additem(menu, "\dHacer Sniper", "8")
	}
	
	// 9. Predator command
	if (userflags & g_access_flag[ACCESS_START_MODES])
		menu_additem(menu, "\wHacer Predator", "9")
	else
	{
		if (g_currentmode == MODE_SNIPER)
			menu_additem(menu, "\wHacer Predator \r(Actual)", "9")
		else
			menu_additem(menu, "\dHacer Predator", "9")
	}
	
	// 10. Angel command
	if (userflags & g_access_flag[ACCESS_START_MODES])
		menu_additem(menu, "\wHacer Angel", "10")
	else
	{
		if (g_currentmode == MODE_SNIPER)
			menu_additem(menu, "\wHacer Angel \r(Actual)", "10")
		else
			menu_additem(menu, "\dHacer Angel", "10")
	}
	
	// 10. Respawn command
	if (userflags & g_access_flag[ACCESS_RESPAWN_PLAYERS])
		menu_additem(menu, "\wRevivir a Alguien", "10")
	else
		menu_additem(menu, "\dRevivir a Alguien", "10")
	
	// 11. Multi infection command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_multi())
		menu_additem(menu, "\wComenzar Modo Multiple Infeccion", "11")
	else
	{
		if (g_currentmode == MODE_MULTI)
			menu_additem(menu, "\wComenzar Modo Multiple Infeccion \r(Actual)", "11")
		else
			menu_additem(menu, "\dComenzar Modo Multiple Infeccion", "11")
	}
	
	// 12. Swarm mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_swarm())
		menu_additem(menu, "\wComenzar Modo Swarm", "12")
	else
	{
		if (g_currentmode == MODE_SWARM)
			menu_additem(menu, "\wComenzar Modo Swarm \r(Actual)", "12")
		else
			menu_additem(menu, "\dComenzar Modo Swarm", "12")
	}
	
	// 13. Plague mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_plague())
		menu_additem(menu, "\wComenzar Modo Plague", "13")
	else
	{
		if (g_currentmode == MODE_PLAGUE)
			menu_additem(menu, "\wComenzar Modo Plague \r(Actual)", "13")
		else
			menu_additem(menu, "\dComenzar Modo Plague", "13")
	}
	
	// 14. Cooperative mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_cooperative())
		menu_additem(menu, "\wComenzar Modo Cooperative", "14")
	else
	{
		if (g_currentmode == MODE_COOPERATIVE)
			menu_additem(menu, "\wComenzar Modo Cooperative \r(Actual)", "14")
		else
			menu_additem(menu, "\dComenzar Modo Cooperative", "14")
	}
	
	// 15. Cooperative mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_nextremo())
		menu_additem(menu, "\wComenzar Modo Nemesis Extremo", "15")
	else
	{
		if (g_currentmode == MODE_NEXTREMO)
			menu_additem(menu, "\wComenzar Modo Nemesis Extremo \r(Actual)", "15")
		else
			menu_additem(menu, "\dComenzar Modo Nemesis Extremo", "15")
	}
	
	// 16. Synapsis mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_synapsis())
		menu_additem(menu, "\wComenzar Modo Synapsis", "16")
	else
	{
		if (g_currentmode == MODE_SYNAPSIS)
			menu_additem(menu, "\wComenzar Modo Synapsis \r(Actual)", "16")
		else
			menu_additem(menu, "\dComenzar Modo Synapsis", "16")
	}
	
	// 17. Left 4 Dead mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_l4d())
		menu_additem(menu, "\wComenzar Modo Left 4 Dead", "17")
	else
	{
		if (g_currentmode == MODE_L4D)
			menu_additem(menu, "\wComenzar Modo Left 4 Dead \r(Actual)", "17")
		else
			menu_additem(menu, "\dComenzar Modo Left 4 Dead", "17")
	}
	
	// 18. Armageddon mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_armageddon())
		menu_additem(menu, "\wComenzar Modo Armageddon", "18")
	else
	{
		if (g_currentmode == MODE_ARMAGEDDON)
			menu_additem(menu, "\wComenzar Modo Armageddon \r(Actual)", "18")
		else
			menu_additem(menu, "\dComenzar Modo Armageddon", "18")
	}
	
	// 19. Crysis mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_crysis())
		menu_additem(menu, "\wComenzar Modo Crysis", "19")
	else
	{
		if (g_currentmode == MODE_CRYSIS)
			menu_additem(menu, "\wComenzar Modo Crysis \r(Actual)", "19")
		else
			menu_additem(menu, "\dComenzar Modo Crysis", "19")
	}
	
	// 20. Assassins vs Snipers mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_avs())
		menu_additem(menu, "\wComenzar Modo Assassins vs Snipers", "20")
	else
	{
		if (g_currentmode == MODE_AVS)
			menu_additem(menu, "\wComenzar Modo Assassins vs Snipers \r(Actual)", "20")
		else
			menu_additem(menu, "\dComenzar Modo Assassins vs Snipers", "20")
	}
	
	// 21. Apocalypse mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_apocalypse())
		menu_additem(menu, "\wComenzar Modo Apocalypse", "21")
	else
	{
		if (g_currentmode == MODE_APOCALYPSE)
			menu_additem(menu, "\wComenzar Modo Apocalypse \r(Actual)", "21")
		else
			menu_additem(menu, "\dComenzar Modo Apocalypse", "21")
	}
	
	// 22. Nightmare mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_nightmare())
		menu_additem(menu, "\wComenzar Modo Nightmare", "22")
	else
	{
		if (g_currentmode == MODE_NIGHTMARE)
			menu_additem(menu, "\wComenzar Modo Nightmare \r(Actual)", "22")
		else
			menu_additem(menu, "\dComenzar Modo Nightmare", "22")
	}
	
	// 23. Nightmare mode command
	if ((userflags & g_access_flag[ACCESS_START_MODES]) && allowed_ultimate())
		menu_additem(menu, "\wComenzar Modo Ultimate", "23")
	else
	{
		if (g_currentmode == MODE_ULTIMATE)
			menu_additem(menu, "\wComenzar Modo Ultimate \r(Actual)", "23")
		else
			menu_additem(menu, "\dComenzar Modo Ultimate", "23")
	}
	
	// Back - Next - Exit
	menu_setprop(menu, MPROP_BACKNAME, "\wAnterior")
	menu_setprop(menu, MPROP_NEXTNAME, "\wSiguiente")
	menu_setprop(menu, MPROP_EXITNAME, "\wSalir")
	
	menu_display(id, menu, 0)
}


show_menu_player_list1(id){
	static menuid, player, userflags, buffer[2]
	userflags = get_user_flags(id)
	
	// AL entrar Al menu seleccionado 
	switch (PL_ACTION)
	{
		case 0: formatex(g_menu, charsmax(g_menu), "\r[ZE] \yHacer Zombie/Humano\r")
		case 1: formatex(g_menu, charsmax(g_menu), "\r[ZE] \yHacer Nemesis\r")
		case 2: formatex(g_menu, charsmax(g_menu), "\r[ZE] \yHacer Alien\r")
		case 3: formatex(g_menu, charsmax(g_menu), "\r[ZE] \yHacer Assassin\r")
		case 4: formatex(g_menu, charsmax(g_menu), "\r[ZE] \yHacer Demon\r")
		case 5: formatex(g_menu, charsmax(g_menu), "\r[ZE] \yHacer Survivor\r")
		case 6: formatex(g_menu, charsmax(g_menu), "\r[ZE] \yHacer Wesker\r")
		case 7: formatex(g_menu, charsmax(g_menu), "\r[ZE] \yHacer Sniper\r")
		case 8: formatex(g_menu, charsmax(g_menu), "\r[ZE] \yHacer Predator\r")
		case 9: formatex(g_menu, charsmax(g_menu), "\r[ZE] \yHacer Angel\r")
	}
		menuid = menu_create(g_menu, "menu_player_list1")

		// Player List
	for (player = 0; player <= g_maxplayers; player++)
	{
		// Skip if not connected
		if (!g_isconnected[player]) continue;
		
		// Format text depending on the action to take
		switch (PL_ACTION)
		{
		

			case 0: // Nemesis command
			{
				if (allowed_nemesis(player) && (userflags & g_access_flag[ACCESS_START_MODES]))
				{
					if (g_class[player] >= ZOMBIE)
						formatex(g_menu, charsmax(g_menu), "%s \r[%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : "Zombie")
					else
						formatex(g_menu, charsmax(g_menu), "%s \y[%s]", g_playername[player], g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : "Humano")
				}
				else
					formatex(g_menu, charsmax(g_menu), "\d%s [%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : g_class[player] >= ZOMBIE ? "Zombie" : "Humano")
			}
			case 1: // Alien command
			{
				if (allowed_alien(player) && (userflags & g_access_flag[ACCESS_START_MODES]))
				{
					if (g_class[player] >= ZOMBIE)
						formatex(g_menu, charsmax(g_menu), "%s \r[%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : "Zombie")
					else
						formatex(g_menu, charsmax(g_menu), "%s \y[%s]", g_playername[player], g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : "Humano")
				}
				else
					formatex(g_menu, charsmax(g_menu), "\d%s [%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : g_class[player] >= ZOMBIE ? "Zombie" : "Humano")
			}
			case 2: // Assassin command
			{
				if (allowed_assassin(player) && (userflags & g_access_flag[ACCESS_START_MODES]))
				{
					if (g_class[player] >= ZOMBIE)
						formatex(g_menu, charsmax(g_menu), "%s \r[%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : "Zombie")
					else
						formatex(g_menu, charsmax(g_menu), "%s \y[%s]", g_playername[player], g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : "Humano")
				}
				else
					formatex(g_menu, charsmax(g_menu), "\d%s [%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : g_class[player] >= ZOMBIE ? "Zombie" : "Humano")
			}
			case 3: // Demon command
			{
				if (allowed_demon(player) && (userflags & g_access_flag[ACCESS_START_MODES]))
				{
					if (g_class[player] >= ZOMBIE)
						formatex(g_menu, charsmax(g_menu), "%s \r[%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : "Zombie")
					else
						formatex(g_menu, charsmax(g_menu), "%s \y[%s]", g_playername[player], g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : "Humano")
				}
				else
					formatex(g_menu, charsmax(g_menu), "\d%s [%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : g_class[player] >= ZOMBIE ? "Zombie" : "Humano")
			}
			case 4: // Survivor command
			{
				if (allowed_survivor(player) && (userflags & g_access_flag[ACCESS_START_MODES]))
				{
					if (g_class[player] >= ZOMBIE)
						formatex(g_menu, charsmax(g_menu), "%s \r[%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : "Zombie")
					else
						formatex(g_menu, charsmax(g_menu), "%s \y[%s]", g_playername[player], g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : "Humano")
				}
				else
					formatex(g_menu, charsmax(g_menu), "\d%s [%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : g_class[player] >= ZOMBIE ? "Zombie" : "Humano")
			}
			case 5: // Wesker command
			{
				if (allowed_wesker(player) && (userflags & g_access_flag[ACCESS_START_MODES]))
				{
					if (g_class[player] >= ZOMBIE)
						formatex(g_menu, charsmax(g_menu), "%s \r[%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : "Zombie")
					else
						formatex(g_menu, charsmax(g_menu), "%s \y[%s]", g_playername[player], g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : "Humano")
				}
				else
					formatex(g_menu, charsmax(g_menu), "\d%s [%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : g_class[player] >= ZOMBIE ? "Zombie" : "Humano")
			}
			case 6: // Sniper command
			{
				if (allowed_sniper(player) && (userflags & g_access_flag[ACCESS_START_MODES]))
				{
					if (g_class[player] >= ZOMBIE)
						formatex(g_menu, charsmax(g_menu), "%s \r[%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : "Zombie")
					else
						formatex(g_menu, charsmax(g_menu), "%s \y[%s]", g_playername[player], g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : "Humano")
				}
				else
					formatex(g_menu, charsmax(g_menu), "\d%s [%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : g_class[player] >= ZOMBIE ? "Zombie" : "Humano")
			}
			case 7: // Predator command
			{
				if (allowed_predator(player) && (userflags & g_access_flag[ACCESS_START_MODES]))
				{
					if (g_class[player] >= ZOMBIE)
						formatex(g_menu, charsmax(g_menu), "%s \r[%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : "Zombie")
					else
						formatex(g_menu, charsmax(g_menu), "%s \y[%s]", g_playername[player], g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : "Humano")
				}
				else
				         formatex(g_menu, charsmax(g_menu), "\d%s [%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : g_class[player] >= ZOMBIE ? "Zombie" : "Humano")
			}
			case 8: // Angel command
			{
				if (allowed_angel(player) && (userflags & g_access_flag[ACCESS_START_MODES]))
				{
					if (g_class[player] >= ZOMBIE)
						formatex(g_menu, charsmax(g_menu), "%s \r[%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : "Zombie")
					else
						formatex(g_menu, charsmax(g_menu), "%s \y[%s]", g_playername[player], g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : "Humano")
				}
				else
					formatex(g_menu, charsmax(g_menu), "\d%s [%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : g_class[player] >= ZOMBIE ? "Zombie" : "Humano")
			}
		}
			// Add player
		buffer[0] = player
		buffer[1] = 0
		menu_additem(menuid, g_menu, buffer)
	}
	// Back - Next - Exit
	menu_setprop(menuid, MPROP_BACKNAME, "\wAnterior")
	menu_setprop(menuid, MPROP_NEXTNAME, "\wSiguiente")
	menu_setprop(menuid, MPROP_EXITNAME, "\wSalir")
	
	// If remembered page is greater than number of pages, clamp down the value
	MENU_PAGE_PLAYERS = min(MENU_PAGE_PLAYERS, menu_pages(menuid)-1)
	
	menu_display(id, menuid, MENU_PAGE_PLAYERS)	
}

show_menu_respawn(id){
	static menuid, player, userflags, buffer[2]
	userflags = get_user_flags(id)
	
	// AL entrar Al menu seleccionado 
	switch (PL_RESPAWN)
	{
	
		case 0: formatex(g_menu, charsmax(g_menu), "\r[ZE] \wRevivir Jugador\r")
	}
	menuid = menu_create(g_menu, "menu_respawn")
// Player List
	for (player = 0; player <= g_maxplayers; player++)
	{
		// Skip if not connected
		if (!g_isconnected[player]) continue;
		
		// Format text depending on the action to take
		switch (PL_RESPAWN)
		{
			case 0: // Respawn command
			{
				if (allowed_respawn(player) && (userflags & g_access_flag[ACCESS_RESPAWN_PLAYERS]))
					formatex(g_menu, charsmax(g_menu), "%s", g_playername[player])
				else
					formatex(g_menu, charsmax(g_menu), "\d%s", g_playername[player])
			}
		}
		
		// Add player
		buffer[0] = player
		buffer[1] = 0
		menu_additem(menuid, g_menu, buffer)
	}
	
	// Back - Next - Exit
	menu_setprop(menuid, MPROP_BACKNAME, "\wAnterior")
	menu_setprop(menuid, MPROP_NEXTNAME, "\wSiguiente")
	menu_setprop(menuid, MPROP_EXITNAME, "\wVolver")
	
	// If remembered page is greater than number of pages, clamp down the value
	MENU_PAGE_PLAYERS = min(MENU_PAGE_PLAYERS, menu_pages(menuid)-1)
	
	menu_display(id, menuid, MENU_PAGE_PLAYERS)
}


// Player List Menu
show_menu_player_list(id)
{
	static menuid, player, userflags, buffer[2]
	userflags = get_user_flags(id)
	
	// AL entrar Al menu seleccionado 
	switch (PL_ACTION)
	{
		case 0: formatex(g_menu, charsmax(g_menu), "\r[ZE] \wHacer Nemesis\r")
		case 1: formatex(g_menu, charsmax(g_menu), "\r[ZE] \wHacer Alien\r")
		case 2: formatex(g_menu, charsmax(g_menu), "\r[ZE] \wHacer Assassin\r")
		case 3: formatex(g_menu, charsmax(g_menu), "\r[ZE] \wHacer Demon\r")
		case 4: formatex(g_menu, charsmax(g_menu), "\r[ZE] \wHacer Survivor\r")
		case 5: formatex(g_menu, charsmax(g_menu), "\r[ZE] \wHacer Wesker\r")
		case 6: formatex(g_menu, charsmax(g_menu), "\r[ZE] \wHacer Sniper\r")
		case 7: formatex(g_menu, charsmax(g_menu), "\r[ZE] \wHacer Predator\r")
		case 8: formatex(g_menu, charsmax(g_menu), "\r[ZE] \wHacer Angel\r")
	
	}
	menuid = menu_create(g_menu, "menu_player_list")
	
	// Player List
	for (player = 0; player <= g_maxplayers; player++)
	{
		// Skip if not connected
		if (!g_isconnected[player]) continue;
		
		// Format text depending on the action to take
		switch (PL_ACTION)
		{
			
			case 0: // Nemesis command
			{
				if (allowed_nemesis(player) && (userflags & g_access_flag[ACCESS_START_MODES]))
				{
					if (g_class[player] >= ZOMBIE)
						formatex(g_menu, charsmax(g_menu), "%s \r[%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : "Zombie")
					else
						formatex(g_menu, charsmax(g_menu), "%s \y[%s]", g_playername[player], g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : "Humano")
				}
				else
					formatex(g_menu, charsmax(g_menu), "\d%s [%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : g_class[player] >= ZOMBIE ? "Zombie" : "Humano")
			}
			case 1: // Alien command
			{
				if (allowed_alien(player) && (userflags & g_access_flag[ACCESS_START_MODES]))
				{
					if (g_class[player] >= ZOMBIE)
						formatex(g_menu, charsmax(g_menu), "%s \r[%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : "Zombie")
					else
						formatex(g_menu, charsmax(g_menu), "%s \y[%s]", g_playername[player], g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : "Humano")
				}
				else
					formatex(g_menu, charsmax(g_menu), "\d%s [%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : g_class[player] >= ZOMBIE ? "Zombie" : "Humano")
			}
			case 2: // Assassin command
			{
				if (allowed_assassin(player) && (userflags & g_access_flag[ACCESS_START_MODES]))
				{
					if (g_class[player] >= ZOMBIE)
						formatex(g_menu, charsmax(g_menu), "%s \r[%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : "Zombie")
					else
						formatex(g_menu, charsmax(g_menu), "%s \y[%s]", g_playername[player], g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : "Humano")
				}
				else
					formatex(g_menu, charsmax(g_menu), "\d%s [%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : g_class[player] >= ZOMBIE ? "Zombie" : "Humano")
			}
			case 3: // Demon command
			{
				if (allowed_demon(player) && (userflags & g_access_flag[ACCESS_START_MODES]))
				{
					if (g_class[player] >= ZOMBIE)
						formatex(g_menu, charsmax(g_menu), "%s \r[%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : "Zombie")
					else
						formatex(g_menu, charsmax(g_menu), "%s \y[%s]", g_playername[player], g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : "Humano")
				}
				else
					formatex(g_menu, charsmax(g_menu), "\d%s [%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : g_class[player] >= ZOMBIE ? "Zombie" : "Humano")
			}
			case 4: // Survivor command
			{
				if (allowed_survivor(player) && (userflags & g_access_flag[ACCESS_START_MODES]))
				{
					if (g_class[player] >= ZOMBIE)
						formatex(g_menu, charsmax(g_menu), "%s \r[%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : "Zombie")
					else
						formatex(g_menu, charsmax(g_menu), "%s \y[%s]", g_playername[player], g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : "Humano")
				}
				else
					formatex(g_menu, charsmax(g_menu), "\d%s [%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : g_class[player] >= ZOMBIE ? "Zombie" : "Humano")
			}
			case 5: // Wesker command
			{
				if (allowed_wesker(player) && (userflags & g_access_flag[ACCESS_START_MODES]))
				{
					if (g_class[player] >= ZOMBIE)
						formatex(g_menu, charsmax(g_menu), "%s \r[%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : "Zombie")
					else
						formatex(g_menu, charsmax(g_menu), "%s \y[%s]", g_playername[player], g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : "Humano")
				}
				else
					formatex(g_menu, charsmax(g_menu), "\d%s [%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : g_class[player] >= ZOMBIE ? "Zombie" : "Humano")
			}
			case 6: // Sniper command
			{
				if (allowed_sniper(player) && (userflags & g_access_flag[ACCESS_START_MODES]))
				{
					if (g_class[player] >= ZOMBIE)
						formatex(g_menu, charsmax(g_menu), "%s \r[%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : "Zombie")
					else
						formatex(g_menu, charsmax(g_menu), "%s \y[%s]", g_playername[player], g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : "Humano")
				}
				else
					formatex(g_menu, charsmax(g_menu), "\d%s [%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : g_class[player] >= ZOMBIE ? "Zombie" : "Humano")
			}
			case 7: // Predator command
			{
				if (allowed_predator(player) && (userflags & g_access_flag[ACCESS_START_MODES]))
				{
					if (g_class[player] >= ZOMBIE)
						formatex(g_menu, charsmax(g_menu), "%s \r[%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : "Zombie")
					else
						formatex(g_menu, charsmax(g_menu), "%s \y[%s]", g_playername[player], g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : "Humano")
				}
				else
				         formatex(g_menu, charsmax(g_menu), "\d%s [%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : g_class[player] >= ZOMBIE ? "Zombie" : "Humano")
			}
			case 8: // Angel command
			{
				if (allowed_angel(player) && (userflags & g_access_flag[ACCESS_START_MODES]))
				{
					if (g_class[player] >= ZOMBIE)
						formatex(g_menu, charsmax(g_menu), "%s \r[%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : "Zombie")
					else
						formatex(g_menu, charsmax(g_menu), "%s \y[%s]", g_playername[player], g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : "Humano")
				}
				else
					formatex(g_menu, charsmax(g_menu), "\d%s [%s]", g_playername[player], g_class[player] == NEMESIS ? "Nemesis" : g_class[player] == ALIEN ? "Alien" : g_class[player] == ASSASSIN ? "Assassin" : g_class[player] == DEMON ? "Demon" : g_class[player] == SURVIVOR ? "Survivor" : g_class[player] == WESKER ? "Wesker" : g_class[player] == SNIPER ? "Sniper" : g_class[player] == PREDATOR ? "Predator" : g_class[player] == ANGEL ? "Angel" : g_class[player] >= ZOMBIE ? "Zombie" : "Humano")
			}

			/*case 10: // Respawn command
			{
				if (allowed_respawn(player) && (userflags & g_access_flag[ACCESS_RESPAWN_PLAYERS]))
					formatex(g_menu, charsmax(g_menu), "%s", g_playername[player])
				else
					formatex(g_menu, charsmax(g_menu), "\d%s", g_playername[player])
			}*/
		}
		
		// Add player
		buffer[0] = player
		buffer[1] = 0
		menu_additem(menuid, g_menu, buffer)
	}
	
	// Back - Next - Exit
	menu_setprop(menuid, MPROP_BACKNAME, "\wAnterior")
	menu_setprop(menuid, MPROP_NEXTNAME, "\wSiguiente")
	menu_setprop(menuid, MPROP_EXITNAME, "\wSalir")
	
	// If remembered page is greater than number of pages, clamp down the value
	MENU_PAGE_PLAYERS = min(MENU_PAGE_PLAYERS, menu_pages(menuid)-1)
	
	menu_display(id, menuid, MENU_PAGE_PLAYERS)
}

/*================================================================================
 [Menu Handlers]
=================================================================================*/

// Loggin Account Menu
public menu_registration(id, menu, item)
{
	// Player disconnected?
	if (!g_isconnected[id]) return PLUGIN_HANDLED;
	
	switch (item)
	{
		case 0: 
		{
			CONFIRM_MENU = 0
			client_cmd(id, "messagemode ^"register_id^"")
			set_hudmessage(255, 0, 0, 0.03, 0.05, 0, 0.1, 4.0, 0.01, 0.01, -1)
			ShowSyncHudMsg(id, g_MsgSync5, "Ingresa un ID^nPulse ESC para salir")
		}
		case 1:
		{
			// Attempts?
			if (g_attempts[id] >= 1)
			{
				client_cmd(id, "messagemode ^"your_id^"")
				set_hudmessage(255, 0, 0, 0.03, 0.05, 0, 0.1, 4.0, 0.01, 0.01, -1)
				ShowSyncHudMsg(id, g_MsgSync5, "Ingresa tu ID^nPulse ESC para salir")
			}
			else
				client_print(id, print_center, "[ZE] Error: Agotaste el maximo de intentos")
		}
	}
	
	return PLUGIN_HANDLED;
}

// Confirm Menu
public menu_confirm(id, menu, item)
{
	switch (item)
	{
		case 0: 
		{
			switch (CONFIRM_MENU)
			{
				case 0: create_account(id)
				case 1: create_character(id)
				case 2: fame_account(id)
				case 3: change_password(id)
			}
		}
		case 1: 
		{
			switch (CONFIRM_MENU)
			{
				case 0: show_menu_registration(id)
				case 2: show_menu_user(id)
				default: show_menu_character_selection(id)
			}
		}
	}
	CONFIRM_MENU = 0
	return PLUGIN_HANDLED;
}

// Character Selection Menu
public menu_character_selection(id, menu, item)
{
	switch (item)
	{
		case 0:
		{
			SELECTED_CHARACTER = item
			
			if (equal(g_charactername[id][item], "None"))
			{
				CONFIRM_MENU = 1
				show_menu_confirm(id)
			}
			else
				Load(id, 1)
		}
		case 1:
		{
			client_cmd(id, "messagemode ^"your_password^"")
			set_hudmessage(255, 0, 0, 0.03, 0.05, 0, 0.1, 4.0, 0.01, 0.01, -1)
			ShowSyncHudMsg(id, g_MsgSync5, "Ingresa tu Contrasenia actual^nPulse ESC para salir")
		}
		case 2: log_out(id, 0)
	}
	
	return PLUGIN_HANDLED;
}

// Character Menu
public menu_character(id, menu, item)
{
	switch (item)
	{
		case 0: loggin_success(id)
		case 1: loggin_success(id, 1)
		case 2: show_menu_character_selection(id)
	}
	
	return PLUGIN_HANDLED;
}

// Game Menu
public menu_game(id, key)
{
	// Player disconnected?
	if (!g_isconnected[id]) return PLUGIN_HANDLED;
	
	switch (key)
	{
		case 0: // Buy Weapons / If logged spectator, leave spectator team
		{
			if (g_status[id] == ONLINE_SPEC)
				join_team_t_ct(id)
			else
			{
				// Custom buy menus enabled?
				if (get_pcvar_num(cvar_buycustom))
				{
					// Show menu if player hasn't yet bought anything
					if (g_class[id] < SURVIVOR)
					{
						if (g_isalive[id])
						{
							if(g_nomenu[id] == 0)
                                			{
			        				if(g_canbuy[id] == 0)
                                				{
                                        				show_menu_weapon(id)
                                				}
			        				else if(g_canbuy[id] == 1)
                                				{
			               					zp_colored_print(id, "^x04[ZE]^x01 Ya Has Comprado Armas")
                                				}
                                			}
							else if(g_nomenu[id] == 1)
                                			{
			        				g_nomenu[id] = 0
                                       	 			zp_colored_print(id, "^x04[ZE]^x01 Has Habilitado El Menu de Armas")
                                			}
                                		}
						else
						{
							zp_colored_print(id, "^x04[ZE]^x01 Debes Estar Vivo Para Entrar El Menu De Armas")
                                		}
					}
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 Menu De Armas Esta Desactivado")
			}
		}
		case 1: // Extra Items
		{
			// Extra items enabled?
			if (get_pcvar_num(cvar_extraitems))
			{
				// Check whether the player is able to buy anything
				if (g_isalive[id]) show_menu_extras(id)
			}
			else
				zp_colored_print(id, "^x04[ZE]^x01 Los Items Extras estan desactivados.")
		}
		case 2: // Human Classes
		{
			show_menu_personaje(id)
		}
		case 3: // User configuration menu
		{
			cmdParty(id)
		}
		case 4: // User configuration menu
		{
			show_menu_user(id)
		}
		case 5: // Unstuck
		{
			// Check if player is stuck
			if (g_isalive[id])
			{
				if (is_player_stuck(id))
				{
					// Move to an initial spawn
					if (get_pcvar_num(cvar_randspawn))
						do_random_spawn(id) // random spawn (including CSDM)
					else
						do_random_spawn(id, 1) // regular spawn
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No te encuentras trabado.")
			}
		}
		case 6: // User configuration menu
		{
			eg_camara(id);
		}
		case 7:
		{
			 if (get_user_flags(id) & g_access_flag[ADMIN_RESERVATION])
			diamondmenu(id)
		else
				zp_colored_print(id, "^x04[ZE]^x01 No eres Vip.")
		}
		
		case 8: // Admin Menu
		{
			// Check if player has the required access
			if (get_user_flags(id) & g_access_flag[ACCESS_ADMIN_MENU])
				show_menu_admin1(id)
			else
				zp_colored_print(id, "^x04[ZE]^x01 No eres admin.")
		}
	}
	
	return PLUGIN_HANDLED;
}

// Category Weapons Menu
public menu_category(id, key)
{
	// Player dead?
	if (!g_isalive[id]) return PLUGIN_HANDLED;
	
	// Not normal human
	if (g_class[id] >= SURVIVOR) return PLUGIN_HANDLED;
	
	switch (key)
	{
		case 0: // Category A
		{
			g_categoryb[id] = false
			show_menu_buy1(id)
		}
		case 1: // Category B
		{
			if (g_fame[id] >= g_fame_category[0] || (get_user_flags(id) & g_access_flag[ACCESS_WEAPONS_FREE]))
			{
				g_categoryb[id] = true
				show_menu_buy1(id)
			}
			else
				show_menu_category(id)
		}
		case 2: // Category E
		{
			if (g_fame[id] >= g_fame_category[1] || (get_user_flags(id) & g_access_flag[ACCESS_WEAPONS_FREE]))
			{
				g_categoryb[id] = false
				show_menu_buy1(id)
			}
			else
				show_menu_category(id)
		}
	}
	
	return PLUGIN_HANDLED;
}

// Buy Menu 1
public menu_buy1(id, key)
{
	// Player dead?
	if (!g_isalive[id]) return PLUGIN_HANDLED;
	
	// Not normal human
	if (g_class[id] >= SURVIVOR) return PLUGIN_HANDLED;
	
	// Special keys / weapon list exceeded
	if (key >= MENU_KEY_BACK || WPN_SELECTION >= WPN_MAXIDS)
	{
		switch (key)
		{
			case MENU_KEY_BACK: // back
			{
				if (WPN_STARTID-7 >= 0) WPN_STARTID -= 7
			}
			case MENU_KEY_NEXT: // next
			{
				if (WPN_STARTID+7 < WPN_MAXIDS) WPN_STARTID += 7
			}
			case MENU_KEY_EXIT: // exit
			{
				show_menu_weapon(id)
				return PLUGIN_HANDLED;
			}
		}
		
		// Show buy menu again
		show_menu_buy1(id)
		return PLUGIN_HANDLED;
	}
	
	// Buy primary weapon
	buy_primary_weapon(id, WPN_SELECTION)
	
	return PLUGIN_HANDLED;
}

// Buy Primary Weapon
buy_primary_weapon(id, selection)
{
	// Get weapon's id and name
	g_primary[id] = selection

	show_menu_weapon(id)

	return PLUGIN_HANDLED;
}

// Buy Menu 2
public menu_buy2(id, key)
{
	switch (key)
	{
		case MENU_KEY_EXIT: // exit
		{
			show_menu_weapon(id)
			return PLUGIN_HANDLED;
		}
	}
		
	// Get weapon's id and name
	g_secondary[id] = key

	show_menu_weapon(id)

	return PLUGIN_HANDLED;
}

// Extra Items Menu
public menu_extras(id, menuid, item)
{
	// Player disconnected?
	if (!is_user_connected(id)) return PLUGIN_HANDLED;
	
	// Remember player's menu page
	static menudummy
	player_menu_info(id, menudummy, menudummy, MENU_PAGE_EXTRAS)
	
	// Menu was closed
	if (item == MENU_EXIT) return PLUGIN_HANDLED;
	
	// Dead players are not allowed to buy items
	if (!g_isalive[id]) return PLUGIN_HANDLED;
	
	// Retrieve extra item id
	static buffer[2], dummy, itemid
	menu_item_getinfo(menuid, item, dummy, buffer, charsmax(buffer), _, _, dummy)
	itemid = buffer[0]
	
	// Attempt to buy the item
	buy_extra_item(id, itemid)
	
	return PLUGIN_HANDLED;
}

// Buy Extra Item
buy_extra_item(id, itemid, ignorecost = 0)
{
	// Retrieve item's team
	static team
	team = ArrayGetCell(g_extraitem_team, itemid)
	
	// Check for team/class specific items
	if (((g_class[id] >= ZOMBIE && g_class[id] < NEMESIS) && !(team & ZP_TEAM_ZOMBIE)) || (g_class[id] < SURVIVOR && !(team & ZP_TEAM_HUMAN)) || (g_class[id] == NEMESIS && !(team & ZP_TEAM_NEMESIS)) || (g_class[id] == ALIEN && !(team & ZA_TEAM_ALIEN)) || 
	(g_class[id] == ASSASSIN && !(team & ZP_TEAM_NEMESIS)) || (g_class[id] == DEMON && !(team & ZP_TEAM_NEMESIS)) || (g_class[id] == SURVIVOR && !(team & ZP_TEAM_SURVIVOR)) || (g_class[id] == WESKER && !(team & ZA_TEAM_WESKER)) || (g_class[id] == SNIPER && !(team & ZP_TEAM_SURVIVOR)) || (g_class[id] == PREDATOR && !(team & ZP_TEAM_SURVIVOR)) || (g_class[id] == ANGEL && !(team & ZP_TEAM_SURVIVOR)))
	{
		zp_colored_print(id, "^x04[ZE]^x01 Este item no es para tu clase.")
		return;
	}
	
	// Check for unavailable items
	if ((itemid == EXTRA_NVISION && !get_pcvar_num(cvar_extranvision))
	|| (itemid == EXTRA_FIRE && !get_pcvar_num(cvar_extraitems))
	|| (itemid == EXTRA_FROST && !get_pcvar_num(cvar_extraitems))
	|| (itemid == EXTRA_GAS && !get_pcvar_num(cvar_extraitems))
	|| (itemid == EXTRA_ANTI && !get_pcvar_num(cvar_extraitems))
	|| (itemid == EXTRA_ANTIDOTE && (!get_pcvar_num(cvar_extraantidote) || g_antidotecounter >= get_pcvar_num(cvar_antidotelimit)))
	|| (itemid == EXTRA_MADNESS && (!get_pcvar_num(cvar_extramadness) || g_madnesscounter >= get_pcvar_num(cvar_madnesslimit)))
	|| (itemid == EXTRA_INFBOMB && (!get_pcvar_num(cvar_extrainfbomb) || g_infbombcounter >= get_pcvar_num(cvar_infbomblimit)))
	|| (itemid == EXTRA_ANTI_ICE && (!get_pcvar_num(cvar_extra_anti_ice) || g_anti_ice_counter >= get_pcvar_num(cvar_anti_ice_limit)))
	|| (itemid == EXTRA_ANTI_FIRE && (!get_pcvar_num(cvar_extra_anti_fire) || g_anti_fire_counter >= get_pcvar_num(cvar_anti_fire_limit)))
	|| (itemid >= EXTRA_WEAPONS_STARTID && itemid <= EXTRAS_CUSTOM_STARTID-1 && !get_pcvar_num(cvar_extraweapons)))
	{
		zp_colored_print(id, "^x04[ZE]^x01 Item desactivado.")
		return;
	}
	
	// Check for hard coded items with special conditions
	if ((itemid == EXTRA_ANTIDOTE && (g_endround || g_currentmode > MODE_MULTI || fnGetZombies() <= 1 || (get_pcvar_num(cvar_deathmatch) && !get_pcvar_num(cvar_respawnafterlast) && fnGetHumans() == 1)))
	|| (itemid == EXTRA_MADNESS && g_nodamage[id]) || (itemid == EXTRA_INFBOMB && (g_endround || g_currentmode > MODE_MULTI)) || (itemid == EXTRA_ANTI && (g_endround || g_currentmode > MODE_MULTI)))
	{
		zp_colored_print(id, "^x04[ZE]^x01 No puedes usarlo ahora.")
		return;
	}
	
	// Ignore item's cost?
	if (!ignorecost)
	{
		// Check that we have level required and enough ammopacks
		if ((g_level[id] >= ArrayGetCell(g_extraitem_lvl, itemid) || (get_user_flags(id) & g_access_flag[ACCESS_EXTRA_ITEMS_FREE])) && g_ammopacks[id][0] >= ArrayGetCell(g_extraitem_cost, itemid))
		{
			// Deduce item cost
			g_ammopacks[id][0] -= ArrayGetCell(g_extraitem_cost, itemid)
			g_ammopacks[id][1] += ArrayGetCell(g_extraitem_cost, itemid)
		}
		else
		{
			if (!g_isbot[id]) show_menu_extras(id)
			return;
		}
	}
	
	// Check which kind of item we're buying
	switch (itemid)
	{
		case EXTRA_NVISION: // Night Vision
		{
			g_nvision[id] = true
			
			Color(id, "!g[ZE]!y Has Comprado!t Vision Nocturna")
			
			if (!g_isbot[id])
			{
				remove_task(id+TASK_NVISION)
				g_nvisionenabled[id] = false				
				set_task(0.1, "set_user_nvision", id+TASK_NVISION, _, _, "b")
			}
			else
				cs_set_user_nvg(id, 1)
		}
		case EXTRA_FIRE: 
		{
			Color(id, "!g[ZE]!y Has Comprado!t G. de Fuego")
			
			if (user_has_weapon(id, CSW_HEGRENADE))
			{
				// Increase BP ammo on it instead
				cs_set_user_bpammo(id, CSW_HEGRENADE, cs_get_user_bpammo(id, CSW_HEGRENADE) + 1)
				
				// Flash ammo in hud
				message_begin(MSG_ONE_UNRELIABLE, g_msgAmmoPickup, _, id)
				write_byte(AMMOID[CSW_HEGRENADE]) // ammo id
				write_byte(1) // ammo amount
				message_end()
				
				// Play clip purchase sound
				emit_sound(id, CHAN_ITEM, sound_buyammo, 1.0, ATTN_NORM, 0, PITCH_NORM)
				
				return; // stop here
			}
			
			give_item(id, "weapon_hegrenade")
		}
		case EXTRA_FROST: 
		{
			Color(id, "!g[ZE]!y Has Comprado!t G. de Hielo")
			
			if (user_has_weapon(id, CSW_FLASHBANG))
			{
				// Increase BP ammo on it instead
				cs_set_user_bpammo(id, CSW_FLASHBANG, cs_get_user_bpammo(id, CSW_FLASHBANG) + 1)
				
				// Flash ammo in hud
				message_begin(MSG_ONE_UNRELIABLE, g_msgAmmoPickup, _, id)
				write_byte(AMMOID[CSW_FLASHBANG]) // ammo id
				write_byte(1) // ammo amount
				message_end()
				
				// Play clip purchase sound
				emit_sound(id, CHAN_ITEM, sound_buyammo, 1.0, ATTN_NORM, 0, PITCH_NORM)
				
				return; // stop here
			}
			
			give_item(id, "weapon_flashbang")
		}
		case EXTRA_GAS: 
		{
			g_smokegrenade[id] = 0
			
			Color(id, "!g[ZE]!y Has Comprado!t Gas Balon")
			
			if (user_has_weapon(id, CSW_SMOKEGRENADE))
			{
				// Increase BP ammo on it instead
				cs_set_user_bpammo(id, CSW_SMOKEGRENADE, cs_get_user_bpammo(id, CSW_SMOKEGRENADE) + 1)
				
				// Flash ammo in hud
				message_begin(MSG_ONE_UNRELIABLE, g_msgAmmoPickup, _, id)
				write_byte(AMMOID[CSW_SMOKEGRENADE]) // ammo id
				write_byte(1) // ammo amount
				message_end()
				
				// Play clip purchase sound
				emit_sound(id, CHAN_ITEM, sound_buyammo, 1.0, ATTN_NORM, 0, PITCH_NORM)
				
				return; // stop here
			}
			
			give_item(id, "weapon_smokegrenade")
		}
		case EXTRA_ANTI: 
		{
			g_smokegrenade[id] = 1
			
			Color(id, "!g[ZE]!y Has Comprado!t Bomba de Antidoto")
			
			give_item(id, "weapon_smokegrenade")
		}
		case EXTRA_ANTIDOTE: // Antidote
		{
			// Increase antidote purchase count for this round
			g_antidotecounter++
			
			Color(id, "!g[ZE]!y Has Comprado!t Antidoto del Virus-T")
			
			humanme(id, 0, 0)
		}
		case EXTRA_MADNESS: // Zombie Madness
		{
			// Increase madness purchase count for this round
			g_madnesscounter++
			
			Color(id, "!g[ZE]!y Has Comprado!t Furia Zombie")
			
			g_madness[id] = true
			g_nodamage[id] = true
			set_rendering(id, kRenderFxGlowShell, 255, 0, 0, kRenderNormal, 200)
			set_task(get_pcvar_float(cvar_madnessduration ), "madness_over", id+TASK_BLOOD)                  			                   			   		     

			static sound[64]
			ArrayGetString(zombie_madness, random_num(0, ArraySize(zombie_madness) - 1), sound, charsmax(sound))
			emit_sound(id, CHAN_VOICE, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)
		}
		case EXTRA_INFBOMB: // Infection Bomb
		{
			// Increase infection bomb purchase count for this round
			g_infbombcounter++
			
			Color(id, "!g[ZE]!y Has Comprado!t Bomba de Infeccion")
			
			// Already own one
			if (user_has_weapon(id, CSW_HEGRENADE))
			{
				// Increase BP ammo on it instead
				cs_set_user_bpammo(id, CSW_HEGRENADE, cs_get_user_bpammo(id, CSW_HEGRENADE) + 1)
				
				// Flash ammo in hud
				message_begin(MSG_ONE_UNRELIABLE, g_msgAmmoPickup, _, id)
				write_byte(AMMOID[CSW_HEGRENADE]) // ammo id
				write_byte(1) // ammo amount
				message_end()
				
				// Play clip purchase sound
				emit_sound(id, CHAN_ITEM, sound_buyammo, 1.0, ATTN_NORM, 0, PITCH_NORM)
				
				return; // stop here
			}
			
			// Give weapon to the player
			give_item(id, "weapon_hegrenade")
		}
		case EXTRA_ANTI_ICE: // Zombie Madness
		{
			g_anti_ice_counter++
			
			Color(id, "!g[ZE]!y Has Comprado!t Anti-Congelacion")
			
			g_anti_ice[id] = true  
		}
		case EXTRA_ANTI_FIRE: // Zombie Madness
		{
			g_anti_fire_counter++
			
			Color(id, "!g[ZE]!y Has Comprado!t Anti-Incendiaria")
			
			g_anti_fire[id] = true 
		}
		default:
		{
			if (itemid >= EXTRA_WEAPONS_STARTID && itemid <= EXTRAS_CUSTOM_STARTID-1) // Weapons
			{
				// Get weapon's id and name
				static weaponid, wname[32]
				ArrayGetString(g_extraweapon_items, itemid - EXTRA_WEAPONS_STARTID, wname, charsmax(wname))
				weaponid = cs_weapon_name_to_id(wname)
				
				// If we are giving a primary/secondary weapon
				if (MAXBPAMMO[weaponid] > 2)
				{
					// Make user drop the previous one
					if ((1<<weaponid) & PRIMARY_WEAPONS_BIT_SUM)
						drop_weapons(id, 1)
					else
						drop_weapons(id, 2)
					
					// Give full BP ammo for the new one
					ExecuteHamB(Ham_GiveAmmo, id, MAXBPAMMO[weaponid], AMMOTYPE[weaponid], MAXBPAMMO[weaponid])
				}
				// If we are giving a grenade which the user already owns
				else if (user_has_weapon(id, weaponid))
				{
					// Increase BP ammo on it instead
					cs_set_user_bpammo(id, weaponid, cs_get_user_bpammo(id, weaponid) + 1)
					
					// Flash ammo in hud
					message_begin(MSG_ONE_UNRELIABLE, g_msgAmmoPickup, _, id)
					write_byte(AMMOID[weaponid]) // ammo id
					write_byte(1) // ammo amount
					message_end()
					
					// Play clip purchase sound
					emit_sound(id, CHAN_ITEM, sound_buyammo, 1.0, ATTN_NORM, 0, PITCH_NORM)
					
					return; // stop here
				}
				
				// Give weapon to the player
				give_item(id, wname)
			}
			else // Custom additions
			{
				// Item selected forward
				ExecuteForward(g_fwExtraItemSelected, g_fwDummyResult, id, itemid);
				
				// Item purchase blocked, restore buyer's ammo packs
				if (g_fwDummyResult >= ZP_PLUGIN_HANDLED && !ignorecost)
				{
					g_ammopacks[id][0] += ArrayGetCell(g_extraitem_cost, itemid)
					g_ammopacks[id][1] -= ArrayGetCell(g_extraitem_cost, itemid)
				}
			}
		}
	}
}

// Función para manejar la selección del menú de clase humana
public menu_hclass(id, menuid, item)
{
    // Jugador desconectado
    if (!is_user_connected(id)) return PLUGIN_HANDLED;
    
    // Recordar la página del menú del jugador
    static menudummy;
    player_menu_info(id, menudummy, menudummy, MENU_PAGE_HCLASS);
    
    // Menú cerrado
    if (item == MENU_EXIT) return PLUGIN_HANDLED;
    
    // Recuperar el ID de la clase seleccionada
    static buffer[2], dummy, classid;
    menu_item_getinfo(menuid, item, dummy, buffer, charsmax(buffer), _, _, dummy);
    classid = buffer[0];

    // Verificar si el jugador cumple el nivel requerido
    if (g_level[id] < ArrayGetCell(g_hclass_lvl, classid) && !(get_user_flags(id) & g_access_flag[ACCESS_CLASSES_FREE]))
    {
        show_menu_hclass(id); // Mostrar de nuevo el menú si no tiene el nivel
        return PLUGIN_HANDLED;
    }

    // Guardar la selección temporalmente en `g_selected_human_class`
    g_selected_human_class[id] = classid;

    // Mostrar información de la clase antes de confirmar
    show_human_class_info(id, classid);
    
    // Destruir el menú actual
    menu_destroy(menuid);
    return PLUGIN_HANDLED;
}

// Declaración global para almacenar la clase seleccionada temporalmente
new g_selected_class[MAX_PLAYERS+1]; // Usamos +1 porque los IDs de los jugadores empiezan desde 1

// Zombie Class Menu
public menu_zclass(id, menuid, item)
{
    // Player disconnected?
    if (!is_user_connected(id)) return PLUGIN_HANDLED;

    // Menu was closed
    if (item == MENU_EXIT) return PLUGIN_HANDLED;

    // Retrieve zombie class id
    static buffer[2], dummy, classid;
    menu_item_getinfo(menuid, item, dummy, buffer, charsmax(buffer), _, _, dummy);
    classid = buffer[0];

    // Check level required
    if (g_level[id] < ArrayGetCell(g_zclass_lvl, classid) && !(get_user_flags(id) & g_access_flag[ACCESS_CLASSES_FREE]))
    {
        show_menu_zclass(id); // Show the class menu again
        return PLUGIN_HANDLED;
    }

    // Store the selected class temporarily
    g_selected_class[id] = classid; // Guardamos temporalmente la clase seleccionada

    // Show class information before confirming
    show_zombie_class_info(id, classid);

    // Destroy the menu
    menu_destroy(menuid);
    return PLUGIN_HANDLED;
}

// Mostrar información de la clase zombie antes de elegir
public show_zombie_class_info(id, classid)
{
    // Buffer para almacenar el texto del menú
    static buffer[256], name[32], description[128], len;
    len = 0;

    // Recupera el nombre de la clase y la descripción
    ArrayGetString(g_zclass_name, classid, name, charsmax(name));
    ArrayGetString(g_zclass_info, classid, description, charsmax(description));

    // Recupera las estadísticas
    new vida = ArrayGetCell(g_zclass_hp, classid) + ammount_zhealth(g_level[id]);
    new velocidad = ArrayGetCell(g_zclass_spd, classid) + floatround(ammount_zspeed(g_level[id]));
    new gravedad = floatround(Float:ArrayGetCell(g_zclass_grav, classid) * 800.0 - floatround(Float:ammount_zgravity(g_level[id]) * 800.0));

    // Formatear el menú con la información
    len += formatex(buffer[len], charsmax(buffer) - len, "\yCLASE ZOMBIE - %s^n^n", name);
    len += formatex(buffer[len], charsmax(buffer) - len, "\yDESCRIPCIÓN\r:^n \r- \w%s^n^n", description);
    len += formatex(buffer[len], charsmax(buffer) - len, "\yESTADÍSTICAS BASE\r:^n");
    len += formatex(buffer[len], charsmax(buffer) - len, "\r-\wVIDA\r: \y%d^n", vida);
    len += formatex(buffer[len], charsmax(buffer) - len, "\r-\wVELOCIDAD\r: \y%d^n", velocidad);
    len += formatex(buffer[len], charsmax(buffer) - len, "\r-\wGRAVEDAD\r: \y%d^n", gravedad);

    // Mostrar el menú
    show_zombie_class_menu(id, buffer);
}

// Función para manejar la selección del menú de la clase zombie
public show_zombie_class_menu(id, buffer[])
{
    static menuid;

    // Crear el menú basado en la información pasada
    menuid = menu_create(buffer, "menu_zclass_confirm");

    // Asignar opciones para el menú
    menu_additem(menuid, "Elegir Clase", "0", 0);
    menu_additem(menuid, "Volver", "1", 0);

    // Mostrar el menú al jugador
    menu_display(id, menuid, 0);
}

// Función para manejar la confirmación del menú
public menu_zclass_confirm(id, menuid, item)
{
    // Si el jugador cierra el menú, no hacer nada
    if (item == MENU_EXIT) return PLUGIN_HANDLED;

    switch (item)
    {
        case 1: // Volver
        {
            show_menu_zclass(id); // Volver a mostrar el menú principal de clases
            return PLUGIN_HANDLED;
        }
        case 0: // Confirmar selección de clase
        {
            // Guardar la clase seleccionada temporalmente
            g_zombieclassnext[id] = g_selected_class[id]; // Asignamos la clase seleccionada previamente

            // Recuperar el nombre de la clase para mostrar la confirmación
            static name[32];
            ArrayGetString(g_zclass_name, g_zombieclassnext[id], name, charsmax(name));

            // Confirmar la clase al jugador
            zp_colored_print(id, "^x04[ZE]^x01 En tu próxima infección tu clase será: %s", name);
        }
    }

    // Destruir el menú
    menu_destroy(menuid);
    return PLUGIN_HANDLED;
}
// Skill Main Menu
public menu_skill(id, key)
{
	switch (key)
	{
		case 0,1:
		{
			SKILL_MENU = key
			show_menu_upgrade(id)
		}
		case 2: show_menu_exchange(id)
	}
	
	return PLUGIN_HANDLED;
}

// Upgrade Skill Menu
public menu_upgrade(id, key)
{
	switch (key)
	{
		case MENU_KEY_EXIT: // exit
		{
			return PLUGIN_HANDLED;
		}
		case 0..4:
		{
			if (g_skill_points[id][SKILL_MENU][key] < g_skill_max[SKILL_MENU][key])
			{
				if (g_points[id][SKILL_MENU] >= skill_cost(g_skill_points[id][SKILL_MENU][key]))
				{
					g_points[id][SKILL_MENU] -= skill_cost(g_skill_points[id][SKILL_MENU][key])
					g_usedpoints[id][SKILL_MENU] += skill_cost(g_skill_points[id][SKILL_MENU][key])
					g_skill_points[id][SKILL_MENU][key]++
				}    
			}
		}
		case 5:
		{
			if (g_usedpoints[id][SKILL_MENU] >= 1)
			{
				for (new i = 0; i < 5; i++) g_skill_points[id][SKILL_MENU][i] = 0
				g_points[id][SKILL_MENU] += g_usedpoints[id][SKILL_MENU]
				g_usedpoints[id][SKILL_MENU] = 0
			}
		}
	}
	show_menu_upgrade(id)
	return PLUGIN_HANDLED;
}

// Exchange Points Menu
public menu_exchange(id, key)
{
	switch (key)
	{
		case MENU_KEY_EXIT: // exit
		{
			return PLUGIN_HANDLED;
		}
		case 0:
		{
			if (g_points[id][0] >= 2)
			{
				g_points[id][0] -= 2
				g_points[id][1]++
				zp_colored_print(id, "^x04[ZE]^x03 Intercambio de puntos completado!")
			}
		}
		case 1:
		{
			if (g_points[id][1] >= 2)
			{
				g_points[id][1] -= 2
				g_points[id][0]++
				zp_colored_print(id, "^x04[ZE]^x03 Intercambio de puntos completado!")
			}
		}
		case 2,3:
		{
			if (g_points[id][key-2])
			{
				g_points[id][key-2]--
				g_experience[id] += 250
				update_level(id)
				zp_colored_print(id, "^x04[ZE]^x03 Intercambio de puntos completado!")
			}
		}
	}
	show_menu_exchange(id)
	return PLUGIN_HANDLED;
}

// Quest Menu
public menu_quest(id, key)
{
	// Player disconnected?
	if (!is_user_connected(id)) return PLUGIN_HANDLED;
	
	switch (key)
	{
		case MENU_KEY_EXIT: // exit
		{
			return PLUGIN_HANDLED;
		}
		case 8: // cancel quest
		{
			if (g_quest[id])
			{
				g_quest[id] = g_questrounds[id] = 0
				for (new i = 0; i < 8; i++) g_questkill[id][i] = 0
				Color(id, "!g[ZE]!y Mision Cancelada")
			}
		}
		default: // accept quest
		{
			if (g_quest[id] == 0)
			{
			if (g_questcompleted[id][key] < g_quest_max[0][key])
			{	
				g_quest[id] = key + 1
				g_questrounds[id] = round_cost(g_questcompleted[id][key])
				
				Color(id, "!g[ZE]!y Mision Comenzada")
				
			}	
			}	
			else if (g_quest[id] == key + 1)
			{
				if (g_questkill[id][key] >= quest_cost(g_questcompleted[id][key]))
				{
					// This is the reward
					switch (g_quest[id])
					{
						default:
						{							
							g_experience[id] += experience + experience_cost(g_questcompleted[id][key])							
							update_level(id)	
							zp_colored_print(id, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp por Completar la^x04 Mision", experience + experience_cost(g_questcompleted[id][key]))	
							
							if (g_experience[id] > 999999999)
							{
								g_experience[id] = 999999999
							}																							
						}
					}
					
					Color(id, "!g[ZE]!y Mision Completada")
					
					g_quest[id] = g_questrounds[id] = g_questkill[id][key] = 0
					
					g_questcompleted[id][key]++
					
					if (g_questcompleted[id][key] > 200)
					{
					g_questcompleted[id][key] = 200
					}			
					
					g_completed[id]++
					
					if (g_completed[id] > 200)
					{
					g_completed[id] = 200
					}
				
					static sound[64];
					ArrayGetString(sound_quest, random_num(0, ArraySize(sound_quest) - 1), sound, charsmax(sound))
					OnePlaySound(id, sound);
					
					return PLUGIN_HANDLED;
				}
			}
		}
	}
	show_menu_quest(id)
	return PLUGIN_HANDLED;
}

// User/Information Menu
public menu_user(id, key)
{
	switch (key)
	{
		case 0: 
		{
			show_menu_personalize(id)
		}
		case 1:
		{
			show_menu_list_levels(id)
		}
		case 2: {
			show_menu_hud1(id)
		}
		case 3: {
			InvisibleSwitch(id)
			set_task(0.1, "show_menu_user", id)
	
		}
		case 4:
		{	
			ModelSwitch(id)
			set_task(0.1, "show_menu_user", id)
			

		}
		case 5:
		{	
			FogSwitch(id)
			set_task(0.1, "show_menu_user", id)

		}
		case 8:
		{
			zp_colored_print(id, "^x04[ZE]^x01 Aun no se encuentra  disponible esta opcion.")
		}
	}
	return PLUGIN_HANDLED;
}

// Personalize Menu
public menu_personalize(id, key)
{
	switch (key)
	{	
		case MENU_KEY_EXIT: // go back to colors menu
		{
			show_menu_user(id)
			return PLUGIN_HANDLED;
		}
		case 0,1:
		{
			COLOR_MENU = key
			show_menu_colors(id)
		}
		case 2:
		{
			if (get_pcvar_num(cvar_huddisplay))
			{
				COLOR_MENU = key
				show_menu_colors(id)
			}
			else show_menu_personalize(id)
		}		
	}
	
	return PLUGIN_HANDLED;
}


public menu_hud1(id,key)
{
	switch (key)
	{	
		case MENU_KEY_EXIT: // go back to colors menu
		{
			show_menu_user(id)
			return PLUGIN_HANDLED;
		}
		case 0: {
			g_hud_stats_y[id] -= 0.01
			show_menu_hud1(id)
		}
		case 1: {
			g_hud_stats_y[id] += 0.01
			show_menu_hud1(id)
		}
		case 2: {
			g_hud_stats_x[id] -= 0.01
			show_menu_hud1(id)
		}
		case 3: {
			g_hud_stats_x[id] += 0.01
			show_menu_hud1(id)
		}
		case 4: 
		{
			(g_hud_stats_t[id] == 1) ? (g_hud_stats_t[id] = 0) : (g_hud_stats_t[id] = 1)
			show_menu_hud1(id)
		}
		case 5:
		{
			show_menu_cambiar_hud(id)
		}
	
	}	
	return PLUGIN_HANDLED;
}

// HUD Menu
public menu_hud(id, key)
{
	switch (key)
	{
		case MENU_KEY_EXIT: // go back to colors menu
		{
			show_menu_personalize(id)
			return PLUGIN_HANDLED;
		}
		case 0: g_hud_stats_y[id] -= 0.01
		case 1: g_hud_stats_y[id] += 0.01
		case 2: g_hud_stats_x[id] -= 0.01
		case 3: g_hud_stats_x[id] += 0.01
	}
	show_menu_hud(id)
	return PLUGIN_HANDLED;
}

// HUD Menu
public menu_cambiar_hud(id, key)
{
	switch (key)
	{
		case MENU_KEY_EXIT: // go back to colors menu
		{
			show_menu_hud1(id)
			return PLUGIN_HANDLED;
		}
		case 0: 
		{
		g_hud[id] = 0
		g_hudred[id] = 255
		g_hudgreen[id] = 0
		g_hudblue[id] = 0
		g_hud_stats_t[id] = 1
		g_hud_stats_x[id] = 0.02
		g_hud_stats_y[id] = 0.075
		}
		case 1: 
		{
		g_hud[id] = 1
		g_hudred[id] = 0
		g_hudgreen[id] = 255
		g_hudblue[id] = 0
		g_hud_stats_t[id] = 1
		g_hud_stats_x[id] = -1.0
		g_hud_stats_y[id] = 0.9
		}
	}
	show_menu_cambiar_hud(id)
	return PLUGIN_HANDLED;
}

public menu_cambiar_weapon(id, key)
{
	switch (key)
	{
		case MENU_KEY_EXIT: // go back to colors menu
		{
			show_menu_personalize(id)
			return PLUGIN_HANDLED;
		}
		case 0: 
		{
		g_weapon[id] = 0
		}
		case 1: 
		{
		g_weapon[id] = 1
		}
		case 2: 
		{
		g_weapon[id] = 2
		}
	}
	show_menu_cambiar_weapon(id)
	return PLUGIN_HANDLED;
}

// Colors Menu
public menu_colors(id, key)
{
	switch (key)
	{
		case MENU_KEY_EXIT: // go back to colors menu
		{
			show_menu_personalize(id)
			return PLUGIN_HANDLED;
		}
		case 0:
		{
			switch (COLOR_MENU)
			{
				case 0:
				{
					g_nvgred[id] = 255
					g_nvggreen[id] = 255
					g_nvgblue[id] = 255
				}
				case 1:
				{
					g_flashred[id] = 255
					g_flashgreen[id] = 255
					g_flashblue[id] = 255
				}
				case 2:
				{
					g_hudred[id] = 255
					g_hudgreen[id] = 255
					g_hudblue[id] = 255
				}
			}
		}
		case 1: 
		{
			switch (COLOR_MENU)
			{
				case 0:
				{
					g_nvgred[id] = 255
					g_nvggreen[id] = 0
					g_nvgblue[id] = 0
				}
				case 1:
				{
					g_flashred[id] = 255
					g_flashgreen[id] = 0
					g_flashblue[id] = 0
				}
				case 2:
				{
					g_hudred[id] = 255
					g_hudgreen[id] = 0
					g_hudblue[id] = 0
				}
			}
		}
		case 2: 
		{
			switch (COLOR_MENU)
			{
				case 0:
				{
					g_nvgred[id] = 0
					g_nvggreen[id] = 255
					g_nvgblue[id] = 0
				}
				case 1:
				{
					g_flashred[id] = 0
					g_flashgreen[id] = 255
					g_flashblue[id] = 0
				}
				case 2:
				{
					g_hudred[id] = 0
					g_hudgreen[id] = 255
					g_hudblue[id] = 0
				}
			}
		}
		case 3: 
		{
			switch (COLOR_MENU)
			{
				case 0:
				{
					g_nvgred[id] = 255
					g_nvggreen[id] = 255
					g_nvgblue[id] = 0
				}
				case 1:
				{
					g_flashred[id] = 255
					g_flashgreen[id] = 255
					g_flashblue[id] = 0
				}
				case 2:
				{
					g_hudred[id] = 255
					g_hudgreen[id] = 255
					g_hudblue[id] = 0
				}
			}
		}
		case 4: 
		{
			switch (COLOR_MENU)
			{
				case 0:
				{
					g_nvgred[id] = 0
					g_nvggreen[id] = 255
					g_nvgblue[id] = 255
				}
				case 1:
				{
					g_flashred[id] = 0
					g_flashgreen[id] = 255
					g_flashblue[id] = 255
				}
				case 2:
				{
					g_hudred[id] = 0
					g_hudgreen[id] = 255
					g_hudblue[id] = 255
				}
			}
		}
		case 5:
		{
			switch (COLOR_MENU)
			{
				case 0:
				{
					g_nvgred[id] = 0
					g_nvggreen[id] = 0
					g_nvgblue[id] = 255
				}
				case 1:
				{
					g_flashred[id] = 0
					g_flashgreen[id] = 0
					g_flashblue[id] = 255
				}
				case 2:
				{
					g_hudred[id] = 0
					g_hudgreen[id] = 0
					g_hudblue[id] = 255
				}
			}
		}
		case 6:
		{
			switch (COLOR_MENU)
			{
				case 0:
				{
					g_nvgred[id] = 255
					g_nvggreen[id] = 0
					g_nvgblue[id] = 100
				}
				case 1:
				{
					g_flashred[id] = 255
					g_flashgreen[id] = 0
					g_flashblue[id] = 100
				}
				case 2:
				{
					g_hudred[id] = 255
					g_hudgreen[id] = 0
					g_hudblue[id] = 100
				}
			}
		}
		case 7:
		{
			switch (COLOR_MENU)
			{
				case 0:
				{
					g_nvgred[id] = 255
					g_nvggreen[id] = 100
					g_nvgblue[id] = 0
				}
				case 1:
				{
					g_flashred[id] = 255
					g_flashgreen[id] = 100
					g_flashblue[id] = 0
				}
				case 2:
				{
					g_hudred[id] = 255
					g_hudgreen[id] = 100
					g_hudblue[id] = 0
				}
			}
		}
	}
	show_menu_colors(id)
	return PLUGIN_HANDLED;
}

// Statistics Menu
public menu_statistics(id, key)
{
	// Special keys
	if (key >= MENU_KEY_NEXT)
	{
		switch (key)
		{
			case MENU_KEY_NEXT: // back/next
			{
				switch (STATISTICS_MENU)
				{
					case 0:
					{
						STATISTICS_MENU = 1
						show_menu_statistics2(id)
					}
					case 1:
					{
						STATISTICS_MENU = 2
						show_menu_statistics3(id)
					}
					case 2:
					{
						STATISTICS_MENU = 3
						show_menu_statistics4(id)
					}
					case 3:
					{
						STATISTICS_MENU = 0
						show_menu_statistics1(id)
					}
				}
				
			}
			case MENU_KEY_EXIT: // exit
			{
				STATISTICS_MENU = 0
				
				// Not character selected
				if (g_status[id] < ONLINE_SPEC) show_menu_character(id)
				
				return PLUGIN_HANDLED;
			}
		}
	}
	
	return PLUGIN_HANDLED;
}


// Info Menu
public menu_info(id, key)
{
	static len; len = 0
	
	switch (key)
	{
		case 0: // General
		{
			static weather, lighting[2]
			weather = 0
			get_pcvar_string(cvar_lighting, lighting, charsmax(lighting))
			strtolower(lighting)
			
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<meta charset=UTF-8><body bgcolor=#000000><font color=#5CACEE><center><strong><b>Zombie Escape</b></strong> consiste en la lucha de los Humanos por resistir al ataque de los Zombies que han sido provocados por el Virus-T.")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><br>Deberemos ir subiendo de nivel para obtener los diferentes beneficios (armas, clases..). Se sube de nivel al conseguir los ammopacks necesarios para cada nivel, habiendo un total de %d niveles.", g_max_level)
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br>Existen habilidades con las cuales puedes aumentar el ataque, gravedad, velocidad... ya sea para humano o para zombie (no son aplicables a los survivors, weskers, nemesis o aliens).")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br>Tambien, puedes ir haciendo misiones durante un nÃºmero de rondas limitadas para conseguir premios, acabado el plazo las misiones expiran automaticamente.</center>")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br>A continuaciÃ³n, se detalla la configuraciÃ³n actual del servidor:")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><ul><li>Efectos Ambientales:</li>")
			
			if (g_ambience_fog)
			{
				len += formatex(g_motd[len], charsmax(g_motd) - len, (weather < 1) ? " Niebla" : ". Niebla")
				weather++
			}
			if (g_ambience_rain)
			{
				len += formatex(g_motd[len], charsmax(g_motd) - len, (weather < 1) ? " Lluvia" : ". Lluvia")
				weather++
			}
			if (g_ambience_snow)
			{
				len += formatex(g_motd[len], charsmax(g_motd) - len, (weather < 1) ? " Nieve" : ". Nieve")
				weather++
			}
			if (weather < 1) len += formatex(g_motd[len], charsmax(g_motd) - len, " Desactivado")
			
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Nivel de IluminaciÃ³n: %s</li>", lighting)
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Luces de Interrumptores: %s</li>", get_pcvar_num(cvar_triggered) ? "Activadas" : "Desactivadas")
			if (lighting[0] == 'a' && get_pcvar_num(cvar_thunder)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Relampagos cada: %d segundos</li>", get_pcvar_num(cvar_thunder))
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Puertas: %s</li>", get_pcvar_num(cvar_removedoors) > 0 ? get_pcvar_num(cvar_removedoors) > 1 ? "Todas las puertas removidas" : "Puertas giratorias removidas" : "Habilitadas")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Deathmatch: %s</li>", get_pcvar_num(cvar_deathmatch) > 0 ? get_pcvar_num(cvar_deathmatch) > 1 ? get_pcvar_num(cvar_deathmatch) > 2 ? get_pcvar_num(cvar_deathmatch) > 3 ? "Equilibrado" : "Al azar" : "Solo Zombies" : "Solo Humanos" : "Desactivado")
			if (get_pcvar_num(cvar_deathmatch)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>ProtecciÃ³n de Spawn: %d segundos</li>", get_pcvar_num(cvar_spawnprotection))
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Spawn Aleatorio: %s</li>", get_pcvar_num(cvar_randspawn) ? "Activado" : "Desactivado")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Items Extras: %s</li>", get_pcvar_num(cvar_extraitems) ? "Activados" : "Desactivados")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Clases de Zombie: %s</li>", get_pcvar_num(cvar_zclasses) ? "Activadas" : "Desactivadas")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Clases de Humano: %s</li>", get_pcvar_num(cvar_hclasses) ? "Activadas" : "Desactivadas")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Sangrado: %s</li></ul>", get_pcvar_num(cvar_zombiebleeding) ? "Activado" : "Desactivado")
			
			show_motd(id, g_motd, "Zombie Escape")
		}
		case 1: // Humans
		{
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<meta charset=UTF-8><body bgcolor=#000000><font color=#5CACEE><u><b>Humanos:</b></u><br>Su objetivo es eliminar toda amenaza zombie. Tienen un gran arsenal de armas para elegir, y pueden usar linternas.")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><br><b><u>CaracterÃ­sticas Humanos:</b></u><br>Cada clase de humano tendra sus propias caracterÃ­sticas, detalladas al lado de su nombre (en el menÃº de elecciÃ³n de clase de humano).")
			if (get_pcvar_num(cvar_humanlasthp) > 0) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><ul><li>Vida adicional para Ãºltimo humano: %d</li>", get_pcvar_num(cvar_humanlasthp))
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>MuniciÃ³n: %s</li>", get_pcvar_num(cvar_infammo) > 0 ? get_pcvar_num(cvar_infammo) > 1 ? "Sin recargar" : "Recargas ilimitadas" : "Limitada")
			if (g_humanclass[id] != HCLASS_NONE) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Vida Clase Actual: %d</li>", ArrayGetCell(g_hclass_hp, g_humanclass[id]) + ammount_hhealth(g_level[id]))
			if (g_humanclass[id] != HCLASS_NONE) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Velocidad Clase Actual: %d</li>", floatround(ArrayGetCell(g_hclass_spd, g_humanclass[id]) + ammount_hspeed(g_level[id])))
			if (g_humanclass[id] != HCLASS_NONE) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Gravedad Clase Actual: %d</li>", floatround(Float:(ArrayGetCell(g_hclass_grav, g_humanclass[id]) - ammount_hgravity(g_level[id])) * 800.0))
			len += formatex(g_motd[len], charsmax(g_motd) - len, "</ul><br><b><u>CaracterÃ­sticas Survivor:</b></u><br>El survivor es considerado el humano mas potente del juego.")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><ul><li>Vida: %s</li>", get_pcvar_num(cvar_survhp) > 0 ? add_point(get_pcvar_num(cvar_survhp)) : "[Auto]")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Velocidad: %d</li>", get_pcvar_num(cvar_survspd))
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Gravedad: %d</li>", floatround(get_pcvar_float(cvar_survgravity)*800))
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Machine Gun sin necesidad de recargar</li>")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Danio multiplicado por 4</li>")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><br><li>Posee una luz blanca y un brillo azul alrededor de su cuerpo.</li></ul>")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><b><u>CaracterÃ­sticas Wesker:</b></u><br>El wesker es considerado el humano mas agil del juego.")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><ul><li>Vida: %s</li>", get_pcvar_num(cvar_weskhp) > 0 ? add_point(get_pcvar_num(cvar_weskhp)) : "[Auto]")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Velocidad: %d</li>", get_pcvar_num(cvar_weskspd))
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Gravedad: %d</li>", floatround(get_pcvar_float(cvar_weskgravity)*800))
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Deagle sin necesidad de recargar</li>")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Danio multiplicado por 4</li>")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><br><li>Posee una luz blanca y un brillo amarillo alrededor de su cuerpo.</li></ul>")
			
			show_motd(id, g_motd, "Zombie Escape: Humanos")
		}
		case 2: // Zombies
		{
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<meta charset=UTF-8><body bgcolor=#000000><font color=#5CACEE><u><b>Zombies:</b></u><br>Su objetivo es infectar a todos los humanos. Pueden ver en la oscuridad, pero solo atacan a corto rango.")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><br><b><u>CaracterÃ­sticas Zombies:</b></u><br>Cada clase de zombie tendra sus propias caracterÃ­sticas, detalladas al lado de su nombre (en el menÃº de elecciÃ³n de clase de zombie).")
			if (get_pcvar_num(cvar_zombiebonushp)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><ul><li>HP extra por InfecciÃ³n: %d</li>", get_pcvar_num(cvar_zombiebonushp))
			if (g_zombieclass[id] != ZCLASS_NONE) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Vida Clase Actual: %d</li>", ArrayGetCell(g_zclass_hp, g_zombieclass[id]))
			if (g_zombieclass[id] != ZCLASS_NONE) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Velocidad Clase Actual: %d</li>", floatround(ArrayGetCell(g_zclass_spd, g_zombieclass[id]) + ammount_zspeed(g_level[id])))
			if (g_zombieclass[id] != ZCLASS_NONE) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Gravedad Clase Actual: %d</li>", floatround(Float:(ArrayGetCell(g_zclass_grav, g_zombieclass[id]) - ammount_zgravity(g_level[id])) * 800.0))
			if (g_zombieclass[id] != ZCLASS_NONE) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Velocidad no Afectada por Danio: %s</li>", get_pcvar_num(cvar_zombiepainfree) > 0 ? get_pcvar_num(cvar_zombiepainfree) > 1 ? "Solo al Ãºltimo zombie" : "Activada" : "Desactivada")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "</ul><br><b><u>CaracterÃ­sticas Nemesis:</b></u><br>El nemesis es considerado el zombie mas potente del juego.")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><ul><li>Vida: %s</li>", get_pcvar_num(cvar_nemhp) > 0 ? add_point(get_pcvar_num(cvar_nemhp)) : "[Auto]")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Velocidad: %d</li>", get_pcvar_num(cvar_nemspd))
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Gravedad: %d</li>", floatround(get_pcvar_float(cvar_nemgravity)*800))
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Danio por ataque: %d</li>", get_pcvar_num(cvar_nemdamage))
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><br><li>Posee un brillo de color rojo muy fuerte que se puede ver facilmente en la oscuridad.</li></ul>")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><b><u>CaracterÃ­sticas Alien:</b></u><br>El alien es considerado el zombie mas agil del juego.")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><ul><li>Vida: %s</li>", get_pcvar_num(cvar_alihp) > 0 ? add_point(get_pcvar_num(cvar_alihp)) : "[Auto]")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Velocidad: %d</li>", get_pcvar_num(cvar_alispd))
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Gravedad: %d</li>", floatround(get_pcvar_float(cvar_aligravity)*800))
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Danio por ataque: %d</li>", get_pcvar_num(cvar_alidamage))
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><br><li>Posee un brillo de color azul muy fuerte que se puede ver facilmente en la oscuridad.</li></ul>")
			
			show_motd(id, g_motd, "Zombie Escape: Zombies")
		}
		case 3: // Gameplay Modes Part. 1
		{
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<meta charset=UTF-8><body bgcolor=#000000><font color=#5CACEE><center><u><b>Modos de juego Parte 1:</b></u><br>Cada uno de ellos se elige automaticamente o bien por elecciÃ³n de un admin.</center>")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br>Existen los siguientes modos de juego:")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><br><u><b><li>Modo InfecciÃ³n:</u></b></li>")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br>Es el modo mas jugado. Un humano es convertido en Zombie y tiene que lograr infectar al resto de humanos.")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><br><u><b><li>Modo Multi-InfecciÃ³n: %s</u></b></li>", get_pcvar_num(cvar_multi) ? "Activado" : "Desactivado")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br>Igual al anterior, pero con la diferencia que mas de un humano es convertido en zombie.")
			if (get_pcvar_num(cvar_multi)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><ul><li>Riesgo de Modo Multi-InfecciÃ³n: 1 cada %d</li></ul>", get_pcvar_num(cvar_multichance))
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><u><b><li>Modo Swarm: %s</u></b></li>", get_pcvar_num(cvar_swarm) ? "Activado" : "Desactivado")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br>Mitad humanos, mitad zombies. Los zombies no infectan, solo matan a los humanos.")
			if (get_pcvar_num(cvar_swarm)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><ul><li>Riesgo de Modo Swarm: 1 cada %d</li></ul>", get_pcvar_num(cvar_swarmchance))
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><u><b><li>Modo Nemesis: %s</u></b></li>", get_pcvar_num(cvar_nem) ? "Activado" : "Desactivado")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br>Un jugador es convertido en un Nemesis (zombie muy potente) y su objetivo es matar a todos los humanos.")
			if (get_pcvar_num(cvar_nem)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><ul><li>Riesgo de Modo Nemesis: 1 cada %d</li>", get_pcvar_num(cvar_nemchance))
			if (get_pcvar_num(cvar_nem)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Salto Largo de Nemesis: %s</li>", get_pcvar_num(cvar_leapnemesis) ? "Activado" : "Desactivado")
			if (get_pcvar_num(cvar_nem)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Velocidad no Afectada por Danio en Nemesis: %s</li></ul>", get_pcvar_num(cvar_nempainfree) ? "Activado" : "Desactivado")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><u><b><li>Modo Alien: %s</u></b></li>", get_pcvar_num(cvar_nem) ? "Activado" : "Desactivado")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br>Parecido al nemesis, pero esta vez su velocidad y gravedad son aumentadas, a la vez que, su vida es disminuida.")
			if (get_pcvar_num(cvar_ali)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><ul><li>Riesgo de Modo Alien: 1 cada %d</li>", get_pcvar_num(cvar_alichance))
			if (get_pcvar_num(cvar_ali)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Salto Largo de Alien: %s</li>", get_pcvar_num(cvar_leapalien) ? "Activado" : "Desactivado")
			if (get_pcvar_num(cvar_ali)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Velocidad no Afectada por Danio en Alien: %s</li></ul>", get_pcvar_num(cvar_alipainfree) ? "Activado" : "Desactivado")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br>Mas informaciÃ³n sobre el nemesis/alien en el apartado Zombies.")
			
			show_motd(id, g_motd, "Zombie Escape: Modos Parte 1")
		}
		case 4: // Gameplay Modes Part. 2
		{
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<meta charset=UTF-8><body bgcolor=#000000><font color=#5CACEE><center><u><b>Modos de juego Parte 2:</b></u></center>")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><br><u><b><li>Modo Survivor: %s</u></b></li>", get_pcvar_num(cvar_surv) ? "Activado" : "Desactivado")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br>Un jugador es convertido en un Survivor (humano muy potente) y su objetivo es sobrevivir al ataque de los zombies.")
			if (get_pcvar_num(cvar_surv)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><ul><li>Riesgo de Modo Survivor: 1 cada %d</li>", get_pcvar_num(cvar_survchance))
			if (get_pcvar_num(cvar_surv)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Velocidad no Afectada por Danio en Survivor: %s</li></ul>", get_pcvar_num(cvar_survpainfree) ? "Activado" : "Desactivado")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><u><b><li>Modo Wesker: %s</u></b></li>", get_pcvar_num(cvar_wesk) ? "Activado" : "Desactivado")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br>Parecido al survivor, pero esta vez el humano es equipado con una deagle y su velocidad y gravedad son aumentadas, a la vez que, su vida es disminuida.")
			if (get_pcvar_num(cvar_wesk)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><ul><li>Riesgo de Modo Wesker: 1 cada %d</li>", get_pcvar_num(cvar_weskchance))
			if (get_pcvar_num(cvar_wesk)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Velocidad no Afectada por Danio en Wesker: %s</li></ul>", get_pcvar_num(cvar_weskpainfree) ? "Activado" : "Desactivado")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br>Mas informaciÃ³n sobre el survivor/wesker en el apartado Humanos.")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><br><u><b><li>Modo Plague: %s</u></b></li>", get_pcvar_num(cvar_plague) ? "Activado" : "Desactivado")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br>%d Survivor contra %d Nemesis y el resto de zombies.", get_pcvar_num(cvar_plaguesurvnum), get_pcvar_num(cvar_plaguenemnum))
			if (get_pcvar_num(cvar_plague)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><ul><li>Riesgo de Modo Plague: 1 cada %d</li>", get_pcvar_num(cvar_plaguechance))
			if (get_pcvar_num(cvar_plague)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Vida Nemesis en Modo Plague: %d</li>", get_pcvar_num(cvar_plaguenemhp))
			if (get_pcvar_num(cvar_plague)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Vida Survivor en Modo Plague: %d</li></ul>", get_pcvar_num(cvar_plaguesurvhp))
		
			show_motd(id, g_motd, "Zombie Escape: Modos Parte 2")
		}
		case 5: // Gameplay Modes Part. 3
		{
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<meta charset=UTF-8><body bgcolor=#000000><font color=#5CACEE><center><u><b>Modos de juego Parte 3:</b></u></center>")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><br><u><b><li>Modo Synapsis: %s</u></b></li>", get_pcvar_num(cvar_synapsis) ? "Activado" : "Desactivado")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br>%d Nemesis contra %d Survivor y el resto humanos.", get_pcvar_num(cvar_synapsissurvnum), get_pcvar_num(cvar_synapsisnemnum))
			if (get_pcvar_num(cvar_synapsis)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><ul><li>Riesgo de Modo Synapsis: 1 cada %d</li>", get_pcvar_num(cvar_synapsischance))
			if (get_pcvar_num(cvar_synapsis)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Vida Nemesis en Modo Synapsis: %d</li>", get_pcvar_num(cvar_synapsisnemhp))
			if (get_pcvar_num(cvar_synapsis)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Vida Survivor en Modo Synapsis: %d</li></ul>", get_pcvar_num(cvar_synapsissurvhp))
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><u><b><li>Modo Armageddon: %s</u></b></li>", get_pcvar_num(cvar_armageddon) ? "Activado" : "Desactivado")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br>Nemesis contra Survivors. Las auras y glows de los dos bandos estaran desactivadas.")
			if (get_pcvar_num(cvar_armageddon)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><ul><li>Riesgo de Modo Armageddon: 1 cada %d</li>", get_pcvar_num(cvar_armageddonchance))
			if (get_pcvar_num(cvar_armageddon)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Vida Nemesis en Modo Armageddon: %d</li>", get_pcvar_num(cvar_armageddonnemhp))
			if (get_pcvar_num(cvar_armageddon)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Vida Survivor en Modo Armageddon: %d</li></ul>", get_pcvar_num(cvar_armageddonsurvhp))
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><u><b><li>Modo Crysis: %s</u></b></li>", get_pcvar_num(cvar_crysis) ? "Activado" : "Desactivado")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br>Aliens contra Weskers. Las auras y glows de los dos bandos estaran desactivadas.")
			if (get_pcvar_num(cvar_crysis)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><ul><li>Riesgo de Modo Crysis: 1 cada %d</li>", get_pcvar_num(cvar_crysischance))
			if (get_pcvar_num(cvar_crysis)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Vida Alien en Modo Armageddon: %d</li>", get_pcvar_num(cvar_crysisalihp))
			if (get_pcvar_num(cvar_crysis)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Vida Wesker en Modo Armageddon: %d</li></ul>", get_pcvar_num(cvar_crysisweskhp))
		
			show_motd(id, g_motd, "Zombie Escape: Modos Parte 3")
		}
		case 6: // Extra-Items
		{
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<meta charset=UTF-8><body bgcolor=#000000><font color=#5CACEE><u><b>Items Extras:</b></u><br>Existen Items Extras para conseguir ciertas ventajas. Hay que tener en cuenta que estos items cuestan ammopacks y si los compras, puedes llegar a bajar de nivel.")
			len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><br><center><u><b><font size=5>Items Extras: %s</u></b></font></center>", get_pcvar_num(cvar_extraitems) ? "Activados" : "Desactivados")
			if (get_pcvar_num(cvar_extraitems)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><br><u><b><li>Items Extras para Zombies (por defecto):</u></b></li>")
			if (get_pcvar_num(cvar_extraitems)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><ul><li>AntÃ­doto: podra convertirse nuevamente en humano.</li>")
			if (get_pcvar_num(cvar_extraitems)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Furia zombie: durante unos segundos, el zombie correra mas rapido y sera inmune frente a bombas y balas.</li>")
			if (get_pcvar_num(cvar_extraitems)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Bomba de infecciÃ³n: granada que al lanzarla, infectara a los humanos que se encuentren dentro del radio de la explosiÃ³n.</li></ul>")
			if (get_pcvar_num(cvar_extraitems)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><u><b><li>Items Extras para Humanos (por defecto):</u></b></li>")
			if (get_pcvar_num(cvar_extraitems)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><ul><li>VisiÃ³n Nocturna: obtendremos visiÃ³n nocturna por una ronda (se puede personalizar su color).</li>")
			if (get_pcvar_num(cvar_extraitems)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Granada de Fuego (Fire): granada que al lanzarla, provoca una gran llamarada que puede quemar a los zombies.</li>")
			if (get_pcvar_num(cvar_extraitems)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Granada de Hielo (Frost): granada que al lanzarla, congelara a los zombies que se encuentran dentro del radio de la explosiÃ³n.</li>")
			if (get_pcvar_num(cvar_extraitems)) len += formatex(g_motd[len], charsmax(g_motd) - len, "<br><li>Aura Shield: granada que al lanzarla, provoca un gran aura que no deja pasar a los zombies, sirviendo como escudo a los humanos. Al cabo de un tiempo, desaparece.</li></ul>")
		
			show_motd(id, g_motd, "Zombie Escape: Items Extras")
		}
		default: return PLUGIN_HANDLED;
	}
	
	// Show help menu again if user wishes to read another topic
	show_menu_info(id)
	
	return PLUGIN_HANDLED;
}

// List Levels Menu
public menu_list_levels(id, menu, item)
{
	// Menu was closed
	if (item == MENU_EXIT) return PLUGIN_HANDLED;
	
	// Remember player's menu page
	static menudummy
	player_menu_info(id, menudummy, menudummy, MENU_PAGE_LEVELS)
	
	show_menu_list_levels(id)
	
	return PLUGIN_HANDLED;
}



public menu_respawn(id, menuid, item)
{	
	// Remember player's menu page
	static menudummy
	player_menu_info(id, menudummy, menudummy, MENU_PAGE_PLAYERS)
	
	// Menu was closed
	if (item == MENU_EXIT)
	{
		show_menu_admin1(id)
		return PLUGIN_HANDLED;
	}
	
	// Retrieve player id
	static buffer[2], dummy, playerid
	menu_item_getinfo(menuid, item, dummy, buffer, charsmax(buffer), _, _, dummy)
	playerid = buffer[0]
	
	// Perform action on player
	
	// Get admin flags
	static userflags; userflags = get_user_flags(id)
	
	// Make sure it's still connected
	if (g_isconnected[playerid])
	{
		// Perform the right action if allowed
		switch (PL_RESPAWN)
		{
			case 0: // Respawn command
			{
				if (userflags & g_access_flag[ACCESS_RESPAWN_PLAYERS])
				{
					if (allowed_respawn(playerid))
						command_onplayer(id, playerid, 11)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
		}
	}
		show_menu_respawn(id)
		return PLUGIN_HANDLED;
}


//MENU DE ADMINISTRACION


public menu_admin1(id, key, item)
{
	static userflags; userflags = get_user_flags(id)

	switch (key)
	{
		case 0:
		{
			show_menu_singleplayer(id)
		}
		case 1:
		{
			show_menu_multiplayer(id)
		}
		case 2:
		{
			show_menu_deathmatch(id)
		}
		case 3:
		{
			show_menu_xtreme(id)
		}
		case 4:

		{
			if (userflags & g_access_flag[ACCESS_RESPAWN_PLAYERS])
			{
				// Show player list for admin to pick a target
				PL_ACTION = item
				show_menu_respawn(id)
			}
			else
			{
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
				show_menu_admin1(id)
			}
		}
		case 5:
		{
			g_status[id] = ONLINE_SPEC
			check_round(id)
			dllfunc(DLLFunc_ClientKill, id)
			fm_cs_set_user_team(id, FM_CS_TEAM_SPECTATOR)
			fm_user_team_update(id)
		}
		case 6:
		{
			client_cmd(id, "amxmodmenu")
		}
		
	}
	return PLUGIN_HANDLED;
}

public menu_singleplayer(id, key, item)

{	
	// Menu was closed
	if (item == MENU_EXIT) return PLUGIN_HANDLED;
	

	static userflags; userflags = get_user_flags(id)
	switch (key)
	{
	
		case 0: // Nemesis command
		{
			if (userflags & g_access_flag[ACCESS_START_MODES])
			{
				// Show player list for admin to pick a target
				PL_ACTION = key
				show_menu_player_list(id)
			}
			else
			{
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
				show_menu_singleplayer(id)
			}
		}
		case 1: // Alien command
		{
			if (userflags & g_access_flag[ACCESS_START_MODES])
			{
				// Show player list for admin to pick a target
				PL_ACTION = key
				show_menu_player_list(id)
			}
			else
			{
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
				show_menu_singleplayer(id)
			}
		}
		case 2: // Assassin command
		{
			if (userflags & g_access_flag[ACCESS_START_MODES])
			{
				// Show player list for admin to pick a target
				PL_ACTION = key
				show_menu_player_list(id)
			}
			else
			{
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
				show_menu_singleplayer(id)
			}
		}
		case 3: // Demon command
		{
			if (userflags & g_access_flag[ACCESS_START_MODES])
			{
				// Show player list for admin to pick a target
				PL_ACTION = key
				show_menu_player_list(id)
			}
			else
			{
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
				show_menu_singleplayer(id)
			}
		}
		case 4: // Survivor command
		{
			if (userflags & g_access_flag[ACCESS_START_MODES])
			{
				// Show player list for admin to pick a target
				PL_ACTION = key
				show_menu_player_list(id)
			}
			else
			{
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
				show_menu_singleplayer(id)
			}
		}
		case 5: // Wesker command
		{
			if (userflags & g_access_flag[ACCESS_START_MODES])
			{
				// Show player list for admin to pick a target
				PL_ACTION = key
				show_menu_player_list(id)
			}
			else
			{
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
				show_menu_singleplayer(id)
			}
		}
		case 6: // Sniper command
		{
			if (userflags & g_access_flag[ACCESS_START_MODES])
			{
				// Show player list for admin to pick a target
				PL_ACTION = key
				show_menu_player_list(id)
			}
			else
			{
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
				show_menu_singleplayer(id)
			}
		}
		case 7: // Predator command
		{
			if (userflags & g_access_flag[ACCESS_START_MODES])
			{
				// Show player list for admin to pick a target
				PL_ACTION = key
				show_menu_player_list(id)
			}
			else
			{
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
				show_menu_singleplayer(id)
			}
		}
		case 8: // Angel command
		{
			if (userflags & g_access_flag[ACCESS_START_MODES])
			{
				// Show player list for admin to pick a target
				PL_ACTION = key
				show_menu_player_list(id)
			}
			else
			{
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
				show_menu_singleplayer(id)
			}
		}
		case 9:
		{
			show_menu_admin1(id)
		}
	}
	return PLUGIN_HANDLED;
}

public menu_multiplayer(id, key)
{
	static userflags; userflags = get_user_flags(id)

	switch (key)
	{
		case 0: // Multiple Infection command
		{
			if (userflags & g_access_flag[ACCESS_START_MODES])
			{
				if (allowed_multi())
					command_modes(id, 0)
			}
			else
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			
			show_menu_multiplayer(id)
		}
		case 1: // Swarm Mode command
		{
			if (userflags & g_access_flag[ACCESS_START_MODES])
			{
				if (allowed_swarm())
					command_modes(id, 1)
			}
			else
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			
			show_menu_multiplayer(id)
		}
		case 2: // Plague Mode command
		{
			if (userflags & g_access_flag[ACCESS_START_MODES])
			{
				if (allowed_plague())
					command_modes(id, 2)
			}
			else
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			
			show_menu_multiplayer(id)
		}
		case 3:
		{
			show_menu_multiplayer(id)
		}
		case 4:
		{
			show_menu_multiplayer(id)
		}
		case 5:
		{
			show_menu_multiplayer(id)
		}
		case 6:
		{
			show_menu_multiplayer(id)
		}
		case 7:
		{
			show_menu_multiplayer(id)
		}
		case 8:
		{
			show_menu_multiplayer(id)
		}
		case 9:
		{
			show_menu_admin1(id)
		}
	}
	return PLUGIN_HANDLED;
}

public menu_deathmatch(id, key, item)
{
	static userflags; userflags = get_user_flags(id)

	switch (key)
	{	
		case 0: // Cooperative Mode command
		{
			if (userflags & g_access_flag[ACCESS_START_MODES])
			{
				if (allowed_cooperative())
					command_modes(id, 3)
			}
			else
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			
			show_menu_deathmatch(id)
		}
		
		case 1: // Nemesis Extremo Mode command
		{
			if (userflags & g_access_flag[ACCESS_START_MODES])
			{
				if (allowed_nextremo())
					command_modes(id, 4)
			}
			else
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			
			show_menu_deathmatch(id)
		}
		case 2: // Synapsis Mode command
		{
			if (userflags & g_access_flag[ACCESS_START_MODES])
			{
				if (allowed_synapsis())
					command_modes(id, 5)
			}
			else
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			
			show_menu_deathmatch(id)
		}
		case 3: // Left 4 Dead Mode command
		{
			if (userflags & g_access_flag[ACCESS_START_MODES])
			{
				if (allowed_l4d())
					command_modes(id, 6)
			}
			else
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			
			show_menu_deathmatch(id)
		}
		case 4:
		{
			show_menu_deathmatch(id)
		}
		case 5:
		{
			show_menu_deathmatch(id)
		}
		case 6:
		{
			show_menu_deathmatch(id)
		}
		case 7:
		{
			show_menu_deathmatch(id)
		}
		case 8:
		{
			show_menu_deathmatch(id)
		}
		case 9:
		{
			show_menu_admin1(id)
		}
	}
	return PLUGIN_HANDLED;
}

public menu_xtreme(id, key, item)
{
	static userflags; userflags = get_user_flags(id)

	switch (key)
	{
		case 0: // Armageddon Mode command
		{
			if (userflags & g_access_flag[ACCESS_START_MODES])
			{
				if (allowed_armageddon())
					command_modes(id, 7)
			}
			else
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			
			show_menu_xtreme(id)
		}
		case 1: // Crysis Mode command
		{
			if (userflags & g_access_flag[ACCESS_START_MODES])
			{
				if (allowed_crysis())
					command_modes(id, 8)
			}
			else
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			
			show_menu_xtreme(id)
		}
		case 2: // Assassins vs Snipers Mode command
		{
			if (userflags & g_access_flag[ACCESS_START_MODES])
			{
				if (allowed_avs())
					command_modes(id, 9)
			}
			else
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			
			show_menu_xtreme(id)
		}
		case 3: // Apocalypse Mode command
		{
			if (userflags & g_access_flag[ACCESS_START_MODES])
			{
				if (allowed_apocalypse())
					command_modes(id, 10)
			}
			else
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			
			show_menu_xtreme(id)
		}
		case 4: // Nightmare Mode command
		{
			if (userflags & g_access_flag[ACCESS_START_MODES])
			{
				if (allowed_nightmare())
					command_modes(id, 11)
			}
			else
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			
			show_menu_xtreme(id)
		}
		case 5: // Ultimate Mode command
		{
			if (userflags & g_access_flag[ACCESS_START_MODES])
			{
				if (allowed_ultimate())
					command_modes(id, 12)
			}
			else
				zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			
			show_menu_xtreme(id)
		}
		case 6:
		{
			show_menu_xtreme(id)
		}
		case 7:
		{
			show_menu_xtreme(id)
		}
		case 8:
		{
			show_menu_xtreme(id)
		}
		case 9:
		{
			show_menu_admin1(id)
		}
	}
	return PLUGIN_HANDLED;
}

public menu_player_list1(id, menuid, item){
		// Remember player's menu page
	static menudummy
	player_menu_info(id, menudummy, menudummy, MENU_PAGE_PLAYERS)
	
	// Menu was closed
	if (item == MENU_EXIT)
	{
		show_menu_singleplayer(id)
		return PLUGIN_HANDLED;
	}
	// Retrieve player id
	static buffer[2], dummy, playerid
	menu_item_getinfo(menuid, item, dummy, buffer, charsmax(buffer), _, _, dummy)
	playerid = buffer[0]
	
	// Perform action on player
	
	// Get admin flags
	static userflags; userflags = get_user_flags(id)
	
	// Make sure it's still connected
	if (g_isconnected[playerid])
	{
		// Perform the right action if allowed
		switch (PL_ACTION)
		{
			case 0: // Zombiefy/Humanize command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (g_class[playerid] >= ZOMBIE)
					{
						if (allowed_human(playerid))
							command_onplayer(id, playerid, 1)
					}
					else
					{
						if (allowed_zombie(playerid))
							command_onplayer(id, playerid, 0)
					}
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 1: // Nemesis command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_nemesis(playerid))
						command_onplayer(id, playerid, 2)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 2: // Alien command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_alien(playerid))
						command_onplayer(id, playerid, 3)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 3: // Assassin command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_assassin(playerid))
						command_onplayer(id, playerid, 4)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 4: // Demon command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_demon(playerid))
						command_onplayer(id, playerid, 5)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 5: // Survivor command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_survivor(playerid))
						command_onplayer(id, playerid, 6)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 6: // Wesker command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_wesker(playerid))
						command_onplayer(id, playerid, 7)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 7: // Sniper command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_sniper(playerid))
						command_onplayer(id, playerid, 8)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 8: // Predator command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_predator(playerid))
						command_onplayer(id, playerid, 9)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 9: // Angel command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_angel(playerid))
						command_onplayer(id, playerid, 10)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			
		}
	}
	
	show_menu_player_list1(id)
	return PLUGIN_HANDLED;
}


/*public menu_player_list1(id, menuid, item)
{	
	// Remember player's menu page
	static menudummy
	player_menu_info(id, menudummy, menudummy, MENU_PAGE_PLAYERS)
	
	// Menu was closed
	if (item == MENU_EXIT)
	{
		show_menu_admin(id)
		return PLUGIN_HANDLED;
	}
	
	// Retrieve player id
	static buffer[2], dummy, playerid
	menu_item_getinfo(menuid, item, dummy, buffer, charsmax(buffer), _, _, dummy)
	playerid = buffer[0]
	
	// Perform action on player
	
	// Get admin flags
	static userflags; userflags = get_user_flags(id)
	
	// Make sure it's still connected
	if (g_isconnected[playerid])
	{
		// Perform the right action if allowed
		switch (PL_ACTION)
		{
			case 0: // Nemesis command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_nemesis(playerid))
						command_onplayer(id, playerid, 2)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 1: // Alien command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_alien(playerid))
						command_onplayer(id, playerid, 3)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 2: // Assassin command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_assassin(playerid))
						command_onplayer(id, playerid, 4)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 3: // Demon command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_demon(playerid))
						command_onplayer(id, playerid, 5)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 4: // Survivor command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_survivor(playerid))
						command_onplayer(id, playerid, 6)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 5: // Wesker command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_wesker(playerid))
						command_onplayer(id, playerid, 7)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 6: // Sniper command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_sniper(playerid))
						command_onplayer(id, playerid, 8)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 7: // Predator command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_predator(playerid))
						command_onplayer(id, playerid, 9)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 8: // Angel command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_angel(playerid))
						command_onplayer(id, playerid, 10)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			/*case 10: // Respawn command
			{
				if (userflags & g_access_flag[ACCESS_RESPAWN_PLAYERS])
				{
					if (allowed_respawn(playerid))
						command_onplayer(id, playerid, 11)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
		}
	}
	
	show_menu_player_list1(id)
	return PLUGIN_HANDLED;
}*/

// Player List Menu
public menu_player_list(id, menuid, item)
{	
	// Remember player's menu page
	static menudummy
	player_menu_info(id, menudummy, menudummy, MENU_PAGE_PLAYERS)
	
	// Menu was closed
	if (item == MENU_EXIT)
	{
		show_menu_admin1(id)
		return PLUGIN_HANDLED;
	}
	
	// Retrieve player id
	static buffer[2], dummy, playerid
	menu_item_getinfo(menuid, item, dummy, buffer, charsmax(buffer), _, _, dummy)
	playerid = buffer[0]
	
	// Perform action on player
	
	// Get admin flags
	static userflags; userflags = get_user_flags(id)
	
	// Make sure it's still connected
	if (g_isconnected[playerid])
	{
		// Perform the right action if allowed
		switch (PL_ACTION)
		{
			/*case 0: // Zombiefy/Humanize command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (g_class[playerid] >= ZOMBIE)
					{
						if (allowed_human(playerid))
							command_onplayer(id, playerid, 1)
					}
					else
					{
						if (allowed_zombie(playerid))
							command_onplayer(id, playerid, 0)
					}
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}*/
			case 0: // Nemesis command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_nemesis(playerid))
						command_onplayer(id, playerid, 2)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 1: // Alien command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_alien(playerid))
						command_onplayer(id, playerid, 3)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 2: // Assassin command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_assassin(playerid))
						command_onplayer(id, playerid, 4)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 3: // Demon command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_demon(playerid))
						command_onplayer(id, playerid, 5)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 4: // Survivor command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_survivor(playerid))
						command_onplayer(id, playerid, 6)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 5: // Wesker command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_wesker(playerid))
						command_onplayer(id, playerid, 7)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 6: // Sniper command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_sniper(playerid))
						command_onplayer(id, playerid, 8)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 7: // Predator command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_predator(playerid))
						command_onplayer(id, playerid, 9)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			case 8: // Angel command
			{
				if (userflags & g_access_flag[ACCESS_START_MODES])
				{
					if (allowed_angel(playerid))
						command_onplayer(id, playerid, 10)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}
			/*case 10: // Respawn command
			{
				if (userflags & g_access_flag[ACCESS_RESPAWN_PLAYERS])
				{
					if (allowed_respawn(playerid))
						command_onplayer(id, playerid, 11)
				}
				else
					zp_colored_print(id, "^x04[ZE]^x01 No tienes acceso a esa opcion.")
			}*/
		}
	}
	
	show_menu_player_list(id)
	return PLUGIN_HANDLED;
}

// CS Buy Menus
public menu_cs_buy(id, key)
{
	// Prevent buying if zombie/survivor/wesker (bugfix)
	if (g_class[id] >= SURVIVOR) return PLUGIN_HANDLED;
	
	return PLUGIN_CONTINUE;
}

/*================================================================================
 [Admin Commands]
=================================================================================*/

// za_toggle [1/0]
public cmd_toggle(id, level, cid)
{
	// Check for access flag - Enable/Disable Mod
	if (!cmd_access(id, g_access_flag[ACCESS_ENABLE_MOD], cid, 2))
		return PLUGIN_HANDLED;
	
	// Retrieve arguments
	new arg[2]
	read_argv(1, arg, charsmax(arg))
	
	// Mod already enabled/disabled
	if (str_to_num(arg) == g_pluginenabled) return PLUGIN_HANDLED;
	
	// Set toggle cvar
	set_pcvar_num(cvar_toggle, str_to_num(arg))
	client_print(id, print_console, "Zombie Escape %sctivado.", str_to_num(arg) ? "A" : "Desa")
	
	// Retrieve map name
	new mapname[32]
	get_mapname(mapname, charsmax(mapname))
	
	// Restart current map
	server_cmd("changelevel %s", mapname)
	
	return PLUGIN_HANDLED;
}

/*================================================================================
 [Message Hooks]
=================================================================================*/

// Block CS team menu
public message_vguimenu(msg_id, msg_dest, msg_entity)
{
	if (get_msg_arg_int(1) != VGUI_JOIN_TEAM_NUM)
		return PLUGIN_CONTINUE;
	
	// Show character menu
	if (g_status[msg_entity] == OFFLINE)
	{
		show_menu_registration(msg_entity)
		return PLUGIN_HANDLED;
	}
	
	return PLUGIN_CONTINUE;
}

// Block CS selection in team menu
public message_showmenu(msg_id, msg_dest, msg_entity)
{
	static sMenuCode[32]
	get_msg_arg_string(4, sMenuCode, charsmax(sMenuCode))
	
	if (equal(sMenuCode, "#Team_Select") || equal(sMenuCode, "#Team_Select_Spect") || equal(sMenuCode, "#IG_Team_Select") || equal(sMenuCode, "#IG_Team_Select_Spect"))
	{
		// Show character menu
		if (g_status[msg_entity] == OFFLINE)
		{
			show_menu_registration(msg_entity)
			return PLUGIN_HANDLED;
		}
	}
	
	return PLUGIN_CONTINUE;
}

// Hide Weapon
public message_hide_weapon()
{
	// Hide money too?
	if (get_pcvar_num(cvar_removemoney))
		set_msg_arg_int(1, ARG_BYTE, get_msg_arg_int(1) | HIDE_MONEY)
	else
		set_msg_arg_int(1, ARG_BYTE, get_msg_arg_int(1))
}

// Current Weapon info
public message_cur_weapon(msg_id, msg_dest, msg_entity)
{
	// Not alive or zombie
	if (!g_isalive[msg_entity] || g_class[msg_entity] >= ZOMBIE) return;
	
	// Not an active weapon
	if (get_msg_arg_int(1) != 1) return;
	
	// Unlimited clip disabled for class
	if (g_class[msg_entity] == SURVIVOR ? get_pcvar_num(cvar_survinfammo) <= 1 : g_class[msg_entity] == WESKER ? get_pcvar_num(cvar_weskinfammo) <= 1 : g_class[msg_entity] == SNIPER ? get_pcvar_num(cvar_snipinfammo) <= 1 : g_class[msg_entity] == PREDATOR ? get_pcvar_num(cvar_predinfammo) <= 1 : get_pcvar_num(cvar_infammo) <= 1)
		return;
	
	// Get weapon's id
	static weapon; weapon = get_msg_arg_int(2)
	
	// Unlimited Clip Ammo for this weapon?
	if (MAXBPAMMO[weapon] > 2)
	{
		// Get weapon name
		static wname[32]
		get_weaponname(weapon, wname, charsmax(wname))
		
		// Max out clip ammo
		cs_set_weapon_ammo(find_ent_by_owner(-1, wname, msg_entity), MAXCLIP[weapon])
		
		// HUD should show full clip all the time
		set_msg_arg_int(3, get_msg_argtype(3), MAXCLIP[weapon])
	}
}

// Take off player's money
public message_money(msg_id, msg_dest, msg_entity)
{
	// Remove money setting enabled?
	if (!get_pcvar_num(cvar_removemoney)) return PLUGIN_CONTINUE;
	
	cs_set_user_money(msg_entity, 0)
	return PLUGIN_HANDLED;
}

// Fix for the HL engine bug when HP is multiples of 256
public message_health(msg_id, msg_dest, msg_entity)
{
	// Get player's health
	static health
	health = get_msg_arg_int(1)
	
	// Don't bother
	if (health < 256) return;
	
	// Check if we need to fix it
	if (health % 256 == 0)
		set_user_health(msg_entity, pev(msg_entity, pev_health) + 1)
	
	// HUD can only show as much as 255 hp
	set_msg_arg_int(1, get_msg_argtype(1), 255)
}

// Block flashlight battery messages
public message_flashbat()
{
	return PLUGIN_HANDLED;
}

// Flashbangs should only affect zombies
public message_screenfade(msg_id, msg_dest, msg_entity)
{
	if (get_msg_arg_int(4) != 255 || get_msg_arg_int(5) != 255 || get_msg_arg_int(6) != 255 || get_msg_arg_int(7) < 200)
		return PLUGIN_CONTINUE;
	
	// Nemesis/Alien shouldn't be FBed
	if (g_class[msg_entity] >= ZOMBIE && g_class[msg_entity] < NEMESIS)
	{
		// Set flash color to nighvision's
		set_msg_arg_int(4, get_msg_argtype(4), g_nvgred[msg_entity])
		set_msg_arg_int(5, get_msg_argtype(5), g_nvggreen[msg_entity])
		set_msg_arg_int(6, get_msg_argtype(6), g_nvgblue[msg_entity])
		return PLUGIN_CONTINUE;
	}
	
	return PLUGIN_HANDLED;
}

// Prevent spectators' nightvision from being turned off when switching targets, etc.
public message_nvgtoggle()
{
	return PLUGIN_HANDLED;
}

// Prevent zombies from seeing any weapon pickup icon
public message_weappickup(msg_id, msg_dest, msg_entity)
{
	if (g_class[msg_entity] >= ZOMBIE) return PLUGIN_HANDLED;
	
	return PLUGIN_CONTINUE;
}

// Prevent zombies from seeing any ammo pickup icon
public message_ammopickup(msg_id, msg_dest, msg_entity)
{
	if (g_class[msg_entity] >= ZOMBIE) return PLUGIN_HANDLED;
	
	return PLUGIN_CONTINUE;
}

// Block hostage HUD display
public message_scenario()
{
	if (get_msg_args() > 1)
	{
		static sprite[8]
		get_msg_arg_string(2, sprite, charsmax(sprite))
		
		if (equal(sprite, "hostage")) return PLUGIN_HANDLED;
	}
	
	return PLUGIN_CONTINUE;
}

// Block some text messages
public message_textmsg()
{
	static textmsg[22]
	get_msg_arg_string(2, textmsg, charsmax(textmsg))
	
	// Game restarting, reset scores and call round end to balance the teams
	if (equal(textmsg, "#Game_will_restart_in"))
	{
		logevent_round_end()
		g_scorehumans = g_scorezombies = 0
	}
	// Game commencing, reset scores only (round end is automatically triggered)
	else if (equal(textmsg, "#Game_Commencing"))
	{
		g_gamecommencing = true
		g_scorehumans = g_scorezombies = 0
	}
	// Block round end related messages
	else if (equal(textmsg, "#Hostages_Not_Rescued") || equal(textmsg, "#Round_Draw") || equal(textmsg, "#Terrorists_Win") || equal(textmsg, "#CTs_Win"))
	{
		return PLUGIN_HANDLED;
	}
	
	return PLUGIN_CONTINUE;
}

// Block CS round win audio messages, since we're playing our own instead
public message_sendaudio()
{
	static audio[17]
	get_msg_arg_string(2, audio, charsmax(audio))
	
	if (equal(audio[7], "terwin") || equal(audio[7], "ctwin") || equal(audio[7], "rounddraw"))
		return PLUGIN_HANDLED;
	
	return PLUGIN_CONTINUE;
}

// Send actual team scores (T = zombies // CT = humans)
public message_teamscore()
{
	static team[2]
	get_msg_arg_string(1, team, charsmax(team))
	
	switch (team[0])
	{
		// CT
		case 'C': set_msg_arg_int(2, get_msg_argtype(2), g_scorehumans)
		// Terrorist
		case 'T': set_msg_arg_int(2, get_msg_argtype(2), g_scorezombies)
	}
}

// Team Switch (or player joining a team for first time)
public message_teaminfo(msg_id, msg_dest)
{
	// Only hook global messages
	if (msg_dest != MSG_ALL && msg_dest != MSG_BROADCAST) return;
	
	// Don't pick up our own TeamInfo messages for this player (bugfix)
	if (g_switchingteam) return;
	
	// Get player's id
	static id; id = get_msg_arg_int(1)
	
	// Invalid player id? (bugfix)
	if (!(1 <= id <= g_maxplayers)) return;
	
	// Enable spectators' nightvision if not spawning right away
	set_task(0.2, "spec_nvision", id)
	
	// Round didn't start yet, nothing to worry about
	if (g_newround) return;
	
	// Get his new team
	static team[2]
	get_msg_arg_string(2, team, charsmax(team))
	
	// Perform some checks to see if they should join a different team instead
	switch (team[0])
	{
		case 'C': // CT
		{
			if ((g_currentmode == MODE_SURVIVOR || g_currentmode == MODE_WESKER || g_currentmode == MODE_SNIPER || g_currentmode == MODE_PREDATOR || g_currentmode == MODE_ANGEL) && fnGetHumans()) // survivor/wesker alive --> switch to T and spawn as zombie
			{
				g_respawn_as_zombie[id] = true;
				remove_task(id+TASK_TEAM)
				fm_cs_set_user_team(id, FM_CS_TEAM_T)
				set_msg_arg_string(2, "TERRORIST")
			}
			else if (!fnGetZombies()) // no zombies alive --> switch to T and spawn as zombie
			{
				g_respawn_as_zombie[id] = true;
				remove_task(id+TASK_TEAM)
				fm_cs_set_user_team(id, FM_CS_TEAM_T)
				set_msg_arg_string(2, "TERRORIST")
			}
		}
		case 'T': // Terrorist
		{
			if ((g_currentmode == MODE_SWARM || g_currentmode == MODE_SURVIVOR || g_currentmode == MODE_WESKER || g_currentmode == MODE_SNIPER || g_currentmode == MODE_PREDATOR || g_currentmode == MODE_ANGEL) && fnGetHumans()) // survivor/wesker alive or swarm round w/ humans --> spawn as zombie
			{
				g_respawn_as_zombie[id] = true;
			}
			else if (fnGetZombies()) // zombies alive --> switch to CT
			{
				remove_task(id+TASK_TEAM)
				fm_cs_set_user_team(id, FM_CS_TEAM_CT)
				set_msg_arg_string(2, "CT")
			}
		}
	}
}

/*================================================================================
 [Main Functions]
=================================================================================*/

// Countdown task
public make_countdown()
{
	// Countdown sounds
	if (g_countdown < ArraySize(sound_countdown))
	{
		static sound[128]
		ArrayGetString(sound_countdown, g_countdown, sound, charsmax(sound))
		emit_sound(0, CHAN_VOICE, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)
	}
	
	// The infection starts in...
	set_hudmessage(179, 0, 0, -1.0, 0.28, 2, 0.02, 1.0, 0.01, 0.1, 10)
	ShowSyncHudMsg(0, g_MsgSync, "/----------------------------\^n| Nueva Amenaza en %d |^n\----------------------------/", g_countdown+1)
	
	// Restore countdown
	g_countdown--
	
	// Finish countdown or mode has started by admin
	if (g_countdown < 0 || g_modestarted) remove_task(TASK_COUNTDOWN)
}

// Make Zombie Task
public make_zombie_task()
{
	// Call make a zombie with no specific mode
	make_a_zombie(MODE_NONE, 0)
}

// Make a Zombie Function
make_a_zombie(mode, id)
{
	// Get alive players count
	static iPlayersnum; iPlayersnum = fnGetAlive()
	
	// Not enough players, come back later!
	if (iPlayersnum < 1)
	{
		set_task(2.0, "make_zombie_task", TASK_MAKEZOMBIE)
		return;
	}
	
	// Round started!
	g_newround = false
	
	// Set up some common vars
	static forward_id, sound[64], iZombies, iMaxZombies
	forward_id = 0
	
	if ((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_SURVIVOR) && random_num(1, get_pcvar_num(cvar_survchance)) == get_pcvar_num(cvar_surv) && iPlayersnum >= get_pcvar_num(cvar_survminplayers)) || mode == MODE_SURVIVOR)
	{
		// Survivor Mode
		g_lastmode = g_currentmode = MODE_SURVIVOR
		
		// Choose player randomly?
		if (mode == MODE_NONE) 
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
		
		// Remember id for calling our forward later
		forward_id = id
		
		// Turn player into a survivor
		humanme(id, 1, 0)
		
		// Survivor health task
		if (get_pcvar_num(cvar_hudmarker))
			set_task(1.0, "health_task", id+TASK_HEALTH, _, _, "b")
		
		// Turn the remaining players into zombies
		for (id = 1; id <= g_maxplayers; id++)
		{
			// Not alive
			if (!g_isalive[id]) continue;
			
			// Survivor or already a zombie
			if (g_class[id] == SURVIVOR || g_class[id] >= ZOMBIE) continue;
			
			// Turn into a zombie
			zombieme(id, 0, 0, 1, 0)
		}
		
		// Play survivor sound
		ArrayGetString(sound_survwesk, random_num(0, ArraySize(sound_survwesk) - 1), sound, charsmax(sound))
		PlaySound(sound);
		
		// Show Survivor HUD notice
		set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "..::Modo Survivor::..^n%s ha sido convertido en Survivor!", g_playername[forward_id])
		
		#if defined AMBIENCE_SOUNDS3
        set_task( 2.0, "start_ambience_sounds3", TASK_AMB )
        #endif
		
	}
	else if ((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_WESKER) && random_num(1, get_pcvar_num(cvar_weskchance)) == get_pcvar_num(cvar_wesk) && iPlayersnum >= get_pcvar_num(cvar_weskminplayers)) || mode == MODE_WESKER)
	{
		// Wesker Mode
		g_lastmode = g_currentmode = MODE_WESKER
		
		// Choose player randomly?
		if (mode == MODE_NONE)
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
		
		// Remember id for calling our forward later
		forward_id = id
		
		// Turn player into a wesker
		humanme(id, 2, 0)
		
		// Wesker health task
		if (get_pcvar_num(cvar_hudmarker))
			set_task(1.0, "health_task", id+TASK_HEALTH, _, _, "b")
		
		// Turn the remaining players into zombies
		for (id = 1; id <= g_maxplayers; id++)
		{
			// Not alive
			if (!g_isalive[id]) continue;
			
			// Wesker or already a zombie
			if (g_class[id] == WESKER || g_class[id] >= ZOMBIE) continue;
			
			// Turn into a zombie
			zombieme(id, 0, 0, 1, 0)
		}
		
		// Play wesker sound
		ArrayGetString(sound_survwesk, random_num(0, ArraySize(sound_survwesk) - 1), sound, charsmax(sound))
		PlaySound(sound);
		
		// Show Wesker HUD notice
		set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "..::Modo Wesker::..^n%s ha sido convertido en Wesker!", g_playername[forward_id])
		
		#if defined AMBIENCE_SOUNDS3
        set_task( 2.0, "start_ambience_sounds3", TASK_AMB )
        #endif
	
	}
	else if ((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_SNIPER) && random_num(1, get_pcvar_num(cvar_snipchance)) == get_pcvar_num(cvar_snip) && iPlayersnum >= get_pcvar_num(cvar_snipminplayers)) || mode == MODE_SNIPER)
	{
		// Wesker Mode
		g_lastmode = g_currentmode = MODE_SNIPER
		
		// Choose player randomly?
		if (mode == MODE_NONE)
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
		
		// Remember id for calling our forward later
		forward_id = id
		
		// Turn player into a wesker
		humanme(id, 3, 0)
		
		// Wesker health task
		if (get_pcvar_num(cvar_hudmarker))
			set_task(1.0, "health_task", id+TASK_HEALTH, _, _, "b")
		
		// Turn the remaining players into zombies
		for (id = 1; id <= g_maxplayers; id++)
		{
			// Not alive
			if (!g_isalive[id]) continue;
			
			// Wesker or already a zombie
			if (g_class[id] == SNIPER || g_class[id] >= ZOMBIE) continue;
			
			// Turn into a zombie
			zombieme(id, 0, 0, 1, 0)
		}
		
		// Play wesker sound
		ArrayGetString(sound_survwesk, random_num(0, ArraySize(sound_survwesk) - 1), sound, charsmax(sound))
		PlaySound(sound);
		
		// Show Wesker HUD notice
		set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "..::Modo Sniper::..^n%s ha sido convertido en Sniper!", g_playername[forward_id])
		
		#if defined AMBIENCE_SOUNDS3
        set_task( 2.0, "start_ambience_sounds3", TASK_AMB )
        #endif
	
	}
	else if ((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_PREDATOR) && random_num(1, get_pcvar_num(cvar_predchance)) == get_pcvar_num(cvar_pred) && iPlayersnum >= get_pcvar_num(cvar_predminplayers)) || mode == MODE_PREDATOR)
	{
		// Wesker Mode
		g_lastmode = g_currentmode = MODE_PREDATOR
		
		// Choose player randomly?
		if (mode == MODE_NONE)
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
		
		// Remember id for calling our forward later
		forward_id = id
		
		// Turn player into a wesker
		humanme(id, 4, 0)
		
		// Wesker health task
		if (get_pcvar_num(cvar_hudmarker))
			set_task(1.0, "health_task", id+TASK_HEALTH, _, _, "b")
		
		// Turn the remaining players into zombies
		for (id = 1; id <= g_maxplayers; id++)
		{
			// Not alive
			if (!g_isalive[id]) continue;
			
			// Wesker or already a zombie
			if (g_class[id] == PREDATOR || g_class[id] >= ZOMBIE) continue;
			
			// Turn into a zombie
			zombieme(id, 0, 0, 1, 0)
			
			set_user_health(id, floatround(float(pev(id, pev_health)) * 2))
		}
		
		// Play wesker sound
		ArrayGetString(sound_survwesk, random_num(0, ArraySize(sound_survwesk) - 1), sound, charsmax(sound))
		PlaySound(sound);
		
		// Show Wesker HUD notice
		set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "..::Modo Predator::..^n%s ha sido convertido en Predator!", g_playername[forward_id])
		
		#if defined AMBIENCE_SOUNDS3
        set_task( 2.0, "start_ambience_sounds3", TASK_AMB )
        #endif
	
	}
	else if ((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_ANGEL) && random_num(1, get_pcvar_num(cvar_angchance)) == get_pcvar_num(cvar_ang) && iPlayersnum >= get_pcvar_num(cvar_angminplayers)) || mode == MODE_ANGEL)
	{
		// Wesker Mode
		g_lastmode = g_currentmode = MODE_ANGEL
		
		// Choose player randomly?
		if (mode == MODE_NONE)
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
		
		// Remember id for calling our forward later
		forward_id = id
		
		// Turn player into a wesker
		humanme(id, 5, 0)
		
		// Wesker health task
		if (get_pcvar_num(cvar_hudmarker))
			set_task(1.0, "health_task", id+TASK_HEALTH, _, _, "b")
		
		// Turn the remaining players into zombies
		for (id = 1; id <= g_maxplayers; id++)
		{
			// Not alive
			if (!g_isalive[id]) continue;
			
			// Wesker or already a zombie
			if (g_class[id] == ANGEL || g_class[id] >= ZOMBIE) continue;
			
			// Turn into a zombie
			zombieme(id, 0, 0, 1, 0)
			
			set_user_health(id, floatround(float(pev(id, pev_health)) * 4))
		}
		
		// Play wesker sound
		ArrayGetString(sound_survwesk, random_num(0, ArraySize(sound_survwesk) - 1), sound, charsmax(sound))
		PlaySound(sound);
		
		// Show Wesker HUD notice
		set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "..::Modo Angel::..^n%s ha sido convertido en Angel!", g_playername[forward_id])
		
		#if defined AMBIENCE_SOUNDS3
        set_task( 2.0, "start_ambience_sounds3", TASK_AMB )
        #endif
		
	}
	else if ((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_SWARM) && random_num(1, get_pcvar_num(cvar_swarmchance)) == get_pcvar_num(cvar_swarm) && iPlayersnum >= get_pcvar_num(cvar_swarmminplayers)) || mode == MODE_SWARM)
	{		
		// Swarm Mode
		g_lastmode = g_currentmode = MODE_SWARM
		
		// Make sure there are alive players on both teams (BUGFIX)
		if (!fnGetAliveTs())
		{
			// Move random player to T team
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
			remove_task(id+TASK_TEAM)
			fm_cs_set_user_team(id, FM_CS_TEAM_T)
			fm_user_team_update(id)
		}
		else if (!fnGetAliveCTs())
		{
			// Move random player to CT team
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
			remove_task(id+TASK_TEAM)
			fm_cs_set_user_team(id, FM_CS_TEAM_CT)
			fm_user_team_update(id)
		}
		
		// Turn every T into a zombie
		for (id = 1; id <= g_maxplayers; id++)
		{
			// Not alive
			if (!g_isalive[id]) continue;
			
			// Not a Terrorist
			if (fm_cs_get_user_team(id) != FM_CS_TEAM_T)
				continue;
			
			// Turn into a zombie
			zombieme(id, 0, 0, 1, 0)
		}
		
		// Play swarm sound
		ArrayGetString(sound_mulswa, random_num(0, ArraySize(sound_mulswa) - 1), sound, charsmax(sound))
		PlaySound(sound);
		
		// Show Swarm HUD notice
		set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "..::Modo Swarm::..")
		
		#if defined AMBIENCE_SOUNDS
        set_task( 2.0, "start_ambience_sounds", TASK_AMB )
        #endif
		
	}
	else if ((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_MULTI) && random_num(1, get_pcvar_num(cvar_multichance)) == get_pcvar_num(cvar_multi) && floatround(iPlayersnum*get_pcvar_float(cvar_multiratio), floatround_ceil) >= 2 && floatround(iPlayersnum*get_pcvar_float(cvar_multiratio), floatround_ceil) < iPlayersnum && iPlayersnum >= get_pcvar_num(cvar_multiminplayers)) || mode == MODE_MULTI)
	{
		// Multi Infection Mode
		g_lastmode = g_currentmode = MODE_MULTI
		
		// iMaxZombies is rounded up, in case there aren't enough players
		iMaxZombies = floatround(iPlayersnum*get_pcvar_float(cvar_multiratio), floatround_ceil)
		iZombies = 0
		
		// Randomly turn iMaxZombies players into zombies
		while (iZombies < iMaxZombies)
		{
			// Keep looping through all players
			if (++id > g_maxplayers) id = 1
			
			// Dead or already a zombie
			if (!g_isalive[id] || g_class[id] >= ZOMBIE) continue;
			
			// Random chance
			if (random_num(0, 1))
			{
				// Turn into a zombie
				zombieme(id, 0, 0, 1, 0)
				iZombies++
			}
		}
		
		// Turn the remaining players into humans
		for (id = 1; id <= g_maxplayers; id++)
		{
			// Only those of them who aren't zombies
			if (!g_isalive[id] || g_class[id] >= ZOMBIE) continue;
			
			// Switch to CT
			if (fm_cs_get_user_team(id) != FM_CS_TEAM_CT) // need to change team?
			{
				remove_task(id+TASK_TEAM)
				fm_cs_set_user_team(id, FM_CS_TEAM_CT)
				fm_user_team_update(id)
			}
		}
		
		// Play multi infection sound
		ArrayGetString(sound_mulswa, random_num(0, ArraySize(sound_mulswa) - 1), sound, charsmax(sound))
		PlaySound(sound);
		
		// Show Multi Infection HUD notice
		set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "..::Infeccion Multiple::..")
		
		#if defined AMBIENCE_SOUNDS
        set_task( 2.0, "start_ambience_sounds", TASK_AMB )
        #endif
		
	}
	else if ((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_PLAGUE) && random_num(1, get_pcvar_num(cvar_plaguechance)) == get_pcvar_num(cvar_plague) && floatround((iPlayersnum-(get_pcvar_num(cvar_plaguenemnum)+get_pcvar_num(cvar_plaguesurvnum)))*get_pcvar_float(cvar_plagueratio), floatround_ceil) >= 1
	&& iPlayersnum-(get_pcvar_num(cvar_plaguesurvnum)+get_pcvar_num(cvar_plaguenemnum)+floatround((iPlayersnum-(get_pcvar_num(cvar_plaguenemnum)+get_pcvar_num(cvar_plaguesurvnum)))*get_pcvar_float(cvar_plagueratio), floatround_ceil)) >= 1 && iPlayersnum >= get_pcvar_num(cvar_plagueminplayers)) || mode == MODE_PLAGUE)
	{
		// Plague Mode
		g_lastmode = g_currentmode = MODE_PLAGUE
		
		// Turn specified amount of players into Survivors
		static iSurvivors, iMaxSurvivors
		iMaxSurvivors = get_pcvar_num(cvar_plaguesurvnum)
		iSurvivors = 0
		
		while (iSurvivors < iMaxSurvivors)
		{
			// Choose random guy
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
			
			// Already a survivor?
			if (g_class[id] == SURVIVOR) continue;
			
			// If not, turn him into one
			humanme(id, 1, 0)
			iSurvivors++
			
			// Apply survivor health
			set_user_health(id, floatround(float(pev(id, pev_health)) * get_pcvar_float(cvar_plaguesurvhp)))
		}
		
		// Turn specified amount of players into Nemesis
		static iNemesis, iMaxNemesis
		iMaxNemesis = get_pcvar_num(cvar_plaguenemnum)
		iNemesis = 0
		
		while (iNemesis < iMaxNemesis)
		{
			// Choose random guy
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
			
			// Already a survivor or nemesis?
			if (g_class[id] == SURVIVOR || g_class[id] == NEMESIS) continue;
			
			// If not, turn him into one
			zombieme(id, 0, 1, 0, 0)
			iNemesis++
			
			// Apply nemesis health
			set_user_health(id, floatround(float(pev(id, pev_health)) * get_pcvar_float(cvar_plaguenemhp)))
		}
		
		// iMaxZombies is rounded up, in case there aren't enough players
		iMaxZombies = floatround((iPlayersnum-(get_pcvar_num(cvar_plaguenemnum)+get_pcvar_num(cvar_plaguesurvnum)))*get_pcvar_float(cvar_plagueratio), floatround_ceil)
		iZombies = 0
		
		// Randomly turn iMaxZombies players into zombies
		while (iZombies < iMaxZombies)
		{
			// Keep looping through all players
			if (++id > g_maxplayers) id = 1
			
			// Dead or already a zombie or survivor
			if (!g_isalive[id] || g_class[id] >= ZOMBIE || g_class[id] == SURVIVOR)
				continue;
			
			// Random chance
			if (random_num(0, 1))
			{
				// Turn into a zombie
				zombieme(id, 0, 0, 1, 0)
				iZombies++
				
			}
		}
		
		// Turn the remaining players into humans
		for (id = 1; id <= g_maxplayers; id++)
		{
			// Only those of them who arent zombies or survivor
			if (!g_isalive[id] || g_class[id] >= ZOMBIE || g_class[id] == SURVIVOR)
				continue;
			
			// Switch to CT
			if (fm_cs_get_user_team(id) != FM_CS_TEAM_CT) // need to change team?
			{
				remove_task(id+TASK_TEAM)
				fm_cs_set_user_team(id, FM_CS_TEAM_CT)
				fm_user_team_update(id)
			}
		}
		
		// Play plague sound
		ArrayGetString(sound_plasyn, random_num(0, ArraySize(sound_plasyn) - 1), sound, charsmax(sound))
		PlaySound(sound);
		
		// Show Plague HUD notice
		set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "..::Modo Plague::..")
		
		#if defined AMBIENCE_SOUNDS
        set_task( 2.0, "start_ambience_sounds", TASK_AMB )
        #endif
	
	}
	else if ((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_COOPERATIVE) && random_num(1, get_pcvar_num(cvar_cooperativechance)) == get_pcvar_num(cvar_cooperative) && floatround((iPlayersnum-2)*get_pcvar_float(cvar_cooperativeratio), floatround_ceil) >= 1 && iPlayersnum >= get_pcvar_num(cvar_cooperativeminplayers)) || mode == MODE_COOPERATIVE)
	{
		// Plague Mode
		g_lastmode = g_currentmode = MODE_COOPERATIVE
		
		// Turn specified amount of players into Survivors
		static iSurvivors, iMaxSurvivors
		iMaxSurvivors = get_pcvar_num(cvar_cooperativesurvnum)
		iSurvivors = 0
		
		while (iSurvivors < iMaxSurvivors)
		{
			// Choose random guy
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
			
			// Already a survivor?
			if (g_class[id] == SURVIVOR) continue;
			
			// If not, turn him into one
			humanme(id, 1, 0)
			iSurvivors++
			
			// Apply survivor health
			set_user_health(id, floatround(float(pev(id, pev_health)) * get_pcvar_float(cvar_cooperativesurvhp)))
		}
		
		// Turn specified amount of players into Weskers
		static iWeskers, iMaxWeskers
		iMaxWeskers = get_pcvar_num(cvar_cooperativewesknum)
		iWeskers = 0
		
		while (iWeskers < iMaxWeskers)
		{
			// Choose random guy
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
			
			// Already a wesker?
			if (g_class[id] == SURVIVOR || g_class[id] == WESKER) continue;
		
			// If not, turn him into one
			humanme(id, 2, 0)
			iWeskers++
		
			// Apply wesker health
			set_user_health(id, floatround(float(pev(id, pev_health)) * get_pcvar_float(cvar_cooperativeweskhp)))
		}
		
		// Turn specified amount of players into Weskers
		static iSnipers, iMaxSnipers
		iMaxSnipers = get_pcvar_num(cvar_cooperativesnipnum)
		iSnipers = 0
		
		while (iSnipers < iMaxSnipers)
		{
			// Choose random guy
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
			
			// Already a wesker?
			if (g_class[id] == SURVIVOR || g_class[id] == WESKER || g_class[id] == SNIPER) continue;
		
			// If not, turn him into one
			humanme(id, 3, 0)
			iSnipers++
		
			// Apply wesker health
			set_user_health(id, floatround(float(pev(id, pev_health)) * get_pcvar_float(cvar_cooperativesniphp)))
		}
		
		// iMaxZombies is rounded up, in case there aren't enough players
		iZombies, iMaxZombies
		iMaxZombies
		iZombies = 0
		
		// Turn the remaining players into zombies
		for (id = 1; id <= g_maxplayers; id++)
		{
			// Not alive
			if (!g_isalive[id]) continue;
			
			// Wesker or already a zombie
			if (g_class[id] == SURVIVOR || g_class[id] == WESKER || g_class[id] == SNIPER || g_class[id] >= ZOMBIE) continue;
			
			// Turn into a zombie
			zombieme(id, 0, 0, 1, 0)
		}
		
		// Play plague sound
		ArrayGetString(sound_survwesk, random_num(0, ArraySize(sound_survwesk) - 1), sound, charsmax(sound))
		PlaySound(sound);
		
		// Show Plague HUD notice
		set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "..::Modo Cooperative::..")
		
		#if defined AMBIENCE_SOUNDS
        set_task( 2.0, "start_ambience_sounds", TASK_AMB )
        #endif
		
		}
	else if ((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_NEXTREMO) && random_num(1, get_pcvar_num(cvar_nextremochance)) == get_pcvar_num(cvar_nextremo) && floatround((iPlayersnum-(get_pcvar_num(cvar_nextremonemnum)+get_pcvar_num(cvar_nextremonemnum)))*get_pcvar_float(cvar_nextremoratio), floatround_ceil) >= 1
	&& iPlayersnum-(get_pcvar_num(cvar_nextremonemnum)+get_pcvar_num(cvar_nextremonemnum)+floatround((iPlayersnum-(get_pcvar_num(cvar_nextremonemnum)+get_pcvar_num(cvar_nextremonemnum)))*get_pcvar_float(cvar_nextremoratio), floatround_ceil)) >= 1 && iPlayersnum >= get_pcvar_num(cvar_nextremominplayers)) || mode == MODE_NEXTREMO)
	{
		// Plague Mode
		g_lastmode = g_currentmode = MODE_NEXTREMO
		
		// Turn specified amount of players into Nemesis
		static iNemesis, iMaxNemesis
		iMaxNemesis = get_pcvar_num(cvar_nextremonemnum)
		iNemesis = 0
		
		while (iNemesis < iMaxNemesis)
		{
			// Choose random guy
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
			
			// Already a survivor or nemesis?
			if (g_class[id] == NEMESIS) continue;
			
			// If not, turn him into one
			zombieme(id, 0, 1, 0, 0)
			iNemesis++
			
			// Apply nemesis health
			set_user_health(id, floatround(float(pev(id, pev_health)) * get_pcvar_float(cvar_nextremonemhp)))
		}

		
		// Turn the remaining players into humans
		for (id = 1; id <= g_maxplayers; id++)
		{
			// Only those of them who arent zombies or survivor
			if (!g_isalive[id] || g_class[id] >= NEMESIS)
				continue;
			
			// Switch to CT
			if (fm_cs_get_user_team(id) != FM_CS_TEAM_CT) // need to change team?
			{
				remove_task(id+TASK_TEAM)
				fm_cs_set_user_team(id, FM_CS_TEAM_CT)
				fm_user_team_update(id)
			}
		}
		
		// Play plague sound
		ArrayGetString(sound_plasyn, random_num(0, ArraySize(sound_plasyn) - 1), sound, charsmax(sound))
		PlaySound(sound);
		
		// Show Plague HUD notice
		set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "..::Modo Nemesis Extremo::..")
		
		set_pcvar_num(cvar_deathmatch, 1)
		
		#if defined AMBIENCE_SOUNDS
        set_task( 2.0, "start_ambience_sounds", TASK_AMB )
        #endif
		
	}
	else if ((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_SYNAPSIS) && random_num(1, get_pcvar_num(cvar_synapsischance)) == get_pcvar_num(cvar_synapsis) && floatround((iPlayersnum-2)*get_pcvar_float(cvar_synapsisratio), floatround_ceil) >= 1 && iPlayersnum >= get_pcvar_num(cvar_synapsisminplayers)) || mode == MODE_SYNAPSIS)
	{
		// Synapsis Mode
		g_lastmode = g_currentmode = MODE_SYNAPSIS
		
		// Turn specified amount of players into Survivors
		static iSurvivors, iMaxSurvivors
		iMaxSurvivors = get_pcvar_num(cvar_synapsissurvnum)
		iSurvivors = 0
		
		while (iSurvivors < iMaxSurvivors)
		{
			// Choose random guy
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
			
			// Already a survivor?
			if (g_class[id] == SURVIVOR) continue;
			
			// If not, turn him into one
			humanme(id, 1, 0)
			iSurvivors++
			
			// Apply survivor health
			set_user_health(id, floatround(float(pev(id, pev_health)) * get_pcvar_float(cvar_synapsissurvhp)))
		}
		
		// Turn specified amount of players into Nemesis
		static iNemesis, iMaxNemesis
		iMaxNemesis = get_pcvar_num(cvar_synapsisnemnum)
		iNemesis = 0
		
		while (iNemesis < iMaxNemesis)
		{
			// Choose random guy
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
			
			// Already a survivor or nemesis?
			if (g_class[id] == SURVIVOR || g_class[id] == NEMESIS) continue;
			
			// If not, turn him into one
			zombieme(id, 0, 1, 0, 0)
			iNemesis++
			
			// Apply nemesis health
			set_user_health(id, floatround(float(pev(id, pev_health)) * get_pcvar_float(cvar_synapsisnemhp)))
		}
	
		// Turn the remaining players into humans
		for (id = 1; id <= g_maxplayers; id++)
		{
			// Only those of them who arent zombies or survivor
			if (!g_isalive[id] || g_class[id] >= ZOMBIE || g_class[id] == SURVIVOR)
				continue;
			
			// Switch to CT
			if (fm_cs_get_user_team(id) != FM_CS_TEAM_CT) // need to change team?
			{
				remove_task(id+TASK_TEAM)
				fm_cs_set_user_team(id, FM_CS_TEAM_CT)
				fm_user_team_update(id)
			}
		}
	
		// Play synapsis sound
		ArrayGetString(sound_plasyn, random_num(0, ArraySize(sound_plasyn) - 1), sound, charsmax(sound))
		PlaySound(sound);
		
		// Show synapsis HUD notice
		set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "..::Modo Synapsis::..")
		
		#if defined AMBIENCE_SOUNDS
        set_task( 2.0, "start_ambience_sounds", TASK_AMB )
        #endif
	
	}
	else if ((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_L4D) && random_num(1, get_pcvar_num(cvar_l4dchance)) == get_pcvar_num(cvar_l4d) && iPlayersnum >= get_pcvar_num(cvar_l4dminplayers)) || mode == MODE_L4D)
	{
		g_lastmode = g_currentmode = MODE_L4D
		
		set_pcvar_num(cvar_infammo, 2)
		
		// Turn the remaining players into zombies
		for (id = 1; id <= g_maxplayers; id++)
		{
			// Not alive
			if (!g_isalive[id]) continue;
			
			// Survivor or already a zombie
			if (g_class[id] >= ZOMBIE) continue;
			
			// Turn into a zombie
			zombieme(id, 0, 0, 1, 0)
		}
		
		id = fnGetRandomAlive(random_num(1, iPlayersnum)) 
		
		if (g_class[id] >= ZOMBIE)
		{
			humanme(id, 0, 0)
			set_user_health(id, 2000)
			give_item(id, "weapon_m4a1")
			cs_set_user_bpammo(id, CSW_M4A1, 90)
			g_canbuy[id] = 2
		}	
		
		id = fnGetRandomAlive(random_num(1, iPlayersnum)) 
		
		if (g_class[id] >= ZOMBIE)
		{
			humanme(id, 0, 0)
			set_user_health(id, 2000)
			give_item(id, "weapon_ak47")
			cs_set_user_bpammo(id, CSW_AK47, 90)
			g_canbuy[id] = 2
		}
		
		id = fnGetRandomAlive(random_num(1, iPlayersnum)) 
		
		if (g_class[id] >= ZOMBIE)
		{
			humanme(id, 0, 0)
			set_user_health(id, 2000)
			give_item(id, "weapon_xm1014")
			cs_set_user_bpammo(id, CSW_XM1014, 32)
			g_canbuy[id] = 2
		}
		
		id = fnGetRandomAlive(random_num(1, iPlayersnum)) 
		
		if (g_class[id] >= ZOMBIE)
		{
			humanme(id, 0, 0)
			set_user_health(id, 2000)
			give_item(id, "weapon_mp5navy")
			cs_set_user_bpammo(id, CSW_MP5NAVY, 120)
			g_canbuy[id] = 2
		}
		
		// Play plague sound
		ArrayGetString(sound_plasyn, random_num(0, ArraySize(sound_plasyn) - 1), sound, charsmax(sound))
		PlaySound(sound);
		
		// Show Plague HUD notice
		set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync, "..::Modo Left 4 Dead::..")
		
		#if defined AMBIENCE_SOUNDS4
        set_task( 2.0, "start_ambience_sounds4", TASK_AMB )
        #endif
	
	}
	else if ((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_ARMAGEDDON) && random_num(1, get_pcvar_num(cvar_armageddonchance)) == get_pcvar_num(cvar_armageddon) && floatround((iPlayersnum-2)*get_pcvar_float(cvar_armageddonratio), floatround_ceil) >= 1 && iPlayersnum >= get_pcvar_num(cvar_armageddonminplayers)) || mode == MODE_ARMAGEDDON)
	{
		// Crysis Mode
		g_lastmode = g_currentmode = MODE_ARMAGEDDON
		
	         new Float:Time
                  Time = 10.0
	
                  new Float:Time2
                  Time2 = 12.0
        
                  // Creamos el Efecto (ScreenFade)
                  message_begin(MSG_BROADCAST, g_msgScreenFade) // Open The Function
                  write_short((1<<12)*4) // Duration
                  write_short(floatround((1<<12)*(Time+2.2))) // Hold Time
                  write_short(0x0001) // Fade Type
                  write_byte(0) // Color Red
                  write_byte(0) // Color Green
                  write_byte(0) // Color Blue
                  write_byte(255) // Alpha: 255 = Se oscurece toda la Pantalla
                  message_end() // Close The Funcion
        
                  set_task(0.1, "Notice_One") // Creamos un Task para dar la Noticia
                  set_task(Time, "EffectModeEnd", id)
	         set_task(Time2, "EffectModeEnd2")
	
	         g_final = true
		
		#if defined AMBIENCE_SOUNDS
        set_task( 2.0, "start_ambience_sounds", TASK_AMB )
        #endif
	
		// Play crysis sound
		ArrayGetString(sound_armcry, random_num(0, ArraySize(sound_armcry) - 1), sound, charsmax(sound))
		PlaySound(sound);
		
	}
	else if ((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_CRYSIS) && random_num(1, get_pcvar_num(cvar_crysischance)) == get_pcvar_num(cvar_crysis) && floatround((iPlayersnum-2)*get_pcvar_float(cvar_crysisratio), floatround_ceil) >= 1 && iPlayersnum >= get_pcvar_num(cvar_crysisminplayers)) || mode == MODE_CRYSIS)
	{
		// Crysis Mode
		g_lastmode = g_currentmode = MODE_CRYSIS
		
	         new Float:Time3
                  Time3 = 10.0
	
                  new Float:Time4
                  Time4 = 12.0
        
                  // Creamos el Efecto (ScreenFade)
                  message_begin(MSG_BROADCAST, g_msgScreenFade) // Open The Function
                  write_short((1<<12)*4) // Duration
                  write_short(floatround((1<<12)*(Time3+2.2))) // Hold Time
                  write_short(0x0001) // Fade Type
                  write_byte(0) // Color Red
                  write_byte(0) // Color Green
                  write_byte(0) // Color Blue
                  write_byte(255) // Alpha: 255 = Se oscurece toda la Pantalla
                  message_end() // Close The Funcion
        
                  set_task(0.1, "Notice_One2") // Creamos un Task para dar la Noticia
                  set_task(Time3, "EffectModeEnd3", id)
	         set_task(Time4, "EffectModeEnd4")
	
	         g_final = true
		
		#if defined AMBIENCE_SOUNDS10
        set_task( 2.0, "start_ambience_sounds10", TASK_AMB )
        #endif
	
		// Play crysis sound
		ArrayGetString(sound_armcry, random_num(0, ArraySize(sound_armcry) - 1), sound, charsmax(sound))
		PlaySound(sound);
	}
	else if ((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_AVS) && random_num(1, get_pcvar_num(cvar_avschance)) == get_pcvar_num(cvar_avs) && floatround((iPlayersnum-2)*get_pcvar_float(cvar_avsratio), floatround_ceil) >= 1 && iPlayersnum >= get_pcvar_num(cvar_avsminplayers)) || mode == MODE_AVS)
	{
		// Crysis Mode
		g_lastmode = g_currentmode = MODE_AVS
		
	         new Float:Time5
                  Time5 = 10.0
	
                  new Float:Time6
                  Time6 = 12.0
        
                  // Creamos el Efecto (ScreenFade)
                  message_begin(MSG_BROADCAST, g_msgScreenFade) // Open The Function
                  write_short((1<<12)*4) // Duration
                  write_short(floatround((1<<12)*(Time5+2.2))) // Hold Time
                  write_short(0x0001) // Fade Type
                  write_byte(0) // Color Red
                  write_byte(0) // Color Green
                  write_byte(0) // Color Blue
                  write_byte(255) // Alpha: 255 = Se oscurece toda la Pantalla
                  message_end() // Close The Funcion
        
                  set_task(0.1, "Notice_One3") // Creamos un Task para dar la Noticia
                  set_task(Time5, "EffectModeEnd5", id)
	         set_task(Time6, "EffectModeEnd6")
	
	         g_final = true
		
		#if defined AMBIENCE_SOUNDS
        set_task( 2.0, "start_ambience_sounds", TASK_AMB )
        #endif
	
		// Play crysis sound
		ArrayGetString(sound_armcry, random_num(0, ArraySize(sound_armcry) - 1), sound, charsmax(sound))
		PlaySound(sound);
	}
	else if ((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_APOCALYPSE) && random_num(1, get_pcvar_num(cvar_apocalypsechance)) == get_pcvar_num(cvar_apocalypse) && floatround((iPlayersnum-2)*get_pcvar_float(cvar_apocalypseratio), floatround_ceil) >= 1 && iPlayersnum >= get_pcvar_num(cvar_apocalypseminplayers)) || mode == MODE_APOCALYPSE)
	{
		// Crysis Mode
		g_lastmode = g_currentmode = MODE_APOCALYPSE
		
	         new Float:Time7
                  Time7 = 10.0
	
                  new Float:Time8
                  Time8 = 12.0
        
                  // Creamos el Efecto (ScreenFade)
                  message_begin(MSG_BROADCAST, g_msgScreenFade) // Open The Function
                  write_short((1<<12)*4) // Duration
                  write_short(floatround((1<<12)*(Time7+2.2))) // Hold Time
                  write_short(0x0001) // Fade Type
                  write_byte(0) // Color Red
                  write_byte(0) // Color Green
                  write_byte(0) // Color Blue
                  write_byte(255) // Alpha: 255 = Se oscurece toda la Pantalla
                  message_end() // Close The Funcion
        
                  set_task(0.1, "Notice_One4") // Creamos un Task para dar la Noticia
                  set_task(Time7, "EffectModeEnd7", id)
	         set_task(Time8, "EffectModeEnd8")
	
	         g_final = true
		
		#if defined AMBIENCE_SOUNDS
        set_task( 2.0, "start_ambience_sounds", TASK_AMB )
        #endif
	
		// Play crysis sound
		ArrayGetString(sound_armcry, random_num(0, ArraySize(sound_armcry) - 1), sound, charsmax(sound))
		PlaySound(sound);
		
	}
	else if ((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_NIGHTMARE) && random_num(1, get_pcvar_num(cvar_nightmarechance)) == get_pcvar_num(cvar_nightmare) && floatround((iPlayersnum-2)*get_pcvar_float(cvar_nightmareratio), floatround_ceil) >= 1 && iPlayersnum >= get_pcvar_num(cvar_nightmareminplayers)) || mode == MODE_NIGHTMARE)
	{
		// Crysis Mode
		g_lastmode = g_currentmode = MODE_NIGHTMARE
		
	         new Float:Time9
                  Time9 = 10.0
	
                  new Float:Time10
                  Time10 = 12.0
        
                  // Creamos el Efecto (ScreenFade)
                  message_begin(MSG_BROADCAST, g_msgScreenFade) // Open The Function
                  write_short((1<<12)*4) // Duration
                  write_short(floatround((1<<12)*(Time9+2.2))) // Hold Time
                  write_short(0x0001) // Fade Type
                  write_byte(0) // Color Red
                  write_byte(0) // Color Green
                  write_byte(0) // Color Blue
                  write_byte(255) // Alpha: 255 = Se oscurece toda la Pantalla
                  message_end() // Close The Funcion
        
                  set_task(0.1, "Notice_One5") // Creamos un Task para dar la Noticia
                  set_task(Time9, "EffectModeEnd9", id)
	         set_task(Time10, "EffectModeEnd10")
	
	         g_final = true
		
		#if defined AMBIENCE_SOUNDS
        set_task( 2.0, "start_ambience_sounds", TASK_AMB )
        #endif
	
		// Play crysis sound
		ArrayGetString(sound_armcry, random_num(0, ArraySize(sound_armcry) - 1), sound, charsmax(sound))
		PlaySound(sound);
	}
	else if ((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_ULTIMATE) && random_num(1, get_pcvar_num(cvar_ultimatechance)) == get_pcvar_num(cvar_ultimate) && floatround((iPlayersnum-2)*get_pcvar_float(cvar_ultimateratio), floatround_ceil) >= 1 && iPlayersnum >= get_pcvar_num(cvar_ultimateminplayers)) || mode == MODE_ULTIMATE)
	{
		// Crysis Mode
		g_lastmode = g_currentmode = MODE_ULTIMATE
		
	         new Float:Time11
                  Time11 = 10.0
	
                  new Float:Time12
                  Time12 = 12.0
        
                  // Creamos el Efecto (ScreenFade)
                  message_begin(MSG_BROADCAST, g_msgScreenFade) // Open The Function
                  write_short((1<<12)*4) // Duration
                  write_short(floatround((1<<12)*(Time11+2.2))) // Hold Time
                  write_short(0x0001) // Fade Type
                  write_byte(0) // Color Red
                  write_byte(0) // Color Green
                  write_byte(0) // Color Blue
                  write_byte(255) // Alpha: 255 = Se oscurece toda la Pantalla
                  message_end() // Close The Funcion
        
                  set_task(0.1, "Notice_One6") // Creamos un Task para dar la Noticia
                  set_task(Time11, "EffectModeEnd11", id)
	         set_task(Time12, "EffectModeEnd12")
	
	         g_final = true
		
		#if defined AMBIENCE_SOUNDS
        set_task( 2.0, "start_ambience_sounds", TASK_AMB )
        #endif
	
		// Play crysis sound
		ArrayGetString(sound_armcry, random_num(0, ArraySize(sound_armcry) - 1), sound, charsmax(sound))
		PlaySound(sound);	
	}
	else
	{
		// Single Infection Mode, Nemesis Mode or Alien Mode
		
		// Choose player randomly?
		if (mode == MODE_NONE)
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
		
		// Remember id for calling our forward later
		forward_id = id
		
		if ((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_NEMESIS) && random_num(1, get_pcvar_num(cvar_nemchance)) == get_pcvar_num(cvar_nem) && iPlayersnum >= get_pcvar_num(cvar_nemminplayers)) || mode == MODE_NEMESIS)
		{
			// Nemesis Mode
			g_lastmode = g_currentmode = MODE_NEMESIS
			
			// Turn player into nemesis
			zombieme(id, 0, 1, 0, 0)
			
			if (get_pcvar_num(cvar_hudmarker))
			set_task(1.0, "health_task", id+TASK_HEALTH, _, _, "b")
		}
		else if ((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_ALIEN) && random_num(1, get_pcvar_num(cvar_alichance)) == get_pcvar_num(cvar_ali) && iPlayersnum >= get_pcvar_num(cvar_aliminplayers)) || mode == MODE_ALIEN)
		{
			// Alien Mode
			g_lastmode = g_currentmode = MODE_ALIEN
			
			// Turn player into alien
			zombieme(id, 0, 2, 0, 0)
			
			if (get_pcvar_num(cvar_hudmarker))
			set_task(1.0, "health_task", id+TASK_HEALTH, _, _, "b")
		}
		else if ((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_ASSASSIN) && random_num(1, get_pcvar_num(cvar_asschance)) == get_pcvar_num(cvar_ass) && iPlayersnum >= get_pcvar_num(cvar_assminplayers)) || mode == MODE_ASSASSIN)
		{
			// Alien Mode
			g_lastmode = g_currentmode = MODE_ASSASSIN
			
			// Turn player into alien
			zombieme(id, 0, 3, 0, 0)
			
			if (get_pcvar_num(cvar_hudmarker))
			set_task(1.0, "health_task", id+TASK_HEALTH, _, _, "b")
		}
		else if ((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_DEMON) && random_num(1, get_pcvar_num(cvar_demchance)) == get_pcvar_num(cvar_dem) && iPlayersnum >= get_pcvar_num(cvar_demminplayers)) || mode == MODE_DEMON)
		{
			// Alien Mode
			g_lastmode = g_currentmode = MODE_DEMON
			
			// Turn player into alien
			zombieme(id, 0, 4, 0, 0)
			
			if (get_pcvar_num(cvar_hudmarker))
			set_task(1.0, "health_task", id+TASK_HEALTH, _, _, "b")
		}
		else
		{
			// Single Infection Mode
			g_lastmode = g_currentmode = MODE_INFECTION
			
			static iZombies, iMaxZombies
			
			if (iPlayersnum >= 0)
			{
				iMaxZombies = 1
				iZombies = 0
				
				while (iZombies < iMaxZombies)  
				{
				         id = fnGetRandomAlive(random_num(1, iPlayersnum))
			                  zombieme(id, 0, 0, 0, 0)
			                  iZombies++				  
				}
				
				do_random_spawn(id)
				set_user_health(id, floatround((float(ArrayGetCell(g_zclass_hp, g_zombieclass[id])) + ammount_zhealth(g_level[id])) * get_pcvar_float(cvar_zombiefirsthp)))
				give_item_bomb_jump(id)
		         }
			if (iPlayersnum >= 6)
			{
				iMaxZombies = 1
				iZombies = 0
				
				while (iZombies < iMaxZombies)  
				{
				         id = fnGetRandomAlive(random_num(1, iPlayersnum))
			                  zombieme(id, 0, 0, 0, 0)
			                  iZombies++				  
				}
				
				do_random_spawn(id)
				set_user_health(id, floatround((float(ArrayGetCell(g_zclass_hp, g_zombieclass[id])) + ammount_zhealth(g_level[id])) * get_pcvar_float(cvar_zombiefirsthp)))
				give_item_bomb_jump(id)
		         }
			if (iPlayersnum >= 12)
			{
				iMaxZombies = 1
				iZombies = 0
				
				while (iZombies < iMaxZombies)  
				{
				         id = fnGetRandomAlive(random_num(1, iPlayersnum))
			                  zombieme(id, 0, 0, 0, 0)
			                  iZombies++			  
				}
				
				do_random_spawn(id)
				set_user_health(id, floatround((float(ArrayGetCell(g_zclass_hp, g_zombieclass[id])) + ammount_zhealth(g_level[id])) * get_pcvar_float(cvar_zombiefirsthp)))
				give_item_bomb_jump(id)
		         }
			if (iPlayersnum >= 18)
			{
				iMaxZombies = 1
				iZombies = 0
				
				while (iZombies < iMaxZombies)  
				{
				         id = fnGetRandomAlive(random_num(1, iPlayersnum))
			                  zombieme(id, 0, 0, 0, 0)
			                  iZombies++				  
				}
				
				do_random_spawn(id)
				set_user_health(id, floatround((float(ArrayGetCell(g_zclass_hp, g_zombieclass[id])) + ammount_zhealth(g_level[id])) * get_pcvar_float(cvar_zombiefirsthp)))
				give_item_bomb_jump(id)
		         }
			if (iPlayersnum >= 24)
			{
				iMaxZombies = 1
				iZombies = 0
				
				while (iZombies < iMaxZombies)  
				{
				         id = fnGetRandomAlive(random_num(1, iPlayersnum))
			                  zombieme(id, 0, 0, 0, 0)
			                  iZombies++			  
				}
				
				do_random_spawn(id)
				set_user_health(id, floatround((float(ArrayGetCell(g_zclass_hp, g_zombieclass[id])) + ammount_zhealth(g_level[id])) * get_pcvar_float(cvar_zombiefirsthp)))
				give_item_bomb_jump(id)
		         }
			if (iPlayersnum >= 30)
			{
				iMaxZombies = 1
				iZombies = 0
				
				while (iZombies < iMaxZombies)  
				{
				         id = fnGetRandomAlive(random_num(1, iPlayersnum))
			                  zombieme(id, 0, 0, 0, 0)
			                  iZombies++		  
				}
				
				do_random_spawn(id)
				set_user_health(id, floatround((float(ArrayGetCell(g_zclass_hp, g_zombieclass[id])) + ammount_zhealth(g_level[id])) * get_pcvar_float(cvar_zombiefirsthp)))
				give_item_bomb_jump(id)
		         }
		}
		
		// Remaining players should be humans (CTs)
		for (id = 1; id <= g_maxplayers; id++)
		{
			// Not alive
			if (!g_isalive[id]) continue;
			
			// First zombie/nemesis/alien
			if (g_class[id] >= ZOMBIE) continue;
			
			// Switch to CT
			if (fm_cs_get_user_team(id) != FM_CS_TEAM_CT) // need to change team?
			{
				remove_task(id+TASK_TEAM)
				fm_cs_set_user_team(id, FM_CS_TEAM_CT)
				fm_user_team_update(id)
			}
		}
		
		if (g_currentmode == MODE_NEMESIS)
		{
			// Play Nemesis sound
			ArrayGetString(sound_nemali, random_num(0, ArraySize(sound_nemali) - 1), sound, charsmax(sound))
			PlaySound(sound);
			
			// Show Nemesis HUD notice
			set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 1.0, 1.0, -1)
			ShowSyncHudMsg(0, g_MsgSync, "..::Modo Nemesis::..^n%s ha sido convertido en Nemesis!", g_playername[forward_id])
			
			#if defined AMBIENCE_SOUNDS2
        set_task( 2.0, "start_ambience_sounds2", TASK_AMB )
        #endif
			
		}
		else if (g_currentmode == MODE_ALIEN)
		{
			// Play Alien sound
			ArrayGetString(sound_nemali, random_num(0, ArraySize(sound_nemali) - 1), sound, charsmax(sound))
			PlaySound(sound);
			
			// Show Alien HUD notice
			set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 1.0, 1.0, -1)
			ShowSyncHudMsg(0, g_MsgSync, "..::Modo Alien::..^n%s ha sido convertido en Alien!", g_playername[forward_id])
			
			#if defined AMBIENCE_SOUNDS2
        set_task( 2.0, "start_ambience_sounds2", TASK_AMB )
        #endif
			
		}
		else if (g_currentmode == MODE_ASSASSIN)
		{	
			// Play Alien sound
			ArrayGetString(sound_nemali, random_num(0, ArraySize(sound_nemali) - 1), sound, charsmax(sound))
			PlaySound(sound);
			
			// Show Alien HUD notice
			set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 1.0, 1.0, -1)
			ShowSyncHudMsg(0, g_MsgSync, "..::Modo Assassin::..^n%s ha sido convertido en Assassin!", g_playername[forward_id])
			
			#if defined AMBIENCE_SOUNDS2
        set_task( 2.0, "start_ambience_sounds2", TASK_AMB )
        #endif
	
			do_random_spawn(forward_id)
			
		}
		else if (g_currentmode == MODE_DEMON)
		{	
			// Play Alien sound
			ArrayGetString(sound_nemali, random_num(0, ArraySize(sound_nemali) - 1), sound, charsmax(sound))
			PlaySound(sound);
			
			// Show Alien HUD notice
			set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 1.0, 1.0, -1)
			ShowSyncHudMsg(0, g_MsgSync, "..::Modo Demon::..^n%s ha sido convertido en Demon!", g_playername[forward_id])
			
			#if defined AMBIENCE_SOUNDS2
        set_task( 2.0, "start_ambience_sounds2", TASK_AMB )
        #endif
			
		}
		else
		{
			// Show First Zombie HUD notice
			set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 0, 0.0, 3.0, 1.0, 1.0, -1)
			ShowSyncHudMsg(0, g_MsgSync, "HA APARECIDO EL PRIMER INFECTADO^n LLEGUEN A LA ZONA DE ESCAPE")
			
			// Set task to start ambience sounds
			
			#if defined AMBIENCE_SOUNDS
        set_task( 2.0, "start_ambience_sounds", TASK_AMB )
        #endif
		}
	}
	
	set_pcvar_num(cvar_hudstats, 1)
	
	// Mode fully started!
	g_modestarted = true
	remove_task(TASK_COUNTDOWN)
	
	// Round start forward
	ExecuteForward(g_fwRoundStart, g_fwDummyResult, g_currentmode, forward_id);
		
	// Show marker task
	if (get_pcvar_num(cvar_hudmarker)) set_task(1.0, "prepare_marker_hud")
}

public Notice_One()
{
    set_hudmessage(255, 0, 0, -1.0, 0.17, 1, 0.0, 2.0, 1.0, 1.0, -1)
    ShowSyncHudMsg(0, g_MsgSync, "El Fin ha llegado")  
    
    set_task(6.3, "Notice_Two")
}

public Notice_Two()
{
    set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 1.0, 1.0, -1)
    ShowSyncHudMsg(0, g_MsgSync, "..::Modo Armageddon::..")
}

public EffectModeEnd(id)
{   	
    message_begin(MSG_BROADCAST, g_msgScreenFade) // Open The Function
    write_short((1<<12)*4) // Duration
    write_short(floatround((1<<12)*1.0)) // Hold Time
    write_short(0x0000) // Fade Type
    write_byte(0) // Color Red
    write_byte(0) // Color Green
    write_byte(0) // Color Blue
    write_byte(250) // Alpha
    message_end() // Close The Function
}

public EffectModeEnd2(id)
{
	         // Get alive players count
	         static iPlayersnum
	         iPlayersnum = fnGetAlive()
	
	         // Get alive players count
	         static iSurvivors, iMaxSurvivors
		iMaxSurvivors = floatround(iPlayersnum * get_pcvar_float(cvar_armageddonratio), floatround_ceil)
		iSurvivors = 0
		
		while (iSurvivors < iMaxSurvivors)
		{
			// Choose random guy
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
			
			// Already a survivor?
			if (g_class[id] == SURVIVOR) continue;
		
			// If not, turn him into one
			humanme(id, 1, 0)
			iSurvivors++
		
			// Apply survivor health
			set_user_health(id, get_pcvar_num(cvar_armageddonsurvhp))
		}
	
		// Turn specified amount of players into Nemesis
		static iNemesis, iMaxNemesis
		iMaxNemesis = iPlayersnum - iMaxSurvivors
		iNemesis = 0
		
		while (iNemesis < iMaxNemesis)
		{
			// Choose random guy
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
		
			// Already a survivor or nemesis?
			if (g_class[id] == SURVIVOR || g_class[id] == NEMESIS) continue;
		
			// If not, turn him into one
			zombieme(id, 0, 1, 0, 0)
			iNemesis++
		
			// Apply nemesis health
			set_user_health(id, get_pcvar_num(cvar_armageddonnemhp))
			
		}
		
		g_final = false
}

public Notice_One2()
{
    set_hudmessage(255, 0, 0, -1.0, 0.17, 1, 0.0, 2.0, 1.0, 1.0, -1)
    ShowSyncHudMsg(0, g_MsgSync, "La Lucha ha comenzado")  
    
    set_task(6.3, "Notice_Two2")
}

public Notice_Two2()
{
    set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 1.0, 1.0, -1)
    ShowSyncHudMsg(0, g_MsgSync, "..::Modo Crysis::..")
}

public EffectModeEnd3(id)
{   	
    message_begin(MSG_BROADCAST, g_msgScreenFade) // Open The Function
    write_short((1<<12)*4) // Duration
    write_short(floatround((1<<12)*1.0)) // Hold Time
    write_short(0x0000) // Fade Type
    write_byte(0) // Color Red
    write_byte(0) // Color Green
    write_byte(0) // Color Blue
    write_byte(250) // Alpha
    message_end() // Close The Function
}

public EffectModeEnd4(id)
{
	         // Get alive players count
	         static iPlayersnum
	         iPlayersnum = fnGetAlive()
	
	         // Get alive players count
		static iWeskers, iMaxWeskers
		iMaxWeskers = floatround(iPlayersnum * get_pcvar_float(cvar_crysisratio), floatround_ceil)
		iWeskers = 0
		
		while (iWeskers < iMaxWeskers)
		{
			// Choose random guy
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
			
			// Already a wesker?
			if (g_class[id] == WESKER) continue;
		
			// If not, turn him into one
			humanme(id, 2, 0)
			iWeskers++
		
			// Apply wesker health
			set_user_health(id, get_pcvar_num(cvar_crysisweskhp))
		}
	
		// Turn specified amount of players into Aliens
		static iAliens, iMaxAliens
		iMaxAliens = iPlayersnum - iMaxWeskers
		iAliens = 0
		
		while (iAliens < iMaxAliens)
		{
			// Choose random guy
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
		
			// Already a wesker or alien?
			if (g_class[id] == WESKER || g_class[id] == ALIEN) continue;
		
			// If not, turn him into one
			zombieme(id, 0, 2, 0, 0)
			iAliens++
		
			// Apply alien health
			set_user_health(id, get_pcvar_num(cvar_crysisalihp))
			
		}
		
		g_final = false
}

public Notice_One3()
{
    set_hudmessage(255, 0, 0, -1.0, 0.17, 1, 0.0, 2.0, 1.0, 1.0, -1)
    ShowSyncHudMsg(0, g_MsgSync, "El Combate ha empesado")  
    
    set_task(6.3, "Notice_Two3")
}

public Notice_Two3()
{
    set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 1.0, 1.0, -1)
    ShowSyncHudMsg(0, g_MsgSync, "..::Modo Assassins vs Snipers::..")
}

public EffectModeEnd5(id)
{   	
    message_begin(MSG_BROADCAST, g_msgScreenFade) // Open The Function
    write_short((1<<12)*4) // Duration
    write_short(floatround((1<<12)*1.0)) // Hold Time
    write_short(0x0000) // Fade Type
    write_byte(0) // Color Red
    write_byte(0) // Color Green
    write_byte(0) // Color Blue
    write_byte(250) // Alpha
    message_end() // Close The Function
}

public EffectModeEnd6(id)
{
	         // Get alive players count
	         static iPlayersnum
	         iPlayersnum = fnGetAlive()
	
	         // Get alive players count
		static iSnipers, iMaxSnipers
		iMaxSnipers = floatround(iPlayersnum * get_pcvar_float(cvar_avsratio), floatround_ceil)
		iSnipers = 0
		
		while (iSnipers < iMaxSnipers)
		{
			// Choose random guy
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
			
			// Already a wesker?
			if (g_class[id] == SNIPER) continue;
		
			// If not, turn him into one
			humanme(id, 3, 0)
			iSnipers++
		
			// Apply wesker health
			set_user_health(id, get_pcvar_num(cvar_avssniphp))
		}
	
		// Turn specified amount of players into Aliens
		static iAssassins, iMaxAssassins
		iMaxAssassins = iPlayersnum - iMaxSnipers
		iAssassins = 0
		
		while (iAssassins < iMaxAssassins)
		{
			// Choose random guy
			id = fnGetRandomAlive(random_num(1, iPlayersnum))
		
			// Already a wesker or alien?
			if (g_class[id] == SNIPER || g_class[id] == ASSASSIN) continue;
		
			// If not, turn him into one
			zombieme(id, 0, 3, 0, 0)
			iAssassins++
		
			// Apply alien health
			set_user_health(id, get_pcvar_num(cvar_avsasshp))
			
		}
		
		g_final = false
}

public Notice_One4()
{
    set_hudmessage(255, 0, 0, -1.0, 0.17, 1, 0.0, 2.0, 1.0, 1.0, -1)
    ShowSyncHudMsg(0, g_MsgSync, "El Apocalipsis ha llegado")  
    
    set_task(6.3, "Notice_Two4")
}

public Notice_Two4()
{
    set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 1.0, 1.0, -1)
    ShowSyncHudMsg(0, g_MsgSync, "..::Modo Apocalypse::..")
}

public EffectModeEnd7(id)
{   	
    message_begin(MSG_BROADCAST, g_msgScreenFade) // Open The Function
    write_short((1<<12)*4) // Duration
    write_short(floatround((1<<12)*1.0)) // Hold Time
    write_short(0x0000) // Fade Type
    write_byte(0) // Color Red
    write_byte(0) // Color Green
    write_byte(0) // Color Blue
    write_byte(250) // Alpha
    message_end() // Close The Function
}

public EffectModeEnd8()
{
	// Create and initialize some important vars
    static i_assassins, i_max_assassins, id, i_alive
    i_alive = fn_get_alive_players()
    id = 0
    
    // Get the no of players we have to turn into assassins
    i_max_assassins = floatround( ( i_alive * 0.25), floatround_ceil )
    i_assassins = 0
    
    // Randomly turn players into Assassins
    while (i_assassins < i_max_assassins)
    {
        // Keep looping through all players
        if ( (++id) > g_maxplayers) id = 1
        
        // Dead
        if ( !is_user_alive(id) )
            continue;
        
        // Random chance
        if (random_num(1, 5) == 1)
        {
            // Make user assassin
            za_make_user_alien(id)
	    
	   // Set his health
            set_user_health(id, get_pcvar_num(cvar_apocalypsealihp)) 
            
            // Increase counter
            i_assassins++
        }
    }
    
    i_assassins = 0
    
    // Randomly turn players into Assassins
    while (i_assassins < i_max_assassins)
    {
        // Keep looping through all players
        if ( (++id) > g_maxplayers) id = 1
        
        // Dead
        if ( !is_user_alive(id) || za_get_user_alien(id))
            continue;
        
        // Random chance
        if (random_num(1, 5) == 1)
        {
            // Make user assassin
            zp_make_user_nemesis(id)
	    
	   // Set his health
            set_user_health(id, get_pcvar_num(cvar_apocalypsenemhp))    
            
            // Increase counter
            i_assassins++
        }
    }
    
    i_assassins = 0
    
    // Randomly turn players into Assassins
    while (i_assassins < i_max_assassins)
    {
        // Keep looping through all players
        if ( (++id) > g_maxplayers) id = 1
        
        // Dead
        if ( !is_user_alive(id) || za_get_user_alien(id) || zp_get_user_nemesis(id) )
            continue;
        
        // Random chance
        if (random_num(1, 5) == 1)
        {
            // Make user assassin
            zp_make_user_survivor(id)
	    
	   // Set his health
	   set_user_health(id, get_pcvar_num(cvar_apocalypsesurvhp))
            
            // Increase counter
            i_assassins++
        }
    }
    
    // Turn the remaining players into snipers
    for (id = 1; id <= g_maxplayers; id++)
    {
        // Only those of them who are alive and are not assassins
        if ( !is_user_alive(id) || za_get_user_alien(id) || zp_get_user_nemesis(id) || zp_get_user_survivor(id) )
            continue;
        
        // Turn into a sniper
        za_make_user_wesker(id)
	
        // Set his health
        set_user_health(id, get_pcvar_num(cvar_apocalypseweskhp))
    }
    
    g_final = false
}

public Notice_One5()
{
    set_hudmessage(255, 0, 0, -1.0, 0.17, 1, 0.0, 2.0, 1.0, 1.0, -1)
    ShowSyncHudMsg(0, g_MsgSync, "La Pesadilla ha comenzado")  
    
    set_task(6.3, "Notice_Two5")
}

public Notice_Two5()
{
    set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 1.0, 1.0, -1)
    ShowSyncHudMsg(0, g_MsgSync, "..::Modo Nightmare::..")
}

public EffectModeEnd9(id)
{   	
    message_begin(MSG_BROADCAST, g_msgScreenFade) // Open The Function
    write_short((1<<12)*4) // Duration
    write_short(floatround((1<<12)*1.0)) // Hold Time
    write_short(0x0000) // Fade Type
    write_byte(0) // Color Red
    write_byte(0) // Color Green
    write_byte(0) // Color Blue
    write_byte(250) // Alpha
    message_end() // Close The Function
}

public EffectModeEnd10()
{
	// Create and initialize some important vars
         static i_assassins, i_max_assassins, id, i_alive
         i_alive = fn_get_alive_players()
         id = 0
    
         // Get the no of players we have to turn into assassins
         i_max_assassins = floatround( ( i_alive * 0.25), floatround_ceil )
         i_assassins = 0
    
         // Randomly turn players into Assassins
         while (i_assassins < i_max_assassins)
         {
             // Keep looping through all players
             if ( (++id) > g_maxplayers) id = 1
        
             // Dead
             if ( !is_user_alive(id) )
                 continue;
        
             // Random chance
             if (random_num(1, 5) == 1)
             {
                 // Make user assassin
                 zp_make_user_assassin(id)
	    
	        // Set his health
                 set_user_health(id, get_pcvar_num(cvar_nightmareasshp)) 
            
                 // Increase counter
                 i_assassins++
             }
         }
    
         i_assassins = 0
    
         // Randomly turn players into Assassins
         while (i_assassins < i_max_assassins)
         {
             // Keep looping through all players
             if ( (++id) > g_maxplayers) id = 1
        
             // Dead
             if ( !is_user_alive(id) || zp_get_user_assassin(id))
                 continue;
        
             // Random chance
             if (random_num(1, 5) == 1)
             {
                 // Make user assassin
                 zp_make_user_nemesis(id)
	    
	        // Set his health
                 set_user_health(id, get_pcvar_num(cvar_nightmarenemhp))    
            
                 // Increase counter
                 i_assassins++
             }
         }
    
         i_assassins = 0
    
         // Randomly turn players into Assassins
         while (i_assassins < i_max_assassins)
         {
             // Keep looping through all players
             if ( (++id) > g_maxplayers) id = 1
        
             // Dead
             if ( !is_user_alive(id) || zp_get_user_assassin(id) || zp_get_user_nemesis(id) )
                 continue;
        
             // Random chance
             if (random_num(1, 5) == 1)
             {
                 // Make user assassin
                 zp_make_user_survivor(id)
	    
	        // Set his health
	        set_user_health(id, get_pcvar_num(cvar_nightmaresurvhp))
            
                  // Increase counter
                  i_assassins++
             }
         }
    
         // Turn the remaining players into snipers
         for (id = 1; id <= g_maxplayers; id++)
         {
             // Only those of them who are alive and are not assassins
             if ( !is_user_alive(id) || zp_get_user_assassin(id) || zp_get_user_nemesis(id) || zp_get_user_survivor(id) )
                 continue;
        
             // Turn into a sniper
             zp_make_user_sniper(id)
	
             // Set his health
             set_user_health(id, get_pcvar_num(cvar_nightmaresniphp))
    }
    
    g_final = false
}

public Notice_One6()
{
    set_hudmessage(255, 0, 0, -1.0, 0.17, 1, 0.0, 2.0, 1.0, 1.0, -1)
    ShowSyncHudMsg(0, g_MsgSync, "El Final ha empesado")  
    
    set_task(6.3, "Notice_Two6")
}

public Notice_Two6()
{
    set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 1.0, 1.0, -1)
    ShowSyncHudMsg(0, g_MsgSync, "..::Modo Ultimate::..")
}

public EffectModeEnd11(id)
{   	
    message_begin(MSG_BROADCAST, g_msgScreenFade) // Open The Function
    write_short((1<<12)*4) // Duration
    write_short(floatround((1<<12)*1.0)) // Hold Time
    write_short(0x0000) // Fade Type
    write_byte(0) // Color Red
    write_byte(0) // Color Green
    write_byte(0) // Color Blue
    write_byte(250) // Alpha
    message_end() // Close The Function
}

public EffectModeEnd12()
{
	// Create and initialize some important vars
         static i_assassins, i_max_assassins, id, i_alive
         i_alive = fn_get_alive_players()
         id = 0
    
         // Get the no of players we have to turn into assassins
         i_max_assassins = floatround( ( i_alive * 0.125), floatround_ceil )
         i_assassins = 0
    
         // Randomly turn players into Assassins
         while (i_assassins < i_max_assassins)
         {
             // Keep looping through all players
             if ( (++id) > g_maxplayers) id = 1
        
             // Dead
             if (!is_user_alive(id))
                 continue;
        
             // Random chance
             if (random_num(1, 5) == 1)
             {
                 // Make user assassin
                 zp_make_user_assassin(id)
	    
	        // Set his health
                 set_user_health(id, get_pcvar_num(cvar_ultimateasshp)) 
            
                 // Increase counter
                 i_assassins++
             }
         }
    
         i_assassins = 0
    
         // Randomly turn players into Assassins
         while (i_assassins < i_max_assassins)
         {
             // Keep looping through all players
             if ( (++id) > g_maxplayers) id = 1
        
             // Dead
             if (!is_user_alive(id) || zp_get_user_assassin(id))
                 continue;
        
             // Random chance
             if (random_num(1, 5) == 1)
             {
                 // Make user assassin
                 zp_make_user_nemesis(id)
	    
	        // Set his health
                 set_user_health(id, get_pcvar_num(cvar_ultimatenemhp))    
            
                 // Increase counter
                 i_assassins++
             }
         }
    
         i_assassins = 0
	 
	// Randomly turn players into Assassins
         while (i_assassins < i_max_assassins)
         {
             // Keep looping through all players
             if ( (++id) > g_maxplayers) id = 1
        
             // Dead
             if (!is_user_alive(id) || zp_get_user_assassin(id) || zp_get_user_nemesis(id))
                 continue;
        
             // Random chance
             if (random_num(1, 5) == 1)
             {
                 // Make user assassin
                 za_make_user_alien(id)
	    
	        // Set his health
                 set_user_health(id, get_pcvar_num(cvar_ultimatealihp))    
            
                 // Increase counter
                 i_assassins++
             }
         }
    
         i_assassins = 0 
    
         // Randomly turn players into Assassins
         while (i_assassins < i_max_assassins)
         {
             // Keep looping through all players
             if ( (++id) > g_maxplayers) id = 1
        
             // Dead
             if (!is_user_alive(id) || zp_get_user_assassin(id) || zp_get_user_nemesis(id) || za_get_user_alien(id))
                 continue;
        
             // Random chance
             if (random_num(1, 5) == 1)
             {
                 // Make user assassin
                 zp_make_user_survivor(id)
	    
	        // Set his health
	        set_user_health(id, get_pcvar_num(cvar_ultimatesurvhp))
            
                  // Increase counter
                  i_assassins++
             }
         }
	 
	i_assassins = 0 
    
         // Randomly turn players into Assassins
         while (i_assassins < i_max_assassins)
         {
             // Keep looping through all players
             if ( (++id) > g_maxplayers) id = 1
        
             // Dead
             if (!is_user_alive(id) || zp_get_user_assassin(id) || zp_get_user_nemesis(id) || za_get_user_alien(id) || zp_get_user_survivor(id))
                 continue;
        
             // Random chance
             if (random_num(1, 5) == 1)
             {
                 // Make user assassin
                 za_make_user_wesker(id)
	    
	        // Set his health
	        set_user_health(id, get_pcvar_num(cvar_ultimateweskhp))
            
                  // Increase counter
                  i_assassins++
             }
         } 
    
         // Turn the remaining players into snipers
         for (id = 1; id <= g_maxplayers; id++)
         {
             // Only those of them who are alive and are not assassins
             if (!is_user_alive(id) || zp_get_user_assassin(id) || zp_get_user_nemesis(id) || za_get_user_alien(id) || zp_get_user_survivor(id) || za_get_user_wesker(id))
                 continue;
        
             // Turn into a sniper
             zp_make_user_sniper(id)
	
             // Set his health
             set_user_health(id, get_pcvar_num(cvar_ultimatesniphp))
    }
    
    g_final = false
}

// Zombie Me Function (player id, infector, turn into a nemesis/alien, silent mode, deathmsg and rewards)
zombieme(id, infector, nemali, silentmode, rewards)
{
	// User infect attempt forward
	ExecuteForward(g_fwUserInfect_attempt, g_fwDummyResult, id, infector, nemali)
	
	// One or more plugins blocked the infection. Only allow this after making sure it's
	// not going to leave us with no zombies. Take into account a last player leaving case.
	// BUGFIX: only allow after a mode has started, to prevent blocking first zombie e.g.
	if (g_fwDummyResult >= ZP_PLUGIN_HANDLED && g_modestarted && fnGetZombies() > g_lastplayerleaving)
		return;
	
	// Pre user infect forward
	ExecuteForward(g_fwUserInfected_pre, g_fwDummyResult, id, infector, nemali)
	
	// Show zombie class menu if they haven't chosen any (e.g. just connected)
	if (g_zombieclassnext[id] == ZCLASS_NONE && get_pcvar_num(cvar_zclasses))
		set_task(0.2, "show_menu_zclass", id)
	
	// Set selected zombie class
	g_zombieclass[id] = g_zombieclassnext[id]
	// If no class selected yet, use the first (default) one
	if (g_zombieclass[id] == ZCLASS_NONE) g_zombieclass[id] = 0
	
	// Way to go...
	g_class[id] = ZOMBIE
	
	// Remove survivor and wesker's aura (bugfix)
	set_pev(id, pev_effects, pev(id, pev_effects) &~ EF_BRIGHTLIGHT)
	
	// Remove spawn protection (bugfix)
	g_nodamage[id] = false
	g_madness[id] = false
	set_pev(id, pev_effects, pev(id, pev_effects) &~ EF_NODRAW)
	
	// Reset burning duration counter (bugfix)
	g_burning_duration[id] = 0
	
	// Show deathmsg and reward infector?
	if (rewards && infector)
	{
		// Send death notice and fix the "dead" attrib on scoreboard
		SendDeathMsg(infector, id)
		FixDeadAttrib(id)
		
		// Reward frags, deaths, health, experience and ammo packs
		UpdateFrags(infector, id, 1, 1, 1)
		set_user_health(infector, get_user_health(infector) + get_pcvar_num(cvar_zombiebonushp))
		
		if (get_pcvar_num(cvar_xpinfect) || get_pcvar_num(cvar_ammoinfect))
		{
			if (g_quest[infector] == 1) g_questkill[infector][0]++
			
			if (is_user_admin(infector))
			{
			if (g_happytime) g_experience[infector] += get_pcvar_num(cvar_xpinfect) * floatround(get_pcvar_float(cvar_hhdropxp) * 2)
			else g_experience[infector] += get_pcvar_num(cvar_xpinfect) * 2
			
			if (g_experience[infector] > 999999999)
			{
				g_experience[infector] = 999999999
			}	
			
			g_ammopacks[infector][0] += get_pcvar_num(cvar_ammoinfect)	
			
			if (g_ammopacks[infector][0] > 999999999)
			{
				g_ammopacks[infector][0] = 999999999
			}
	
			zp_colored_print(infector, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp y^x04 %d^x01 Ammopacks por infectar un^x04 Humano", g_happytime ? get_pcvar_num(cvar_xpinfect) * floatround(get_pcvar_float(cvar_hhdropxp) * 2) : get_pcvar_num(cvar_xpinfect) * 2, get_pcvar_num(cvar_ammoinfect))
			}
			else
			{
			if (g_happytime) g_experience[infector] += get_pcvar_num(cvar_xpinfect) * floatround(get_pcvar_float(cvar_hhdropxp))
			else g_experience[infector] += get_pcvar_num(cvar_xpinfect)
			
			if (g_experience[infector] > 999999999)
			{
				g_experience[infector] = 999999999
			}	
			
			g_ammopacks[infector][0] += get_pcvar_num(cvar_ammoinfect)	
			
			if (g_ammopacks[infector][0] > 999999999)
			{
				g_ammopacks[infector][0] = 999999999
			}
	
			zp_colored_print(infector, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp y^x04 %d^x01 Ammopacks por infectar un^x04 Humano", g_happytime ? get_pcvar_num(cvar_xpinfect) * floatround(get_pcvar_float(cvar_hhdropxp)) : get_pcvar_num(cvar_xpinfect), get_pcvar_num(cvar_ammoinfect))
			}
			complete(infector)
			update_level(infector)
		}		
	}
	
	// Cache speed, knockback, and name for player's class
	g_zombie_spd[id] = float(ArrayGetCell(g_zclass_spd, g_zombieclass[id]))
	g_zombie_knockback[id] = Float:ArrayGetCell(g_zclass_kb, g_zombieclass[id])
	ArrayGetString(g_zclass_name, g_zombieclass[id], g_zombie_classname[id], charsmax(g_zombie_classname[]))
	
	// Set zombie attributes based on the mode
	static sound[64]
	if (!silentmode)
	{
		if (nemali == 1)
		{
			// Nemesis
			g_class[id] = NEMESIS
			
			// Set health [0 = auto]
			if (get_pcvar_num(cvar_nemhp) == 0)
			{
				if (get_pcvar_num(cvar_nembasehp) == 0)
					set_user_health(id, ArrayGetCell(g_zclass_hp, 0) * fnGetAlive())
				else
					set_user_health(id, get_pcvar_num(cvar_nembasehp) * fnGetAlive())
			}
			else
				set_user_health(id, get_pcvar_num(cvar_nemhp))
				
			fm_remove_model_ents(id)	
			
			// Set gravity, if frozen set the restore gravity value instead
			if (!g_frozen[id]) set_pev(id, pev_gravity, get_pcvar_float(cvar_nemgravity))
			else g_frozen_gravity[id] = get_pcvar_float(cvar_nemgravity)
		}
		else if (nemali == 2)
		{
			// Alien
			g_class[id] = ALIEN
			
			// Set health [0 = auto]
			if (get_pcvar_num(cvar_alihp) == 0)
			{
				if (get_pcvar_num(cvar_alibasehp) == 0)
					set_user_health(id, ArrayGetCell(g_zclass_hp, 0) * fnGetAlive())
				else
					set_user_health(id, get_pcvar_num(cvar_alibasehp) * fnGetAlive())
			}
			else
				set_user_health(id, get_pcvar_num(cvar_alihp))
				
			fm_remove_model_ents(id)	
			
			// Set gravity, if frozen set the restore gravity value instead
			if (!g_frozen[id]) set_pev(id, pev_gravity, get_pcvar_float(cvar_aligravity))
			else g_frozen_gravity[id] = get_pcvar_float(cvar_aligravity)
		}
		else if (nemali == 3)
		{
			// Alien
			g_class[id] = ASSASSIN
			
			// Set health [0 = auto]
			if (get_pcvar_num(cvar_asshp) == 0)
			{
				if (get_pcvar_num(cvar_assbasehp) == 0)
					set_user_health(id, ArrayGetCell(g_zclass_hp, 0) * fnGetAlive())
				else
					set_user_health(id, get_pcvar_num(cvar_assbasehp) * fnGetAlive())
			}
			else
				set_user_health(id, get_pcvar_num(cvar_asshp))
				
			fm_remove_model_ents(id)	
			
			// Set gravity, if frozen set the restore gravity value instead
			if (!g_frozen[id]) set_pev(id, pev_gravity, get_pcvar_float(cvar_assgravity))
			else g_frozen_gravity[id] = get_pcvar_float(cvar_assgravity)
		}
		else if (nemali == 4)
		{
			// Alien
			g_class[id] = DEMON
			
			// Set health [0 = auto]
			if (get_pcvar_num(cvar_demhp) == 0)
			{
				if (get_pcvar_num(cvar_dembasehp) == 0)
					set_user_health(id, ArrayGetCell(g_zclass_hp, 0) * fnGetAlive())
				else
					set_user_health(id, get_pcvar_num(cvar_dembasehp) * fnGetAlive())
			}
			else
				set_user_health(id, get_pcvar_num(cvar_demhp))
				
			fm_remove_model_ents(id)	
			
			// Set gravity, if frozen set the restore gravity value instead
			if (!g_frozen[id]) set_pev(id, pev_gravity, get_pcvar_float(cvar_demgravity))
			else g_frozen_gravity[id] = get_pcvar_float(cvar_demgravity)	
		}
		else if (fnGetZombies() == 1)
		{
			// First zombie
			g_class[id] = FIRST_ZOMBIE
			
			// Set health
			set_user_health(id, floatround((float(ArrayGetCell(g_zclass_hp, g_zombieclass[id])) + ammount_zhealth(g_level[id])) * get_pcvar_float(cvar_zombiefirsthp)))
			
			// Set gravity, if frozen set the restore gravity value instead
			if (!g_frozen[id]) set_pev(id, pev_gravity, Float:ArrayGetCell(g_zclass_grav, g_zombieclass[id]) - ammount_zgravity(g_level[id]))
			else g_frozen_gravity[id] = Float:ArrayGetCell(g_zclass_grav, g_zombieclass[id]) - ammount_zgravity(g_level[id])
			
			// Infection sound
			ArrayGetString(zombie_infect, random_num(0, ArraySize(zombie_infect) - 1), sound, charsmax(sound))
			emit_sound(id, CHAN_VOICE, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)
			
			fm_remove_model_ents(id)
		}
		else
		{			
			// Set health
			set_user_health(id, ArrayGetCell(g_zclass_hp, g_zombieclass[id]) + ammount_zhealth(g_level[id]))
			
			// Set gravity, if frozen set the restore gravity value instead
			if (!g_frozen[id]) set_pev(id, pev_gravity, Float:ArrayGetCell(g_zclass_grav, g_zombieclass[id]) - ammount_zgravity(g_level[id]))
			else g_frozen_gravity[id] = Float:ArrayGetCell(g_zclass_grav, g_zombieclass[id]) - ammount_zgravity(g_level[id])
			
			// Infection sound
			ArrayGetString(zombie_infect, random_num(0, ArraySize(zombie_infect) - 1), sound, charsmax(sound))
			emit_sound(id, CHAN_VOICE, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)
			
			// Show Infection HUD notice
			set_hudmessage(255, 0, 0, HUD_INFECT_X, HUD_INFECT_Y, 0, 0.0, 3.0, 1.0, 1.0, -1)
			
			if (infector) // infected by someone?
				ShowSyncHudMsg(0, g_MsgSync, "%s ha perdido su cerebro a manos de %s...", g_playername[id], g_playername[infector])
			else
				ShowSyncHudMsg(0, g_MsgSync, "%s ha perdido su cerebro...", g_playername[id])
				
				fm_remove_model_ents(id)
		}
	}
	else
	{
		// Silent mode, no HUD messages, no infection sounds
		fm_remove_model_ents(id)
		
		// Set health
		set_user_health(id, ArrayGetCell(g_zclass_hp, g_zombieclass[id]) + ammount_zhealth(g_level[id]))
		
		// Set gravity, if frozen set the restore gravity value instead
		if (!g_frozen[id]) set_pev(id, pev_gravity, Float:ArrayGetCell(g_zclass_grav, g_zombieclass[id]) - ammount_zgravity(g_level[id]))
		else g_frozen_gravity[id] = Float:ArrayGetCell(g_zclass_grav, g_zombieclass[id]) - ammount_zgravity(g_level[id])
	}
	
	// Set player maxspeed
	ExecuteHamB(Ham_Player_ResetMaxSpeed, id)
		
	// Remove previous tasks
	remove_task(id+TASK_BLOOD)
	remove_task(id+TASK_AURA)
	remove_task(id+TASK_BURN)
	
	// Switch to T
	if (fm_cs_get_user_team(id) != FM_CS_TEAM_T) // need to change team?
	{
		remove_task(id+TASK_TEAM)
		fm_cs_set_user_team(id, FM_CS_TEAM_T)
		fm_user_team_update(id)
	}
	
	// Custom models stuff
	static iRand
    
	// Set the right model, after checking that we don't already have it
	if (g_class[id] == NEMESIS)
	{        
		iRand = random_num(0, ArraySize(model_nemesis) - 1)
		ArrayGetString(model_nemesis, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_class[id] == ALIEN)
	{        
		iRand = random_num(0, ArraySize(model_alien) - 1)
		ArrayGetString(model_alien, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_class[id] == ASSASSIN)
	{        
		iRand = random_num(0, ArraySize(model_assassin) - 1)
		ArrayGetString(model_assassin, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_class[id] == DEMON)
	{        
		iRand = random_num(0, ArraySize(model_demon) - 1)
		ArrayGetString(model_demon, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else
	{
		if (get_pcvar_num(cvar_adminmodelszombie) && (get_user_flags(id) & g_access_flag[ACCESS_ADMIN_MODELS]))
		{
			iRand = random_num(0, ArraySize(model_admin_zombie) - 1)
			ArrayGetString(model_admin_zombie, iRand, g_playermodel[id], charsmax(g_playermodel[]))
		}
		else
		{
			iRand = random_num(ArrayGetCell(g_zclass_modelsstart, g_zombieclass[id]), ArrayGetCell(g_zclass_modelsend, g_zombieclass[id]) - 1)
			ArrayGetString(g_zclass_playermodel, iRand, g_playermodel[id], charsmax(g_playermodel[]))
		}
	}
	cs_set_player_model(id, g_playermodel[id])
        
	// Nemesis glow / remove glow, unless frozen (not in armageddon and in crysis)
	if (!g_frozen[id])
	{
		if (g_class[id] == NEMESIS && get_pcvar_num(cvar_nemglow))
			set_rendering(id)
		else if (g_class[id] == ALIEN && get_pcvar_num(cvar_aliglow))
			set_rendering(id)
		else if (g_class[id] == ASSASSIN && get_pcvar_num(cvar_assglow))
			set_rendering(id)
		else if (g_class[id] == DEMON && get_pcvar_num(cvar_demglow))
			set_rendering(id)	
		else
			set_rendering(id)
	}
    
	// Remove any zoom (bugfix)
	cs_set_user_zoom(id, CS_RESET_ZOOM, 1)
	
	// Remove armor
	cs_set_user_armor(id, 0, CS_ARMOR_NONE)
	
	// Drop weapons when infected
	drop_weapons(id, 1)
	drop_weapons(id, 2)
	
	// Strip zombies from guns and give them a knife
	strip_user_weapons(id)
	give_item(id, "weapon_knife")
	
	g_superknife[id] = 0
	
	// Fancy effects
	infection_effects(id)
	
	// First nemesis aura task (not in armageddon and in crysis)
	if (g_class[id] == NEMESIS && get_pcvar_num(cvar_nemaura) && g_currentmode < MODE_ARMAGEDDON && fnGetNemesis() == 1)
		set_task(0.1, "zombie_aura", id+TASK_AURA, _, _, "b")
		
	// First alien aura task (not in armageddon and in crysis)
	if (g_class[id] == ALIEN && get_pcvar_num(cvar_aliaura) && g_currentmode < MODE_ARMAGEDDON && fnGetAliens() == 1)
		set_task(0.1, "zombie_aura", id+TASK_AURA, _, _, "b")
	
	// Remove CS nightvision if player owns one (bugfix)
	if (cs_get_user_nvg(id))
	{
		cs_set_user_nvg(id, 0)
		remove_task(id+TASK_NVISION)
	}
	
	// Give Zombies Night Vision?
	if (get_pcvar_num(cvar_nvggive))
	{
		g_nvision[id] = true
		
		if (!g_isbot[id])
		{
			// Turn on Night Vision automatically?
			if (get_pcvar_num(cvar_nvggive) == 1)
			{
				g_nvisionenabled[id] = true
				
				// Custom nvg
				remove_task(id+TASK_NVISION)
				set_task(0.1, "set_user_nvision", id+TASK_NVISION, _, _, "b")
			}
			// Turn off nightvision when infected (bugfix)
			else if (g_nvisionenabled[id])
			{
				remove_task(id+TASK_NVISION)
				g_nvisionenabled[id] = false
			}
		}
		else
			cs_set_user_nvg(id, 1); // turn on NVG for bots
	}
	// Disable nightvision when infected (bugfix)
	else if (g_nvision[id])
	{
		remove_task(id+TASK_NVISION)
		g_nvision[id] = g_nvisionenabled[id] = false
	}
	
	// Set custom FOV?
	if (get_pcvar_num(cvar_zombiefov) != 90 && get_pcvar_num(cvar_zombiefov) != 0)
	{
		message_begin(MSG_ONE, g_msgSetFOV, _, id)
		write_byte(get_pcvar_num(cvar_zombiefov)) // fov angle
		message_end()
	}
	
	// Call the bloody task
	if (g_class[id] < NEMESIS && get_pcvar_num(cvar_zombiebleeding))
		set_task(0.7, "make_blood", id+TASK_BLOOD, _, _, "b")
	
	// Turn off zombie's flashlight
	turn_off_flashlight(id)
	
	// Post user infect forward
	ExecuteForward(g_fwUserInfected_post, g_fwDummyResult, id, infector, nemali)
	
	// Last Check
	fnCheckLast()
}

// Function Human Me (player id, turn into a survivor/wesker, silent mode)
humanme(id, survwesk, silentmode)
{
	// User humanize attempt forward
	ExecuteForward(g_fwUserHumanize_attempt, g_fwDummyResult, id, survwesk)
	
	// One or more plugins blocked the "humanization". Only allow this after making sure it's
	// not going to leave us with no humans. Take into account a last player leaving case.
	// BUGFIX: only allow after a mode has started, to prevent blocking first survivor e.g.
	if (g_fwDummyResult >= ZP_PLUGIN_HANDLED && g_modestarted && fnGetHumans() > g_lastplayerleaving)
		return;
	
	// Pre user humanize forward
	ExecuteForward(g_fwUserHumanized_pre, g_fwDummyResult, id, survwesk)
	
	// Set selected human class
	g_humanclass[id] = g_humanclassnext[id]
	// If no class selected yet, use the first (default) one
	if (g_humanclass[id] == HCLASS_NONE) g_humanclass[id] = 0
	
	// Cache speed and name for player's class
	g_human_spd[id] = float(ArrayGetCell(g_hclass_spd, g_humanclass[id]))
	ArrayGetString(g_hclass_name, g_humanclass[id], g_human_classname[id], charsmax(g_human_classname[]))
	
	// Remove previous tasks
	remove_task(id+TASK_BLOOD)
	remove_task(id+TASK_AURA)
	remove_task(id+TASK_BURN)
	remove_task(id+TASK_NVISION)
	
	// Reset some vars
	g_canbuy[id] = 0
	g_buytime[id] = get_gametime()
	
	// Remove survivor and wesker's aura (bugfix)
	set_pev(id, pev_effects, pev(id, pev_effects) &~ EF_BRIGHTLIGHT)
	
	// Remove spawn protection (bugfix)
	g_nodamage[id] = false
	g_madness[id] = false
	set_pev(id, pev_effects, pev(id, pev_effects) &~ EF_NODRAW)
	
	// Reset burning duration counter (bugfix)
	g_burning_duration[id] = 0
	
	// Remove CS nightvision if player owns one (bugfix)
	if (cs_get_user_nvg(id))
	{
		cs_set_user_nvg(id, 0)
		remove_task(id+TASK_NVISION)
	}
	
	// Drop previous weapons
	drop_weapons(id, 1)
	drop_weapons(id, 2)
	
	// Strip off from weapons
	strip_user_weapons(id)
	give_item(id, "weapon_knife")
	if(g_nomenu[id] == 0)
			{
				show_menu_weapon(id)
			}
			if(g_nomenu[id] == 1)
			{
				buy_weapons(id)
			}
	
	// Set human attributes based on the mode
	if (survwesk == 1)
	{
		// Survivor
		g_class[id] = SURVIVOR
		
		fm_remove_model_ents(id)
		
		// Set Health [0 = auto]
		if (get_pcvar_num(cvar_survhp) == 0)
		{
			if (get_pcvar_num(cvar_survbasehp) == 0)
				set_user_health(id, ArrayGetCell(g_hclass_hp, g_humanclass[id]) * fnGetAlive())
			else
				set_user_health(id, get_pcvar_num(cvar_survbasehp) * fnGetAlive())
		}
		else
			set_user_health(id, get_pcvar_num(cvar_survhp))	
		
		// Set gravity, if frozen set the restore gravity value instead
		if (!g_frozen[id]) set_pev(id, pev_gravity, get_pcvar_float(cvar_survgravity))
		else g_frozen_gravity[id] = get_pcvar_float(cvar_survgravity)
		
		give_item(id, "weapon_mp5navy")
		ExecuteHamB(Ham_GiveAmmo, id, MAXBPAMMO[CSW_MP5NAVY], AMMOTYPE[CSW_MP5NAVY], MAXBPAMMO[CSW_MP5NAVY])
		
		// Turn off his flashlight
		turn_off_flashlight(id)
		
		g_superknife[id] = 0
		
		// Give the first survivor a bright light (not in armageddon and in crysis)
		if (get_pcvar_num(cvar_survaura) && g_currentmode < MODE_ARMAGEDDON && fnGetSurvivors() == 1) 
			set_pev(id, pev_effects, pev(id, pev_effects) | EF_BRIGHTLIGHT)
	}
	else if (survwesk == 2)
	{
		// Wesker
		g_class[id] = WESKER
		
		fm_remove_model_ents(id)
		
		// Set Health [0 = auto]
		if (get_pcvar_num(cvar_weskhp) == 0)
		{
			if (get_pcvar_num(cvar_weskbasehp) == 0)
				set_user_health(id, ArrayGetCell(g_hclass_hp, g_humanclass[id]) * fnGetAlive())
			else
				set_user_health(id, get_pcvar_num(cvar_weskbasehp) * fnGetAlive())
		}
		else
			set_user_health(id, get_pcvar_num(cvar_weskhp))	
		
		// Set gravity, if frozen set the restore gravity value instead
		if (!g_frozen[id]) set_pev(id, pev_gravity, get_pcvar_float(cvar_weskgravity))
		else g_frozen_gravity[id] = get_pcvar_float(cvar_weskgravity)
		
		give_item(id, "weapon_m4a1")
		ExecuteHamB(Ham_GiveAmmo, id, MAXBPAMMO[CSW_M4A1], AMMOTYPE[CSW_M4A1], MAXBPAMMO[CSW_M4A1])
		
		// Turn off his flashlight
		turn_off_flashlight(id)
		
		g_superknife[id] = 0
		
		// Give the first wesker a bright light (not in armageddon and in crysis)
		if (get_pcvar_num(cvar_weskaura) && g_currentmode < MODE_ARMAGEDDON && fnGetWeskers() == 1) 
			set_pev(id, pev_effects, pev(id, pev_effects) | EF_BRIGHTLIGHT)
	}
	else if (survwesk == 3)
	{
		// Wesker
		g_class[id] = SNIPER
		
		fm_remove_model_ents(id)
		
		// Set Health [0 = auto]
		if (get_pcvar_num(cvar_sniphp) == 0)
		{
			if (get_pcvar_num(cvar_snipbasehp) == 0)
				set_user_health(id, ArrayGetCell(g_hclass_hp, g_humanclass[id]) * fnGetAlive())
			else
				set_user_health(id, get_pcvar_num(cvar_snipbasehp) * fnGetAlive())
		}
		else
			set_user_health(id, get_pcvar_num(cvar_sniphp))	
		
		// Set gravity, if frozen set the restore gravity value instead
		if (!g_frozen[id]) set_pev(id, pev_gravity, get_pcvar_float(cvar_snipgravity))
		else g_frozen_gravity[id] = get_pcvar_float(cvar_snipgravity)
		
		// Give wesker his own weapon
		give_item(id, "weapon_awp")
		ExecuteHamB(Ham_GiveAmmo, id, MAXBPAMMO[CSW_AWP], AMMOTYPE[CSW_AWP], MAXBPAMMO[CSW_AWP])
		
		// Turn off his flashlight
		turn_off_flashlight(id)
		
		g_superknife[id] = 0
		
		// Give the first wesker a bright light (not in armageddon and in crysis)
		if (get_pcvar_num(cvar_snipaura) && g_currentmode < MODE_ARMAGEDDON && fnGetSnipers() == 1) 
			set_pev(id, pev_effects, pev(id, pev_effects) | EF_BRIGHTLIGHT)
	}
	else if (survwesk == 4)
	{
		// Wesker
		g_class[id] = PREDATOR
		
		fm_remove_model_ents(id)
		
		// Set Health [0 = auto]
		if (get_pcvar_num(cvar_predhp) == 0)
		{
			if (get_pcvar_num(cvar_predbasehp) == 0)
				set_user_health(id, ArrayGetCell(g_hclass_hp, g_humanclass[id]) * fnGetAlive())
			else
				set_user_health(id, get_pcvar_num(cvar_predbasehp) * fnGetAlive())
		}
		else
			set_user_health(id, get_pcvar_num(cvar_predhp))	
		
		// Set gravity, if frozen set the restore gravity value instead
		if (!g_frozen[id]) set_pev(id, pev_gravity, get_pcvar_float(cvar_predgravity))
		else g_frozen_gravity[id] = get_pcvar_float(cvar_predgravity)
		
		// Turn off his flashlight
		turn_off_flashlight(id)
		
		g_superknife[id] = 0
		
		give_weapon_plasmagun(id)
		
		// Give the first wesker a bright light (not in armageddon and in crysis)
		if (get_pcvar_num(cvar_predaura) && g_currentmode < MODE_ARMAGEDDON && fnGetPredators() == 1) 
			set_pev(id, pev_effects, pev(id, pev_effects) | EF_BRIGHTLIGHT)
	}
	else if (survwesk == 5)
	{
		// Wesker
		g_class[id] = ANGEL
		
		fm_remove_model_ents(id)
		
		// Set Health [0 = auto]
		if (get_pcvar_num(cvar_anghp) == 0)
		{
			if (get_pcvar_num(cvar_angbasehp) == 0)
				set_user_health(id, ArrayGetCell(g_hclass_hp, g_humanclass[id]) * fnGetAlive())
			else
				set_user_health(id, get_pcvar_num(cvar_angbasehp) * fnGetAlive())
		}
		else
			set_user_health(id, get_pcvar_num(cvar_anghp))	
		
		// Set gravity, if frozen set the restore gravity value instead
		if (!g_frozen[id]) set_pev(id, pev_gravity, get_pcvar_float(cvar_anggravity))
		else g_frozen_gravity[id] = get_pcvar_float(cvar_anggravity)
		
		// Turn off his flashlight
		turn_off_flashlight(id)
		
		g_superknife[id] = 1
		
		fm_knife_ents(id)
		
		// Give the first wesker a bright light (not in armageddon and in crysis)
		if (get_pcvar_num(cvar_angaura) && g_currentmode < MODE_ARMAGEDDON && fnGetAngels() == 1) 
			set_pev(id, pev_effects, pev(id, pev_effects) | EF_BRIGHTLIGHT)		
	}
	else
	{
		// Human taking an antidote
		g_class[id] = HUMAN
		
		// Set health and armor
		set_user_health(id, ArrayGetCell(g_hclass_hp, g_humanclass[id]) + ammount_hhealth(g_level[id]))
		
		// Set gravity, if frozen set the restore gravity value instead
		if (!g_frozen[id]) set_pev(id, pev_gravity, Float:ArrayGetCell(g_hclass_grav, g_humanclass[id]) - ammount_hgravity(g_level[id]))
		else g_frozen_gravity[id] = Float:ArrayGetCell(g_hclass_grav, g_humanclass[id]) - ammount_hgravity(g_level[id])
		
		// Show custom buy menu?
		if (get_pcvar_num(cvar_buycustom))
		{
			// Strip off from weapons
			strip_user_weapons(id)
			give_item(id, "weapon_knife")
				
			// Show weapons menu
			show_menu_buy1(id)
		}
		
		g_anti_ice[id] = false 
		g_anti_fire[id] = false 
		g_superknife[id] = 0
		
		if (is_user_admin(id))
		{
			if(pev(id, pev_armorvalue) < 100)
			set_pev(id, pev_armorvalue, float(100))
		}
		
		// Silent mode = no HUD messages, no antidote sound
		if (!silentmode)
		{
			// Antidote sound
			static sound[64]
			ArrayGetString(sound_antidote, random_num(0, ArraySize(sound_antidote) - 1), sound, charsmax(sound))
			emit_sound(id, CHAN_ITEM, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)
			
			// Show Antidote HUD notice
			set_hudmessage(0, 0, 255, HUD_INFECT_X, HUD_INFECT_Y, 0, 0.0, 3.0, 1.0, 1.0, -1)
			ShowSyncHudMsg(0, g_MsgSync, "%s se ha tomado un antidoto!", g_playername[id])
		}
	}
	
	// Set player maxspeed
	ExecuteHamB(Ham_Player_ResetMaxSpeed, id)
	
	// Survivors/Weskers will also need nightvision to see in the dark
	if (g_class[id] == SURVIVOR || g_class[id] == WESKER || g_class[id] == SNIPER || g_class[id] == PREDATOR || g_class[id] == ANGEL)
	{
		if (!g_isalive[id])
		{
			g_nvision[id] = g_nvisionenabled[id] = true
			
			// Custom nvg
			remove_task(id+TASK_NVISION)
			set_task(0.1, "set_user_nvision", id+TASK_NVISION, _, _, "b")
		}
		else
		{
			g_nvision[id] = true
			cs_set_user_nvg(id, 1)
		}
	}
	
	// Switch to CT
	if (fm_cs_get_user_team(id) != FM_CS_TEAM_CT) // need to change team?
	{
		remove_task(id+TASK_TEAM)
		fm_cs_set_user_team(id, FM_CS_TEAM_CT)
		fm_user_team_update(id)
	}
	
	// Custom models stuff
	static iRand
	
	// Set the right model
	if (g_class[id] == SURVIVOR)
	{        
		iRand = random_num(0, ArraySize(model_survivor) - 1)
		ArrayGetString(model_survivor, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_class[id] == WESKER)
	{        
		iRand = random_num(0, ArraySize(model_wesker) - 1)
		ArrayGetString(model_wesker, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_class[id] == SNIPER)
	{        
		iRand = random_num(0, ArraySize(model_sniper) - 1)
		ArrayGetString(model_sniper, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_class[id] == PREDATOR)
	{        
		iRand = random_num(0, ArraySize(model_predator) - 1)
		ArrayGetString(model_predator, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_class[id] == ANGEL)
	{        
		iRand = random_num(0, ArraySize(model_angel) - 1)
		ArrayGetString(model_angel, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else
	{
		if (get_pcvar_num(cvar_adminmodelshuman) && (get_user_flags(id) & g_access_flag[ACCESS_ADMIN_MODELS]))
		{            
			iRand = random_num(0, ArraySize(model_admin_human) - 1)
			ArrayGetString(model_admin_human, iRand, g_playermodel[id], charsmax(g_playermodel[]))
		}
	else if (g_models[id] == 1)
	{        
		iRand = random_num(0, ArraySize(model_player1) - 1)
		ArrayGetString(model_player1, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 2)
	{        
		iRand = random_num(0, ArraySize(model_player2) - 1)
		ArrayGetString(model_player2, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 3)
	{        
		iRand = random_num(0, ArraySize(model_player3) - 1)
		ArrayGetString(model_player3, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 4)
	{        
		iRand = random_num(0, ArraySize(model_player4) - 1)
		ArrayGetString(model_player4, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 5)
	{        
		iRand = random_num(0, ArraySize(model_player5) - 1)
		ArrayGetString(model_player5, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 6)
	{        
		iRand = random_num(0, ArraySize(model_player6) - 1)
		ArrayGetString(model_player6, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 7)
	{        
		iRand = random_num(0, ArraySize(model_player7) - 1)
		ArrayGetString(model_player7, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 8)
	{        
		iRand = random_num(0, ArraySize(model_player8) - 1)
		ArrayGetString(model_player8, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 9)
	{        
		iRand = random_num(0, ArraySize(model_player9) - 1)
		ArrayGetString(model_player9, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 10)
	{        
		iRand = random_num(0, ArraySize(model_player10) - 1)
		ArrayGetString(model_player10, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 11)
	{        
		iRand = random_num(0, ArraySize(model_player11) - 1)
		ArrayGetString(model_player11, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 12)
	{        
		iRand = random_num(0, ArraySize(model_player12) - 1)
		ArrayGetString(model_player12, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	else if (g_models[id] == 0)
	{
		iRand = random_num(ArrayGetCell(g_hclass_modelsstart, g_humanclass[id]), ArrayGetCell(g_hclass_modelsend, g_humanclass[id]) - 1)
		ArrayGetString(g_hclass_playermodel, iRand, g_playermodel[id], charsmax(g_playermodel[]))
	}
	}
	cs_set_player_model(id, g_playermodel[id])
	
	fm_model_ents(id)
	
	// Set survivor & wesker glow / remove glow, unless frozen (not in armageddon and in crysis)
	if (!g_frozen[id])
	{	
		if (g_class[id] == SURVIVOR && get_pcvar_num(cvar_survglow))
			set_rendering(id)
		else if (g_class[id] == WESKER && get_pcvar_num(cvar_weskglow))
			set_rendering(id)
		else if (g_class[id] == SNIPER && get_pcvar_num(cvar_snipglow))
			set_rendering(id)
		else if (g_class[id] == PREDATOR && get_pcvar_num(cvar_predglow))
			set_rendering(id)
		else if (g_class[id] == ANGEL && get_pcvar_num(cvar_angglow))
			set_rendering(id)	
		
		if (g_class[id] == HUMAN)
		{
		if (g_glows[id] == 0)
			set_rendering(id)
		else if (g_glows[id] == 1)
			set_rendering(id, kRenderFxGlowShell, 255, 0, 0, kRenderNormal, 25)
		else if (g_glows[id] == 2)
			set_rendering(id, kRenderFxGlowShell, 0, 255, 0, kRenderNormal, 25)
		else if (g_glows[id] == 3)
			set_rendering(id, kRenderFxGlowShell, 0, 0, 255, kRenderNormal, 25)
		else if (g_glows[id] == 4)
			set_rendering(id, kRenderFxGlowShell, 255, 255, 0, kRenderNormal, 25)
		else if (g_glows[id] == 5)
			set_rendering(id, kRenderFxGlowShell, 255, 100, 0, kRenderNormal, 25)
		else if (g_glows[id] == 6)
			set_rendering(id, kRenderFxGlowShell, 0, 255, 255, kRenderNormal, 25)
		else if (g_glows[id] == 7)
			set_rendering(id, kRenderFxGlowShell, 255, 0, 100, kRenderNormal, 25)
		else if (g_glows[id] == 8)
			set_rendering(id, kRenderFxGlowShell, 100, 0, 255, kRenderNormal, 25)
		else if (g_glows[id] == 9)
			set_rendering(id, kRenderFxGlowShell, 255, 255, 255, kRenderNormal, 25)
		}
	}
	
	// Restore FOV?
	if (get_pcvar_num(cvar_zombiefov) != 90 && get_pcvar_num(cvar_zombiefov) != 0)
	{
		message_begin(MSG_ONE, g_msgSetFOV, _, id)
		write_byte(90) // angle
		message_end()
	}
	
	// Disable nightvision when turning into human/survivor/wesker (bugfix)
	if (g_nvision[id])
	{
		remove_task(id+TASK_NVISION)
		g_nvision[id] = g_nvisionenabled[id] = false
	}
	
	// Post user humanize forward
	ExecuteForward(g_fwUserHumanized_post, g_fwDummyResult, id, survwesk)
	
	// Last Check
	fnCheckLast()
}

/*================================================================================
 [Other Functions and Tasks]
=================================================================================*/

// Update level and range
update_level(id)
{
	static sound[64];
	static level; level = g_level[id]
	static rangelevel; rangelevel = g_rangelevel[id]
	
	// Upload level
	while (g_experience[id] >= cost_levelup((g_level[id]+1)) && g_level[id] < g_max_level)
		g_level[id]++
			
	// Reduce level
	while (g_experience[id] < cost_levelup(g_level[id]) && g_level[id] > 0)
		g_level[id]--
			
	// Level changed?
	if (g_level[id] > level)
	{
		zp_colored_print(id, "^x04[ZE]^x01 Has Subido a Nivel: ^x04%d^x01", g_level[id])
		ArrayGetString(sound_level_up, random_num(0, ArraySize(sound_level_up) - 1), sound, charsmax(sound))
		OnePlaySound(id, sound);
	}
	else if (g_level[id] < level)
	{
		zp_colored_print(id, "^x04[ZE]^x01 Has Bajado a Nivel: ^x04%d^x01", g_level[id])
		ArrayGetString(sound_level_down, random_num(0, ArraySize(sound_level_down) - 1), sound, charsmax(sound))
		OnePlaySound(id, sound);
	}
	
	// Upload range
	while (g_level[id] >= cost_rangeup((g_rangelevel[id]+1)) && g_rangelevel[id] < g_max_range)
		g_rangelevel[id]++
	
	// Reduce range
	while (g_level[id] < cost_rangeup(g_rangelevel[id]) && g_rangelevel[id] > 1)
		g_rangelevel[id]--
	
	checkrango(id)
	checkrango2(id)
	
	// Range changed?
	if (g_rangelevel[id] > rangelevel)
	{
		ArrayGetString(g_range_names, g_rangelevel[id]-1, g_rangename[id], charsmax(g_rangename[]))
	}
	else if (g_rangelevel[id] < rangelevel)
	{
		ArrayGetString(g_range_names, g_rangelevel[id]-1, g_rangename[id], charsmax(g_rangename[]))
	}
}

// Fame Account
fame_account(id)
{
	// Alive?
	if (g_isalive[id])
	{
		zp_colored_print(id, "^x04[ZE]^x01 Solo puedes subir la fama estando muerto.")
		return;
	}
	
	// Max. fame or required level?
	if (g_fame[id] < g_max_fame && g_level[id] >= g_max_level)
		reset_vars(id, 0, 1) // fame up
	else
	{
		CONFIRM_MENU = 2
		show_menu_confirm(id)
	}
}

// Time player task
public check_time(taskid)
{
	if (g_playedtime[ID_TIME][3] > 59)
	{
		g_playedtime[ID_TIME][3] = 0
		g_playedtime[ID_TIME][2]++
	}
	else
		g_playedtime[ID_TIME][3]++
	
	if (g_playedtime[ID_TIME][2] > 59)
	{
		g_playedtime[ID_TIME][2] = 0
		g_playedtime[ID_TIME][1]++
		if (g_playedtime[ID_TIME][1] > 999999999)
		{
		g_playedtime[ID_TIME][1] = 999999999
		}
	}
}

public cache_cvars()
{
	g_cached_zombiesilent = get_pcvar_num(cvar_zombiesilent)
	g_cached_leapzombies = get_pcvar_num(cvar_leapzombies)
	g_cached_leapzombiescooldown = get_pcvar_float(cvar_leapzombiescooldown)
	g_cached_leapnemesis = get_pcvar_num(cvar_leapnemesis)
	g_cached_leapnemesiscooldown = get_pcvar_float(cvar_leapnemesiscooldown)
	g_cached_leapalien = get_pcvar_num(cvar_leapalien)
	g_cached_leapaliencooldown = get_pcvar_float(cvar_leapaliencooldown)
	g_cached_buytime = get_pcvar_float(cvar_buyzonetime)
}

load_customization_from_files()
{
	// Build customization file path
	new path[64]
	get_configsdir(path, charsmax(path))
	format(path, charsmax(path), "%s/%s", path, ZA_CUSTOMIZATION_FILE)
	
	// File not present
	if (!file_exists(path))
	{
		new error[100]
		formatex(error, charsmax(error), "Cannot load customization file %s!", path)
		set_fail_state(error)
		return;
	}
	
	// Set up some vars to hold parsing info
	new linedata[1024], key[64], value[960], section, teams
	
	// Open customization file for reading
	new file = fopen(path, "rt")
	
	while (file && !feof(file))
	{
		// Read one line at a time
		fgets(file, linedata, charsmax(linedata))
		
		// Replace newlines with a null character to prevent headaches
		replace(linedata, charsmax(linedata), "^n", "")
		
		// Blank line or comment
		if (!linedata[0] || linedata[0] == ';') continue;
		
		// New section starting
		if (linedata[0] == '[')
		{
			section++
			continue;
		}
		
		// Get key and value(s)
		strtok(linedata, key, charsmax(key), value, charsmax(value), '=')
		
		// Trim spaces
		trim(key)
		trim(value)
		
		switch (section)
		{
			case SECTION_ACCOUNT:
			{
				if (equal(key, "MIN ID CHARACTERS"))
					g_minidcharacters = str_to_num(value)
				else if (equal(key, "MIN PASS CHARACTERS"))
					g_minpasscharacters = str_to_num(value)
				else if (equal(key, "ATTEMPTS FOR LOGGING"))
					g_attemptslogging = str_to_num(value)
			}
			case SECTION_XP:
			{
				if (equal(key, "MAX LEVEL"))
					g_max_level = str_to_num(value)
				else if (equal(key, "MAX LEVEL RANGE"))
					g_max_range = str_to_num(value)
				else if (equal(key, "MAX FAME"))
					g_max_fame = str_to_num(value)
				else if (equal(key, "WPN CATEGORY B FAME"))
					g_fame_category[0] = str_to_num(value)
				else if (equal(key, "WPN CATEGORY E FAME"))
					g_fame_category[1] = str_to_num(value)
				else if (equal(key, "RANGE NAMES"))
				{
					// Parse unblock words items
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to range names array
						ArrayPushString(g_range_names, key)
					}
				}
			}
			case SECTION_COMBO:
			{
				if (equal(key, "LEVEL"))
				{
					// Parse weapon items
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to combo level array
						ArrayPushCell(g_combo_levels, str_to_num(key))
					}
				}
				else if (equal(key, "COLOR"))
				{
					// Parse unblock words items
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to combo color array
						ArrayPushString(g_combo_colors, key)
					}
				}
				else if (equal(key, "SAY"))
				{
					// Parse unblock words items
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to combo say array
						ArrayPushString(g_combo_says, key)
					}
				}
			}
			case SECTION_CHAT:
			{
				if (equal(key, "UNBLOCK WORDS"))
				{
					// Parse unblock words items
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to unblock words array
						ArrayPushString(g_unblock_words, key)
					}
				}
			}
			case SECTION_ADMINS:
			{
				if (equal(key, "NAMES"))
				{
					// Parse unblock words items
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to admin name array
						ArrayPushString(g_admin_names, key)
					}
				}
				else if (equal(key, "FLAGS"))
				{
					// Parse unblock words items
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to admin flags array
						ArrayPushCell(g_admin_flags, read_flags(key))
					}
				}
				else if (equal(key, "COSTS"))
				{
					// Parse unblock words items
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to admin cost array
						ArrayPushCell(g_admin_costs, str_to_num(key))
					}
				}
				else if (equal(key, "MONEY"))
					copy(g_admin_money, charsmax(g_admin_money), value)
			}
			case SECTION_ACCESS_FLAGS:
			{
				if (equal(key, "ENABLE/DISABLE MOD"))
					g_access_flag[ACCESS_ENABLE_MOD] = read_flags(value)
				else if (equal(key, "ADMIN MENU"))
					g_access_flag[ACCESS_ADMIN_MENU] = read_flags(value)
				else if (equal(key, "START MODES"))
					g_access_flag[ACCESS_START_MODES] = read_flags(value)
				else if (equal(key, "RESPAWN PLAYERS"))
					g_access_flag[ACCESS_RESPAWN_PLAYERS] = read_flags(value)
				else if (equal(key, "EXTRA ITEMS FREE"))
					g_access_flag[ACCESS_EXTRA_ITEMS_FREE] = read_flags(value)
				else if (equal(key, "CLASSES FREE"))
					g_access_flag[ACCESS_CLASSES_FREE] = read_flags(value)
				else if (equal(key, "WEAPONS FREE"))
					g_access_flag[ACCESS_WEAPONS_FREE] = read_flags(value)
				else if (equal(key, "ADMIN MODELS"))
					g_access_flag[ACCESS_ADMIN_MODELS] = read_flags(value)
			}
			case SECTION_PLAYER_MODELS:
			{
				if (equal(key, "NEMESIS"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_nemesis, key)
					}
				}
				else if (equal(key, "ALIEN"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_alien, key)
					}
				}
				else if (equal(key, "ASSASSIN"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_assassin, key)
					}
				}
				else if (equal(key, "DEMON"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_demon, key)
					}
				}
				else if (equal(key, "SURVIVOR"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_survivor, key)
					}
				}
				else if (equal(key, "WESKER"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_wesker, key)
					}
				}
				else if (equal(key, "SNIPER"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_sniper, key)
					}
				}
				else if (equal(key, "PREDATOR"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_predator, key)
					}
				}
				else if (equal(key, "ANGEL"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_angel, key)
					}
				}
				else if (equal(key, "MODEL1"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_player1, key)
					}
				}
				else if (equal(key, "MODEL2"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_player2, key)
					}
				}
				else if (equal(key, "MODEL3"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_player3, key)
					}
				}
				else if (equal(key, "MODEL4"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_player4, key)
					}
				}
				else if (equal(key, "MODEL5"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_player5, key)
					}
				}
				else if (equal(key, "MODEL6"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_player6, key)
					}
				}
				else if (equal(key, "MODEL7"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_player7, key)
					}
				}
				else if (equal(key, "MODEL8"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_player8, key)
					}
				}
				else if (equal(key, "MODEL9"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_player9, key)
					}
				}
				else if (equal(key, "MODEL10"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_player10, key)
					}
				}
				else if (equal(key, "MODEL11"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_player11, key)
					}
				}
				else if (equal(key, "MODEL12"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_player12, key)
					}
				}
				else if (equal(key, "ADMIN ZOMBIE"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_admin_zombie, key)
					}
				}
				else if (equal(key, "ADMIN HUMAN"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(model_admin_human, key)
					}
				}
				else if (equal(key, "FORCE CONSISTENCY"))
					g_force_consistency = str_to_num(value)
				else if (equal(key, "SAME MODELS HUMANS"))
					g_same_models_humans = str_to_num(value)
				else if (equal(key, "SAME MODELS ZOMBIES"))
					g_same_models_zombies = str_to_num(value)
				else if (g_same_models_humans && equal(key, "HUMAN"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(g_hclass_playermodel, key)
						
						// Precache model and retrieve its modelindex
						formatex(linedata, charsmax(linedata), "models/player/%s/%s.mdl", key, key)
						ArrayPushCell(g_hclass_modelindex, engfunc(EngFunc_PrecacheModel, linedata))
						if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, linedata)
						if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, linedata)
						// Precache modelT.mdl files too
						copy(linedata[strlen(linedata)-4], charsmax(linedata) - (strlen(linedata)-4), "T.mdl")
						if (file_exists(linedata)) engfunc(EngFunc_PrecacheModel, linedata)
					}
				}
				else if (g_same_models_zombies && equal(key, "ZOMBIE"))
				{
					// Parse models
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to models array
						ArrayPushString(g_zclass_playermodel, key)
						
						// Precache model and retrieve its modelindex
						formatex(linedata, charsmax(linedata), "models/player/%s/%s.mdl", key, key)
						ArrayPushCell(g_zclass_modelindex, engfunc(EngFunc_PrecacheModel, linedata))
						if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, linedata)
						if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, linedata)
						// Precache modelT.mdl files too
						copy(linedata[strlen(linedata)-4], charsmax(linedata) - (strlen(linedata)-4), "T.mdl")
						if (file_exists(linedata)) engfunc(EngFunc_PrecacheModel, linedata)
					}
				}
			}
			case SECTION_WEAPON_MODELS:
			{
				if (equal(key, "V_KNIFE HUMAN"))
					copy(model_vknife_human, charsmax(model_vknife_human), value)
				else if (equal(key, "V_KNIFE NEMESIS"))
					copy(model_vknife_nemesis, charsmax(model_vknife_nemesis), value)
				else if (equal(key, "V_KNIFE ALIEN"))
					copy(model_vknife_alien, charsmax(model_vknife_alien), value)
				else if (equal(key, "V_KNIFE ASSASSIN"))
					copy(model_vknife_assassin, charsmax(model_vknife_assassin), value)
				else if (equal(key, "V_KNIFE DEMON"))
					copy(model_vknife_demon, charsmax(model_vknife_demon), value)	
				else if (equal(key, "V_MP5 SURVIVOR"))
					copy(model_vm249_survivor, charsmax(model_vm249_survivor), value)
				else if (equal(key, "V_M4A1 WESKER"))
					copy(model_vdeagle_wesker, charsmax(model_vdeagle_wesker), value)
				else if (equal(key, "V_AWP SNIPER"))
					copy(model_vawp_sniper, charsmax(model_vawp_sniper), value)	
				else if (equal(key, "V_AWP FREEZER"))
					copy(model_vawp_freezer, charsmax(model_vawp_freezer), value)
				else if (equal(key, "V_AWP BURNER"))
					copy(model_vawp_burner, charsmax(model_vawp_burner), value)
				else if (equal(key, "V_AWP THUNDERER"))
					copy(model_vawp_thunderer, charsmax(model_vawp_thunderer), value)
				else if (equal(key, "V_INFECT"))
					copy(model_grenade_infect, charsmax(model_grenade_infect), value)
				else if (equal(key, "P_INFECT"))
					copy(model_pgrenade_infect, charsmax(model_pgrenade_infect), value)
				else if (equal(key, "W_INFECT"))
					copy(model_wgrenade_infect, charsmax(model_wgrenade_infect), value)	
				else if (equal(key, "V_FUEGO"))
					copy(model_grenade_fire, charsmax(model_grenade_fire), value)
				else if (equal(key, "V_FUEGO 2"))
					copy(model_grenade_fire2, charsmax(model_grenade_fire2), value)	
				else if (equal(key, "P_FUEGO"))
					copy(model_pgrenade_fire, charsmax(model_pgrenade_fire), value)
				else if (equal(key, "W_FUEGO"))
					copy(model_wgrenade_fire, charsmax(model_wgrenade_fire), value)	
				else if (equal(key, "V_HIELO"))
					copy(model_grenade_frost, charsmax(model_grenade_frost), value)	
				else if (equal(key, "V_HIELO 2"))
					copy(model_grenade_frost2, charsmax(model_grenade_frost2), value)
				else if (equal(key, "P_HIELO"))
					copy(model_pgrenade_frost, charsmax(model_pgrenade_frost), value)
				else if (equal(key, "W_HIELO"))
					copy(model_wgrenade_frost, charsmax(model_wgrenade_frost), value)	
				else if (equal(key, "V_GAS"))
					copy(model_grenade_gas, charsmax(model_grenade_gas), value)
				else if (equal(key, "P_GAS"))
					copy(model_pgrenade_gas, charsmax(model_pgrenade_gas), value)
				else if (equal(key, "W_GAS"))
					copy(model_wgrenade_gas, charsmax(model_wgrenade_gas), value)
				else if (equal(key, "V_ANTI"))
					copy(model_grenade_aurashield, charsmax(model_grenade_aurashield), value)
				else if (equal(key, "P_ANTI"))
					copy(model_pgrenade_aurashield, charsmax(model_pgrenade_aurashield), value)
				else if (equal(key, "W_ANTI"))
					copy(model_wgrenade_aurashield, charsmax(model_wgrenade_aurashield), value)	
				else if (equal(key, "V_KNIFE ADMIN HUMAN"))
					copy(model_vknife_admin_human, charsmax(model_vknife_admin_human), value)
				else if (equal(key, "V_KNIFE ADMIN ZOMBIE"))
					copy(model_vknife_admin_zombie, charsmax(model_vknife_admin_zombie), value)
			}
			case SECTION_GRENADE_SPRITES:
			{
				if (equal(key, "TRAIL"))
					copy(sprite_grenade_trail, charsmax(sprite_grenade_trail), value)
				else if (equal(key, "RING"))
					copy(sprite_grenade_ring, charsmax(sprite_grenade_ring), value)
				else if (equal(key, "FIRE"))
					copy(sprite_grenade_fire, charsmax(sprite_grenade_fire), value)
				else if (equal(key, "SMOKE"))
					copy(sprite_grenade_smoke, charsmax(sprite_grenade_smoke), value)
				else if (equal(key, "FROST"))
					copy(sprite_grenade_frost, charsmax(sprite_grenade_frost), value)
				else if (equal(key, "GLASS"))
					copy(sprite_grenade_glass, charsmax(sprite_grenade_glass), value)
			}
			case SECTION_OTHER_MODELS_SPRITES:
			{
				if (equal(key, "AURA SHIELD"))
					copy(model_aura_forzecamp, charsmax(model_aura_forzecamp), value)
				else if (equal(key, "CHEST"))
					copy(model_chest, charsmax(model_chest), value)
				else if (equal(key, "AWP THUNDER"))
					copy(sprite_awp_thunder, charsmax(sprite_awp_thunder), value)
			}
			case SECTION_SOUNDS:
			{
				if (equal(key, "WIN ZOMBIES"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(sound_win_zombies, key)
						ArrayPushCell(sound_win_zombies_ismp3, equal(key[strlen(key)-4], ".mp3") ? 1 : 0)
					}
				}
				else if (equal(key, "WIN HUMANS"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(sound_win_humans, key)
						ArrayPushCell(sound_win_humans_ismp3, equal(key[strlen(key)-4], ".mp3") ? 1 : 0)
					}
				}
				else if (equal(key, "WIN NO ONE"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(sound_win_no_one, key)
						ArrayPushCell(sound_win_no_one_ismp3, equal(key[strlen(key)-4], ".mp3") ? 1 : 0)
					}
				}
				else if (equal(key, "ZOMBIE INFECT"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(zombie_infect, key)
					}
				}
				else if (equal(key, "ZOMBIE PAIN"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(zombie_pain, key)
					}
				}
				else if (equal(key, "NEMESIS & ALIEN PAIN"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(nemali_pain, key)
					}
				}
				else if (equal(key, "ZOMBIE DIE"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(zombie_die, key)
					}
				}
				else if (equal(key, "ZOMBIE FALL"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(zombie_fall, key)
					}
				}
				else if (equal(key, "ZOMBIE MISS SLASH"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(zombie_miss_slash, key)
					}
				}
				else if (equal(key, "ZOMBIE MISS WALL"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(zombie_miss_wall, key)
					}
				}
				else if (equal(key, "ZOMBIE HIT NORMAL"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(zombie_hit_normal, key)
					}
				}
				else if (equal(key, "ZOMBIE HIT STAB"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(zombie_hit_stab, key)
					}
				}
				else if (equal(key, "ZOMBIE IDLE"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(zombie_idle, key)
					}
				}
				else if (equal(key, "ZOMBIE MADNESS"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(zombie_madness, key)
					}
				}
				else if (equal(key, "ROUND NEMESIS & ALIEN"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(sound_nemali, key)
					}
				}
				else if (equal(key, "ROUND SURVIVOR & WESKER"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(sound_survwesk, key)
					}
				}
				else if (equal(key, "ROUND MULTI & SWARM"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(sound_mulswa, key)
					}
				}
				else if (equal(key, "ROUND PLAGUE & SYNAPSIS"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(sound_plasyn, key)
					}
				}
				else if (equal(key, "ROUND ARMAGEDDON & CRYSIS"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(sound_armcry, key)
					}
				}
				else if (equal(key, "GRENADE INFECT EXPLODE"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(grenade_infect, key)
					}
				}
				else if (equal(key, "GRENADE INFECT PLAYER"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(grenade_infect_player, key)
					}
				}
				else if (equal(key, "GRENADE FIRE EXPLODE"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(grenade_fire, key)
					}
				}
				else if (equal(key, "GRENADE FIRE PLAYER"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(grenade_fire_player, key)
					}
				}
				else if (equal(key, "GRENADE FROST EXPLODE"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(grenade_frost, key)
					}
				}
				else if (equal(key, "GRENADE FROST PLAYER"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(grenade_frost_player, key)
					}
				}
				else if (equal(key, "GRENADE FROST BREAK"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(grenade_frost_break, key)
					}
				}
				else if (equal(key, "GRENADE EXPLODE"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(grenade_explosion, key)
					}
				}
				else if (equal(key, "GRENADE AURA SHIELD"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(grenade_aurashield, key)
					}
				}
				else if (equal(key, "ANTIDOTE"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(sound_antidote, key)
					}
				}
				else if (equal(key, "THUNDER"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(sound_thunder, key)
					}
				}
				else if (equal(key, "THUNDER AWP"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(sound_thunder_awp, key)
					}
				}
				else if (equal(key, "FINISH QUEST"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(sound_quest, key)
					}
				}
				else if (equal(key, "LEVEL UP"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(sound_level_up, key)
					}
				}
				else if (equal(key, "LEVEL DOWN"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(sound_level_down, key)
					}
				}
				else if (equal(key, "COUNTDOWN"))
				{
					// Parse sounds
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to sounds array
						ArrayPushString(sound_countdown, key)
					}
				}
			}
			case SECTION_BUY_MENU_WEAPONS:
			{
				if (equal(key, "PRIMARY"))
				{
					// Parse weapons
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to weapons array
						ArrayPushString(g_primary_items, key)
						ArrayPushCell(g_primary_weaponids, cs_weapon_name_to_id(key))
					}
				}
				else if (equal(key, "PRIMARY LEVEL"))
				{
					// Parse weapon items
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to weapons array
						ArrayPushCell(g_primary_levels, str_to_num(key))
					}
				}
				else if (equal(key, "SECONDARY"))
				{
					// Parse weapons
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to weapons array
						ArrayPushString(g_secondary_items, key)
						ArrayPushCell(g_secondary_weaponids, cs_weapon_name_to_id(key))
					}
				}
				else if (equal(key, "SECONDARY LEVEL"))
				{
					// Parse weapon items
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to weapons array
						ArrayPushCell(g_secondary_levels, str_to_num(key))
					}
				}
				else if (equal(key, "ADDITIONAL ITEMS"))
				{
					// Parse weapons
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to weapons array
						ArrayPushString(g_additional_items, key)
					}
				}
				else if (equal(key, "ADDITIONAL LEVEL"))
				{
					// Parse weapon items
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to weapons array
						ArrayPushCell(g_additional_levels, str_to_num(key))
					}
				}
				else if (equal(key, "SPECIAL NAMES"))
				{
					// Parse weapon items
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to weapons array
						ArrayPushString(g_special_names, key)
					}
				}
				else if (equal(key, "SPECIAL LEVEL"))
				{
					// Parse weapon items
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to weapons array
						ArrayPushCell(g_special_levels, str_to_num(key))
					}
				}
			}
			case SECTION_EXTRA_ITEMS_WEAPONS:
			{
				if (equal(key, "NAMES"))
				{
					// Parse weapon items
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to weapons array
						ArrayPushString(g_extraweapon_names, key)
					}
				}
				else if (equal(key, "ITEMS"))
				{
					// Parse weapon items
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to weapons array
						ArrayPushString(g_extraweapon_items, key)
					}
				}
				else if (equal(key, "LEVEL"))
				{
					// Parse weapon items
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to weapons array
						ArrayPushCell(g_extraweapon_levels, str_to_num(key))
					}
				}
				else if (equal(key, "COSTS"))
				{
					// Parse weapon items
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to weapons array
						ArrayPushCell(g_extraweapon_costs, str_to_num(key))
					}
				}
			}
			case SECTION_HARD_CODED_ITEMS:
			{
				if (equal(key, "NIGHT VISION LEVEL"))
					g_extra_levels2[EXTRA_NVISION] = str_to_num(value)
				else if (equal(key, "NIGHT VISION COST"))
					g_extra_costs2[EXTRA_NVISION] = str_to_num(value)
				else if (equal(key, "ANTIDOTE LEVEL"))
					g_extra_levels2[EXTRA_ANTIDOTE] = str_to_num(value)
				else if (equal(key, "ANTIDOTE COST"))
					g_extra_costs2[EXTRA_ANTIDOTE] = str_to_num(value)
				else if (equal(key, "ZOMBIE MADNESS LEVEL"))
					g_extra_levels2[EXTRA_MADNESS] = str_to_num(value)
				else if (equal(key, "ZOMBIE MADNESS COST"))
					g_extra_costs2[EXTRA_MADNESS] = str_to_num(value)
				else if (equal(key, "INFECTION BOMB LEVEL"))
					g_extra_levels2[EXTRA_INFBOMB] = str_to_num(value)
				else if (equal(key, "INFECTION BOMB COST"))
					g_extra_costs2[EXTRA_INFBOMB] = str_to_num(value)
				else if (equal(key, "ANTI-ICE LEVEL"))
					g_extra_levels2[EXTRA_ANTI_ICE] = str_to_num(value)
				else if (equal(key, "ANTI-ICE COST"))
					g_extra_costs2[EXTRA_ANTI_ICE] = str_to_num(value)
				else if (equal(key, "ANTI-FIRE LEVEL"))
					g_extra_levels2[EXTRA_ANTI_FIRE] = str_to_num(value)
				else if (equal(key, "ANTI-FIRE COST"))
					g_extra_costs2[EXTRA_ANTI_FIRE] = str_to_num(value)	
			}
			case SECTION_WEATHER_EFFECTS:
			{
				if (equal(key, "RAIN"))
					g_ambience_rain = str_to_num(value)
				else if (equal(key, "SNOW"))
					g_ambience_snow = str_to_num(value)
				else if (equal(key, "FOG"))
					g_ambience_fog = str_to_num(value)
				else if (equal(key, "FOG DENSITY"))
					copy(g_fog_density, charsmax(g_fog_density), value)
				else if (equal(key, "FOG COLOR"))
					copy(g_fog_color, charsmax(g_fog_color), value)
			}
			case SECTION_SKY:
			{
				if (equal(key, "ENABLE"))
					g_sky_enable = str_to_num(value)
				else if (equal(key, "SKY NAMES"))
				{
					// Parse sky names
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to skies array
						ArrayPushString(g_sky_names, key)
						
						// Preache custom sky files
						formatex(linedata, charsmax(linedata), "gfx/env/%sbk.tga", key)
						engfunc(EngFunc_PrecacheGeneric, linedata)
						formatex(linedata, charsmax(linedata), "gfx/env/%sdn.tga", key)
						engfunc(EngFunc_PrecacheGeneric, linedata)
						formatex(linedata, charsmax(linedata), "gfx/env/%sft.tga", key)
						engfunc(EngFunc_PrecacheGeneric, linedata)
						formatex(linedata, charsmax(linedata), "gfx/env/%slf.tga", key)
						engfunc(EngFunc_PrecacheGeneric, linedata)
						formatex(linedata, charsmax(linedata), "gfx/env/%srt.tga", key)
						engfunc(EngFunc_PrecacheGeneric, linedata)
						formatex(linedata, charsmax(linedata), "gfx/env/%sup.tga", key)
						engfunc(EngFunc_PrecacheGeneric, linedata)
					}
				}
			}
			case SECTION_LIGHTNING:
			{
				if (equal(key, "LIGHTS"))
				{
					// Parse lights
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to lightning array
						ArrayPushString(lights_thunder, key)
					}
				}
			}
			case SECTION_ZOMBIE_DECALS:
			{
				if (equal(key, "DECALS"))
				{
					// Parse decals
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to zombie decals array
						ArrayPushCell(zombie_decals, str_to_num(key))
					}
				}
			}
			case SECTION_KNOCKBACK:
			{
				// Format weapon entity name
				strtolower(key)
				format(key, charsmax(key), "weapon_%s", key)
				
				// Add value to knockback power array
				kb_weapon_power[cs_weapon_name_to_id(key)] = str_to_float(value)
			}
			case SECTION_OBJECTIVE_ENTS:
			{
				if (equal(key, "CLASSNAMES"))
				{
					// Parse classnames
					while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
					{
						// Trim spaces
						trim(key)
						trim(value)
						
						// Add to objective ents array
						ArrayPushString(g_objective_ents, key)
					}
				}
			}
		}
	}
	if (file) fclose(file)
	
	// Build human classes file path
	get_configsdir(path, charsmax(path))
	format(path, charsmax(path), "%s/%s", path, ZA_HUMANCLASSES_FILE)
	
	// Parse if present
	if (file_exists(path))
	{
		// Open human classes file for reading
		file = fopen(path, "rt")
		
		while (file && !feof(file))
		{
			// Read one line at a time
			fgets(file, linedata, charsmax(linedata))
			
			// Replace newlines with a null character to prevent headaches
			replace(linedata, charsmax(linedata), "^n", "")
			
			// Blank line or comment
			if (!linedata[0] || linedata[0] == ';') continue;
			
			// New class starting
			if (linedata[0] == '[')
			{
				// Remove first and last characters (braces)
				linedata[strlen(linedata) - 1] = 0
				copy(linedata, charsmax(linedata), linedata[1])
				
				// Store its real name for future reference
				ArrayPushString(g_hclass2_realname, linedata)
				continue;
			}
			
			// Get key and value(s)
			strtok(linedata, key, charsmax(key), value, charsmax(value), '=')
			
			// Trim spaces
			trim(key)
			trim(value)
			
			if (equal(key, "NAME"))
				ArrayPushString(g_hclass2_name, value)
			else if (equal(key, "INFO"))
				ArrayPushString(g_hclass2_info, value)
			else if (equal(key, "MODELS"))
			{
				// Set models start index
				ArrayPushCell(g_hclass2_modelsstart, ArraySize(g_hclass2_playermodel))
				
				// Parse class models
				while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
				{
					// Trim spaces
					trim(key)
					trim(value)
					
					// Add to class models array
					ArrayPushString(g_hclass2_playermodel, key)
					ArrayPushCell(g_hclass2_modelindex, -1)
				}
				
				// Set models end index
				ArrayPushCell(g_hclass2_modelsend, ArraySize(g_hclass2_playermodel))
			}
			else if (equal(key, "LEVEL"))
				ArrayPushCell(g_hclass2_lvl, str_to_num(value))
			else if (equal(key, "HEALTH"))
				ArrayPushCell(g_hclass2_hp, str_to_num(value))
			else if (equal(key, "SPEED"))
				ArrayPushCell(g_hclass2_spd, str_to_num(value))
			else if (equal(key, "GRAVITY"))
				ArrayPushCell(g_hclass2_grav, str_to_float(value))
		}
		if (file) fclose(file)
	}
	
	// Build zombie classes file path
	get_configsdir(path, charsmax(path))
	format(path, charsmax(path), "%s/%s", path, ZA_ZOMBIECLASSES_FILE)
	
	// Parse if present
	if (file_exists(path))
	{
		// Open zombie classes file for reading
		file = fopen(path, "rt")
		
		while (file && !feof(file))
		{
			// Read one line at a time
			fgets(file, linedata, charsmax(linedata))
			
			// Replace newlines with a null character to prevent headaches
			replace(linedata, charsmax(linedata), "^n", "")
			
			// Blank line or comment
			if (!linedata[0] || linedata[0] == ';') continue;
			
			// New class starting
			if (linedata[0] == '[')
			{
				// Remove first and last characters (braces)
				linedata[strlen(linedata) - 1] = 0
				copy(linedata, charsmax(linedata), linedata[1])
				
				// Store its real name for future reference
				ArrayPushString(g_zclass2_realname, linedata)
				continue;
			}
			
			// Get key and value(s)
			strtok(linedata, key, charsmax(key), value, charsmax(value), '=')
			
			// Trim spaces
			trim(key)
			trim(value)
			
			if (equal(key, "NAME"))
				ArrayPushString(g_zclass2_name, value)
			else if (equal(key, "INFO"))
				ArrayPushString(g_zclass2_info, value)
			else if (equal(key, "MODELS"))
			{
				// Set models start index
				ArrayPushCell(g_zclass2_modelsstart, ArraySize(g_zclass2_playermodel))
				
				// Parse class models
				while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
				{
					// Trim spaces
					trim(key)
					trim(value)
					
					// Add to class models array
					ArrayPushString(g_zclass2_playermodel, key)
					ArrayPushCell(g_zclass2_modelindex, -1)
				}
				
				// Set models end index
				ArrayPushCell(g_zclass2_modelsend, ArraySize(g_zclass2_playermodel))
			}
			else if (equal(key, "CLAWMODEL"))
				ArrayPushString(g_zclass2_clawmodel, value)
			else if (equal(key, "LEVEL"))
				ArrayPushCell(g_zclass2_lvl, str_to_num(value))
			else if (equal(key, "HEALTH"))
				ArrayPushCell(g_zclass2_hp, str_to_num(value))
			else if (equal(key, "SPEED"))
				ArrayPushCell(g_zclass2_spd, str_to_num(value))
			else if (equal(key, "GRAVITY"))
				ArrayPushCell(g_zclass2_grav, str_to_float(value))
			else if (equal(key, "KNOCKBACK"))
				ArrayPushCell(g_zclass2_kb, str_to_float(value))
		}
		if (file) fclose(file)
	}
	
	// Build extra items file path
	get_configsdir(path, charsmax(path))
	format(path, charsmax(path), "%s/%s", path, ZA_EXTRAITEMS_FILE)
	
	// Parse if present
	if (file_exists(path))
	{
		// Open extra items file for reading
		file = fopen(path, "rt")
		
		while (file && !feof(file))
		{
			// Read one line at a time
			fgets(file, linedata, charsmax(linedata))
			
			// Replace newlines with a null character to prevent headaches
			replace(linedata, charsmax(linedata), "^n", "")
			
			// Blank line or comment
			if (!linedata[0] || linedata[0] == ';') continue;
			
			// New item starting
			if (linedata[0] == '[')
			{
				// Remove first and last characters (braces)
				linedata[strlen(linedata) - 1] = 0
				copy(linedata, charsmax(linedata), linedata[1])
				
				// Store its real name for future reference
				ArrayPushString(g_extraitem2_realname, linedata)
				continue;
			}
			
			// Get key and value(s)
			strtok(linedata, key, charsmax(key), value, charsmax(value), '=')
			
			// Trim spaces
			trim(key)
			trim(value)
			
			if (equal(key, "NAME"))
				ArrayPushString(g_extraitem2_name, value)
			else if (equal(key, "LEVEL"))
				ArrayPushCell(g_extraitem2_lvl, str_to_num(value))
			else if (equal(key, "COST"))
				ArrayPushCell(g_extraitem2_cost, str_to_num(value))
			else if (equal(key, "TEAMS"))
			{
				// Clear teams bitsum
				teams = 0
				
				// Parse teams
				while (value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ','))
				{
					// Trim spaces
					trim(key)
					trim(value)
					
					if (equal(key, ZA_TEAM_NAMES[ZP_TEAM_ZOMBIE]))
						teams |= ZP_TEAM_ZOMBIE
					else if (equal(key, ZA_TEAM_NAMES[ZP_TEAM_HUMAN]))
						teams |= ZP_TEAM_HUMAN
					else if (equal(key, ZA_TEAM_NAMES[ZP_TEAM_NEMESIS]))
						teams |= ZP_TEAM_NEMESIS
					else if (equal(key, ZA_TEAM_NAMES[ZA_TEAM_ALIEN]))
						teams |= ZA_TEAM_ALIEN	
					else if (equal(key, ZA_TEAM_NAMES[ZP_TEAM_SURVIVOR]))
						teams |= ZP_TEAM_SURVIVOR
					else if (equal(key, ZA_TEAM_NAMES[ZA_TEAM_WESKER]))
						teams |= ZA_TEAM_WESKER
				}
				
				// Add to teams array
				ArrayPushCell(g_extraitem2_team, teams)
			}
		}
		if (file) fclose(file)
	}
}

save_customization()
{
	new i, k, buffer[512]
	
	// Build human classes file path
	new path_human[64]
	get_configsdir(path_human, charsmax(path_human))
	format(path_human, charsmax(path_human), "%s/%s", path_human, ZA_HUMANCLASSES_FILE)
	
	// Open human classes file for appending data
	new file_human = fopen(path_human, "at"), size_human = ArraySize(g_hclass_name)
	
	// Add any new human classes data at the end if needed
	for (i = 0; i < size_human; i++)
	{
		if (ArrayGetCell(g_hclass_new, i))
		{
			// Add real name
			ArrayGetString(g_hclass_name, i, buffer, charsmax(buffer))
			format(buffer, charsmax(buffer), "^n[%s]", buffer)
			fputs(file_human, buffer)
			
			// Add caption
			ArrayGetString(g_hclass_name, i, buffer, charsmax(buffer))
			format(buffer, charsmax(buffer), "^nNAME = %s", buffer)
			fputs(file_human, buffer)
			
			// Add info
			ArrayGetString(g_hclass_info, i, buffer, charsmax(buffer))
			format(buffer, charsmax(buffer), "^nINFO = %s", buffer)
			fputs(file_human, buffer)
			
			// Add models
			for (k = ArrayGetCell(g_hclass_modelsstart, i); k < ArrayGetCell(g_hclass_modelsend, i); k++)
			{
				if (k == ArrayGetCell(g_hclass_modelsstart, i))
				{
					// First model, overwrite buffer
					ArrayGetString(g_hclass_playermodel, k, buffer, charsmax(buffer))
				}
				else
				{
					// Successive models, append to buffer
					ArrayGetString(g_hclass_playermodel, k, path_human, charsmax(path_human))
					format(buffer, charsmax(buffer), "%s , %s", buffer, path_human)
				}
			}
			format(buffer, charsmax(buffer), "^nMODELS = %s", buffer)
			fputs(file_human, buffer)
			
			// Add level
			formatex(buffer, charsmax(buffer), "^nLEVEL = %d", ArrayGetCell(g_hclass_lvl, i))
			fputs(file_human, buffer)
			
			// Add health
			formatex(buffer, charsmax(buffer), "^nHEALTH = %d", ArrayGetCell(g_hclass_hp, i))
			fputs(file_human, buffer)
			
			// Add speed
			formatex(buffer, charsmax(buffer), "^nSPEED = %d", ArrayGetCell(g_hclass_spd, i))
			fputs(file_human, buffer)
			
			// Add gravity
			formatex(buffer, charsmax(buffer), "^nGRAVITY = %.2f^n", Float:ArrayGetCell(g_hclass_grav, i))
			fputs(file_human, buffer)
		}
	}
	fclose(file_human)
	
	// Build zombie classes file path
	new path_zombie[64]
	get_configsdir(path_zombie, charsmax(path_zombie))
	format(path_zombie, charsmax(path_zombie), "%s/%s", path_zombie, ZA_ZOMBIECLASSES_FILE)
	
	// Open zombie classes file for appending data
	new file_zombie = fopen(path_zombie, "at"), size_zombie = ArraySize(g_zclass_name)
	
	// Add any new zombie classes data at the end if needed
	for (i = 0; i < size_zombie; i++)
	{
		if (ArrayGetCell(g_zclass_new, i))
		{
			// Add real name
			ArrayGetString(g_zclass_name, i, buffer, charsmax(buffer))
			format(buffer, charsmax(buffer), "^n[%s]", buffer)
			fputs(file_zombie, buffer)
			
			// Add caption
			ArrayGetString(g_zclass_name, i, buffer, charsmax(buffer))
			format(buffer, charsmax(buffer), "^nNAME = %s", buffer)
			fputs(file_zombie, buffer)
			
			// Add info
			ArrayGetString(g_zclass_info, i, buffer, charsmax(buffer))
			format(buffer, charsmax(buffer), "^nINFO = %s", buffer)
			fputs(file_zombie, buffer)
			
			// Add models
			for (k = ArrayGetCell(g_zclass_modelsstart, i); k < ArrayGetCell(g_zclass_modelsend, i); k++)
			{
				if (k == ArrayGetCell(g_zclass_modelsstart, i))
				{
					// First model, overwrite buffer
					ArrayGetString(g_zclass_playermodel, k, buffer, charsmax(buffer))
				}
				else
				{
					// Successive models, append to buffer
					ArrayGetString(g_zclass_playermodel, k, path_zombie, charsmax(path_zombie))
					format(buffer, charsmax(buffer), "%s , %s", buffer, path_zombie)
				}
			}
			format(buffer, charsmax(buffer), "^nMODELS = %s", buffer)
			fputs(file_zombie, buffer)
			
			// Add clawmodel
			ArrayGetString(g_zclass_clawmodel, i, buffer, charsmax(buffer))
			format(buffer, charsmax(buffer), "^nCLAWMODEL = %s", buffer)
			fputs(file_zombie, buffer)
			
			// Add level
			formatex(buffer, charsmax(buffer), "^nLEVEL = %d", ArrayGetCell(g_zclass_lvl, i))
			fputs(file_zombie, buffer)
			
			// Add health
			formatex(buffer, charsmax(buffer), "^nHEALTH = %d", ArrayGetCell(g_zclass_hp, i))
			fputs(file_zombie, buffer)
			
			// Add speed
			formatex(buffer, charsmax(buffer), "^nSPEED = %d", ArrayGetCell(g_zclass_spd, i))
			fputs(file_zombie, buffer)
			
			// Add gravity
			formatex(buffer, charsmax(buffer), "^nGRAVITY = %.2f", Float:ArrayGetCell(g_zclass_grav, i))
			fputs(file_zombie, buffer)
			
			// Add knockback
			formatex(buffer, charsmax(buffer), "^nKNOCKBACK = %.2f^n", Float:ArrayGetCell(g_zclass_kb, i))
			fputs(file_zombie, buffer)
		}
	}
	fclose(file_zombie)
	
	// Build extra items file path
	new path[64]
	get_configsdir(path, charsmax(path))
	format(path, charsmax(path), "%s/%s", path, ZA_EXTRAITEMS_FILE)
	
	// Open extra items file for appending data
	new file = fopen(path, "at"), size = ArraySize(g_extraitem_name)
	
	// Add any new extra items data at the end if needed
	for (i = EXTRAS_CUSTOM_STARTID; i < size; i++)
	{
		if (ArrayGetCell(g_extraitem_new, i))
		{
			// Add real name
			ArrayGetString(g_extraitem_name, i, buffer, charsmax(buffer))
			format(buffer, charsmax(buffer), "^n[%s]", buffer)
			fputs(file, buffer)
			
			// Add caption
			ArrayGetString(g_extraitem_name, i, buffer, charsmax(buffer))
			format(buffer, charsmax(buffer), "^nNAME = %s", buffer)
			fputs(file, buffer)
			
			// Add level
			formatex(buffer, charsmax(buffer), "^nLEVEL = %d", ArrayGetCell(g_extraitem_lvl, i))
			fputs(file, buffer)
			
			// Add cost
			formatex(buffer, charsmax(buffer), "^nCOST = %d", ArrayGetCell(g_extraitem_cost, i))
			fputs(file, buffer)
			
			// Add team
			formatex(buffer, charsmax(buffer), "^nTEAMS = %s^n", ZA_TEAM_NAMES[ArrayGetCell(g_extraitem_team, i)])
			fputs(file, buffer)
		}
	}
	fclose(file)
	
	// Free arrays containing class/item overrides
	ArrayDestroy(g_hclass2_realname)
	ArrayDestroy(g_hclass2_name)
	ArrayDestroy(g_hclass2_info)
	ArrayDestroy(g_hclass2_modelsstart)
	ArrayDestroy(g_hclass2_modelsend)
	ArrayDestroy(g_hclass2_playermodel)
	ArrayDestroy(g_hclass2_modelindex)
	ArrayDestroy(g_hclass2_lvl)
	ArrayDestroy(g_hclass2_hp)
	ArrayDestroy(g_hclass2_spd)
	ArrayDestroy(g_hclass2_grav)
	ArrayDestroy(g_hclass_new)
	ArrayDestroy(g_zclass2_realname)
	ArrayDestroy(g_zclass2_name)
	ArrayDestroy(g_zclass2_info)
	ArrayDestroy(g_zclass2_modelsstart)
	ArrayDestroy(g_zclass2_modelsend)
	ArrayDestroy(g_zclass2_playermodel)
	ArrayDestroy(g_zclass2_modelindex)
	ArrayDestroy(g_zclass2_clawmodel)
	ArrayDestroy(g_zclass2_lvl)
	ArrayDestroy(g_zclass2_hp)
	ArrayDestroy(g_zclass2_spd)
	ArrayDestroy(g_zclass2_grav)
	ArrayDestroy(g_zclass2_kb)
	ArrayDestroy(g_zclass_new)
	ArrayDestroy(g_extraitem2_realname)
	ArrayDestroy(g_extraitem2_name)
	ArrayDestroy(g_extraitem2_lvl)
	ArrayDestroy(g_extraitem2_cost)
	ArrayDestroy(g_extraitem2_team)
	ArrayDestroy(g_extraitem_new)
}

// Disable minmodels task
public disable_minmodels(id)
{
	if (!g_isconnected[id]) return;
	client_cmd(id, "cl_minmodels 0")
}

// Bots automatically buy extra items
public bot_buy_extras(taskid)
{
	// Survivor/Wesker/Nemesis/Alien bots have nothing to buy by default
	if (!g_isalive[ID_SPAWN] || (g_class[ID_SPAWN] == SURVIVOR || g_class[ID_SPAWN] == WESKER || g_class[ID_SPAWN] == SNIPER || g_class[ID_SPAWN] == PREDATOR || g_class[ID_SPAWN] == ANGEL || g_class[ID_SPAWN] >= NEMESIS))
		return;
	
	if (g_class[ID_SPAWN] < ZOMBIE) // human bots
	{
		// Attempt to buy Night Vision
		buy_extra_item(ID_SPAWN, EXTRA_NVISION)
		
		// Attempt to buy a weapon
		buy_extra_item(ID_SPAWN, random_num(EXTRA_WEAPONS_STARTID, EXTRAS_CUSTOM_STARTID-1))
	}
	else // zombie bots
	{
		// Attempt to buy an Antidote
		buy_extra_item(ID_SPAWN, EXTRA_ANTIDOTE)
	}
}

// Refill BP Ammo Task
public refill_bpammo(const args[], id)
{
	// Player died or turned into a zombie
	if (!g_isalive[id] || g_class[id] >= ZOMBIE) return;
	
	set_msg_block(g_msgAmmoPickup, BLOCK_ONCE)
	ExecuteHamB(Ham_GiveAmmo, id, MAXBPAMMO[REFILL_WEAPONID], AMMOTYPE[REFILL_WEAPONID], MAXBPAMMO[REFILL_WEAPONID])
}

// Balance Teams Task
balance_teams()
{
	// Get amount of users playing
	static iPlayersnum; iPlayersnum = fnGetPlaying()
	
	// No players, don't bother
	if (iPlayersnum < 1) return;
	
	// Split players evenly
	static iTerrors, iMaxTerrors, id, team[33]
	iMaxTerrors = iPlayersnum/2
	iTerrors = 0
	
	// First, set everyone to CT
	for (id = 1; id <= g_maxplayers; id++)
	{
		// Skip if not connected
		if (!g_isconnected[id]) continue;
		
		team[id] = fm_cs_get_user_team(id)
		
		// Skip if not playing
		if (team[id] == FM_CS_TEAM_SPECTATOR || team[id] == FM_CS_TEAM_UNASSIGNED)
			continue;
		
		// Set team
		remove_task(id+TASK_TEAM)
		fm_cs_set_user_team(id, FM_CS_TEAM_CT)
		team[id] = FM_CS_TEAM_CT
	}
	
	// Then randomly set half of the players to Terrorists
	while (iTerrors < iMaxTerrors)
	{
		// Keep looping through all players
		if (++id > g_maxplayers) id = 1
		
		// Skip if not connected
		if (!g_isconnected[id]) continue;
		
		// Skip if not playing or already a Terrorist
		if (team[id] != FM_CS_TEAM_CT) continue;
		
		// Random chance
		if (random_num(0, 1))
		{
			fm_cs_set_user_team(id, FM_CS_TEAM_T)
			team[id] = FM_CS_TEAM_T
			iTerrors++
		}
	}
}

// Welcome Message Task
public welcome_msg()
{
	// Show mod info
	zp_colored_print(0, "^x04------------------------------------------------------------------------------------------")
	zp_colored_print(0, "^x04[ZE]^x01 Zombie Escape ^x04%s^x01 Editado por ^x04%s^x01", PLUGIN_VERSION, PLUGIN_COAUTHOR)
	zp_colored_print(0, "^x04[ZE]^x01 Hora Vicio^x04 %s^x01 - Mas Informacion:^x04 /hv^x01.", g_happytime ? "ON" : "OFF")
	zp_colored_print(0, "^x04[ZE]^x01 Comandos utiles:^x04 /camera^x01 ,^x04 /donar^x01 ,^x04 /modo^x01 ,^x04 /mute^x01 ,^x04 /reglas")
	zp_colored_print(0, "^x04------------------------------------------------------------------------------------------")
	
	for( new i = 1; i <= g_maxplayers; ++i )
         {
	         client_cmd(i,"cl_forwardspeed 9999")
	         client_cmd(i,"cl_backspeed 9999")
	         client_cmd(i,"cl_sidespeed 9999")
	}
	
	// Show T-virus HUD notice
	set_hudmessage(0, 125, 200, HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 2.0, 1.0, -1)
	ShowSyncHudMsg(0, g_MsgSync, "Necesitamos Escapar de la Plaga")
}

// Best player online
public best_player()
{
	// Get logged players count
	static iPlayersnum; iPlayersnum = fnGetLogged()
	
	// Not enough players
	if (iPlayersnum < 1) return;
	
	// Get random player logged
	static best; best = fnGetRandomLogged(random_num(1, iPlayersnum))
	
	for (new i = 1; i < g_maxplayers; i++)
	{
		// Not connected
		if (!g_isconnected[i]) continue;
		
		// Not character selected
		if (g_status[i] < ONLINE_SPEC) continue;
		
		// Change best player
		if (g_fame[i] > g_fame[best])
			best = i
		else if (g_fame[i] == g_fame[best] && g_experience[i] > g_experience[best])
			best = i
	}
	
	// Show print
	
	set_hudmessage(255, 255, 0, -1.0, 0.4, 1, 0.01, 7.0, 0.01, 0.01, 4)
	show_hudmessage(best,"| - El Mejor Jugador de la Ronda - |^n[Nick: %s]^n[Nivel: %d]^n[Experiencia: %d]^n[Rango: %s]", g_playername[best], g_level[best], g_experience[best], RANGOS[g_rango[best]])
}

// Respawn Player Task (deathmatch)
public respawn_player_task(taskid)
{
	// Already alive or round ended
	if (g_isalive[ID_SPAWN] || g_endround) return;
	
	// Get player's team
	static team; team = fm_cs_get_user_team(ID_SPAWN)
	
	// Player moved to spectators
	if (team == FM_CS_TEAM_SPECTATOR || team == FM_CS_TEAM_UNASSIGNED)
		return;
	
	// Respawn player automatically if allowed on current round
	switch (g_currentmode)
	{
		case MODE_INFECTION, MODE_MULTI: if (!get_pcvar_num(cvar_allowrespawninfection)) return;
		case MODE_SWARM: if (!get_pcvar_num(cvar_allowrespawnswarm)) return;
		case MODE_NEMESIS, MODE_ALIEN, MODE_ASSASSIN, MODE_DEMON: if (!get_pcvar_num(cvar_allowrespawnnemali)) return;
		case MODE_SURVIVOR, MODE_WESKER, MODE_SNIPER, MODE_PREDATOR, MODE_ANGEL: if (!get_pcvar_num(cvar_allowrespawnsurvwesk)) return;
		case MODE_PLAGUE, MODE_COOPERATIVE, MODE_SYNAPSIS, MODE_L4D: if (!get_pcvar_num(cvar_allowrespawnplasyn)) return;
		case MODE_ARMAGEDDON, MODE_CRYSIS, MODE_AVS, MODE_APOCALYPSE, MODE_NIGHTMARE, MODE_ULTIMATE: if (!get_pcvar_num(cvar_allowrespawnarmcry)) return;
	}
	
	// Respawn if only the last human is left? (ignore this setting on survivor/wesker rounds)
	if ((g_currentmode != MODE_SURVIVOR || g_currentmode != MODE_WESKER || g_currentmode != MODE_SNIPER || g_currentmode != MODE_PREDATOR || g_currentmode != MODE_ANGEL) && !get_pcvar_num(cvar_respawnafterlast) && fnGetHumans() <= 1)
		return;
		
	// Respawn as zombie?
	if (get_pcvar_num(cvar_deathmatch) == 2 || (get_pcvar_num(cvar_deathmatch) == 3 && random_num(0, 1)) || (get_pcvar_num(cvar_deathmatch) == 4 && fnGetZombies() < fnGetAlive()/2))
		g_respawn_as_zombie[ID_SPAWN] = true
		
	// Override respawn as zombie setting on nemesis, alien, survivor and wesker rounds
	if ((g_currentmode == MODE_SURVIVOR || g_currentmode == MODE_WESKER || g_currentmode == MODE_SNIPER || g_currentmode == MODE_PREDATOR || g_currentmode == MODE_ANGEL)) g_respawn_as_zombie[ID_SPAWN] = true
	else if ((g_currentmode == MODE_NEMESIS || g_currentmode == MODE_ALIEN || g_currentmode == MODE_ASSASSIN || g_currentmode == MODE_DEMON)) g_respawn_as_zombie[ID_SPAWN] = false
		
	respawn_player_manually(ID_SPAWN)
}

// Respawn Player Check Task (if killed by worldspawn)
public respawn_player_check_task(taskid)
{
	// Successfully spawned or round ended
	if (g_isalive[ID_SPAWN] || g_endround) return;
	
	// Get player's team
	static team; team = fm_cs_get_user_team(ID_SPAWN)
	
	// Player moved to spectators
	if (team == FM_CS_TEAM_SPECTATOR || team == FM_CS_TEAM_UNASSIGNED)
		return;
	
	// If player was being spawned as a zombie, set the flag again
	if (g_class[ID_SPAWN] >= ZOMBIE) g_respawn_as_zombie[ID_SPAWN] = true
	else g_respawn_as_zombie[ID_SPAWN] = false
	
	respawn_player_manually(ID_SPAWN)
}

// Respawn Player Manually (called after respawn checks are done)
respawn_player_manually(id)
{
	// Set proper team before respawning, so that the TeamInfo message that's sent doesn't confuse PODBots
	if (g_respawn_as_zombie[id])
		fm_cs_set_user_team(id, FM_CS_TEAM_T)
	else
		fm_cs_set_user_team(id, FM_CS_TEAM_CT)
	
	// Respawning a player has never been so easy
	ExecuteHamB(Ham_CS_RoundRespawn, id)
}

// Check Round Task -check that we still have both zombies and humans on a round-
check_round(leaving_player)
{
	// Round ended or make_a_zombie task still active
	if (g_endround || task_exists(TASK_MAKEZOMBIE)) return;
	
	// Get alive players count
	static iPlayersnum, id
	iPlayersnum = fnGetAlive()
	
	// Last alive player, don't bother
	if (iPlayersnum < 2) return;
	
	// Last zombie disconnecting
	if (g_class[leaving_player] >= ZOMBIE && fnGetZombies() == 1)
	{
		// Only one CT left, don't bother
		if (fnGetHumans() == 1 && fnGetCTs() == 1) return;
		
		// Pick a random one to take his place
		while ((id = fnGetRandomAlive(random_num(1, iPlayersnum))) == leaving_player ) { /* keep looping */ }
		
		// Show last zombie left notice
		zp_colored_print(0, "^x04[ZE]^x01 El Ultimo zombie se ha ido, %s es el nuevo zombie!", g_playername[id])
		
		// Set player leaving flag
		g_lastplayerleaving = true
		
		// Turn into a Nemesis, Alien or just a zombie?
		if (g_class[leaving_player] == NEMESIS)
		{
			zombieme(id, 0, 1, 0, 0)
			
			// Nemesis health task
			remove_task(leaving_player+TASK_HEALTH)
			if (get_pcvar_num(cvar_hudmarker)) set_task(1.0, "health_task", id+TASK_HEALTH, _, _, "b")
		}
		else if (g_class[leaving_player] == ALIEN)
		{
			zombieme(id, 0, 2, 0, 0)
			
			// Alien health task
			remove_task(leaving_player+TASK_HEALTH)
			if (get_pcvar_num(cvar_hudmarker)) set_task(1.0, "health_task", id+TASK_HEALTH, _, _, "b")
		}
		else if (g_class[leaving_player] == ASSASSIN)
		{
			zombieme(id, 0, 3, 0, 0)
			
			// Alien health task
			remove_task(leaving_player+TASK_HEALTH)
			if (get_pcvar_num(cvar_hudmarker)) set_task(1.0, "health_task", id+TASK_HEALTH, _, _, "b")
		}
		else if (g_class[leaving_player] == DEMON)
		{
			zombieme(id, 0, 4, 0, 0)
			
			// Alien health task
			remove_task(leaving_player+TASK_HEALTH)
			if (get_pcvar_num(cvar_hudmarker)) set_task(1.0, "health_task", id+TASK_HEALTH, _, _, "b")
		}
		else
			zombieme(id, 0, 0, 0, 0)
		
		// Remove player leaving flag
		g_lastplayerleaving = false
		
		// If Nemesis, set chosen player's health to that of the one who's leaving
		if (get_pcvar_num(cvar_keephealthondisconnect) && g_class[leaving_player] >= NEMESIS)
			set_user_health(id, get_user_health(leaving_player))
	}
	
	// Last human disconnecting
	else if (g_class[leaving_player] < ZOMBIE && fnGetHumans() == 1)
	{
		// Only one T left, don't bother
		if (fnGetZombies() == 1 && fnGetTs() == 1) return;
		
		// Pick a random one to take his place
		while ((id = fnGetRandomAlive(random_num(1, iPlayersnum))) == leaving_player ) { /* keep looping */ }
		
		// Show last human left notice
		zp_colored_print(0, "^x04[ZE]^x01 El Ultimo humano se ha ido, %s es el nuevo humano!", g_playername[id])
		
		// Set player leaving flag
		g_lastplayerleaving = true
		
		// Turn into a Survivor, Wesker or just a human?
		if (g_class[leaving_player] == SURVIVOR)
		{
			humanme(id, 1, 0)
			
			// Survivor health task
			remove_task(leaving_player+TASK_HEALTH)
			if (get_pcvar_num(cvar_hudmarker)) set_task(1.0, "health_task", id+TASK_HEALTH, _, _, "b")
		}
		else if (g_class[leaving_player] == WESKER)
		{
			humanme(id, 2, 0)
			
			// Wesker health task
			remove_task(leaving_player+TASK_HEALTH)
			if (get_pcvar_num(cvar_hudmarker)) set_task(1.0, "health_task", id+TASK_HEALTH, _, _, "b")
		}
		else if (g_class[leaving_player] == SNIPER)
		{
			humanme(id, 3, 0)
			
			// Wesker health task
			remove_task(leaving_player+TASK_HEALTH)
			if (get_pcvar_num(cvar_hudmarker)) set_task(1.0, "health_task", id+TASK_HEALTH, _, _, "b")
		}
		else if (g_class[leaving_player] == PREDATOR)
		{
			humanme(id, 4, 0)
			
			// Wesker health task
			remove_task(leaving_player+TASK_HEALTH)
			if (get_pcvar_num(cvar_hudmarker)) set_task(1.0, "health_task", id+TASK_HEALTH, _, _, "b")
		}
		else if (g_class[leaving_player] == ANGEL)
		{
			humanme(id, 5, 0)
			
			// Wesker health task
			remove_task(leaving_player+TASK_HEALTH)
			if (get_pcvar_num(cvar_hudmarker)) set_task(1.0, "health_task", id+TASK_HEALTH, _, _, "b")
		}
		else
			humanme(id, 0, 0)
		
		// Remove player leaving flag
		g_lastplayerleaving = false
		
		// If Survivor or Wesker, set chosen player's health to that of the one who's leaving
		if (get_pcvar_num(cvar_keephealthondisconnect) && (g_class[leaving_player] == SURVIVOR || g_class[leaving_player] == WESKER || g_class[leaving_player] == SNIPER || g_class[leaving_player] == PREDATOR || g_class[leaving_player] == ANGEL))
			set_user_health(id, get_user_health(leaving_player))
	}
}

// Happy Hour
check_happyhour()
{
	// Get time
	static szHour[3]
	get_time("%H", szHour, charsmax(szHour))
		
	// Enable or disable
	if (get_pcvar_num(cvar_hhend) > str_to_num(szHour) >= get_pcvar_num(cvar_hhstart))
		g_happytime = true
	else
		g_happytime = false
}

// Lighting Effects Task
public lighting_effects()
{
	// Cache some CVAR values at every 5 secs
	cache_cvars()
	
	// Get lighting style
	static lighting[2]
	get_pcvar_string(cvar_lighting, lighting, charsmax(lighting))
	strtolower(lighting)
	
	// Lighting disabled? ["0"]
	if (lighting[0] == '0') return;
	
	// Darkest light settings?
	if (lighting[0] >= 'a' && lighting[0] <= 'd')
	{
		static thunderclap_in_progress, Float:thunder
		thunderclap_in_progress = task_exists(TASK_THUNDER)
		thunder = get_pcvar_float(cvar_thunder)
		
		// Set thunderclap tasks if not existant
		if (thunder > 0.0 && !task_exists(TASK_THUNDER_PRE) && !thunderclap_in_progress)
		{
			g_lights_i = 0
			ArrayGetString(lights_thunder, random_num(0, ArraySize(lights_thunder) - 1), g_lights_cycle, charsmax(g_lights_cycle))
			g_lights_cycle_len = strlen(g_lights_cycle)
			set_task(thunder, "thunderclap", TASK_THUNDER_PRE)
		}
		
		// Set lighting only when no thunderclaps are going on
		if (!thunderclap_in_progress) engfunc(EngFunc_LightStyle, 0, lighting)
	}
	else
	{
		// Remove thunderclap tasks
		remove_task(TASK_THUNDER_PRE)
		remove_task(TASK_THUNDER)
		
		// Set lighting
		engfunc(EngFunc_LightStyle, 0, lighting)
		
		engfunc(EngFunc_LightStyle, 0, g_currentmode == MODE_ASSASSIN ? "a" : lighting)
	}
}

// Thunderclap task
public thunderclap()
{
	// Play thunder sound
	if (g_lights_i == 0)
	{
		static sound[64]
		ArrayGetString(sound_thunder, random_num(0, ArraySize(sound_thunder) - 1), sound, charsmax(sound))
		PlaySound(sound)
	}
	
	// Set lighting
	static light[2]
	light[0] = g_lights_cycle[g_lights_i]
	engfunc(EngFunc_LightStyle, 0, light)
	
	g_lights_i++
	
	// Lighting cycle end?
	if (g_lights_i >= g_lights_cycle_len)
	{
		remove_task(TASK_THUNDER)
		lighting_effects()
	}
	// Lighting cycle start?
	else if (!task_exists(TASK_THUNDER))
		set_task(0.1, "thunderclap", TASK_THUNDER, _, _, "b")
}

// Ambience Sounds Stop Task
ambience_sound_stop()
{
	client_cmd(0, "mp3 stop; stopsound")
}

// Flashlight Charge Task
public flashlight_charge(taskid)
{
	// Drain or charge?
	if (g_flashlight[ID_CHARGE])
		g_flashbattery[ID_CHARGE] -= get_pcvar_num(cvar_flashdrain)
	else
		g_flashbattery[ID_CHARGE] += get_pcvar_num(cvar_flashcharge)
	
	// Battery fully charged
	if (g_flashbattery[ID_CHARGE] >= 100)
	{
		// Don't exceed 100%
		g_flashbattery[ID_CHARGE] = 100
		
		// Update flashlight battery on HUD
		message_begin(MSG_ONE, g_msgFlashBat, _, ID_CHARGE)
		write_byte(100) // battery
		message_end()
		
		// Task not needed anymore
		remove_task(taskid);
		return;
	}
	
	// Battery depleted
	if (g_flashbattery[ID_CHARGE] <= 0)
	{
		// Turn it off
		g_flashlight[ID_CHARGE] = false
		g_flashbattery[ID_CHARGE] = 0
		
		// Play flashlight toggle sound
		emit_sound(ID_CHARGE, CHAN_ITEM, sound_flashlight, 1.0, ATTN_NORM, 0, PITCH_NORM)
		
		// Update flashlight status on HUD
		message_begin(MSG_ONE, g_msgFlashlight, _, ID_CHARGE)
		write_byte(0) // toggle
		write_byte(0) // battery
		message_end()
		
		// Remove flashlight task for this player
		remove_task(ID_CHARGE+TASK_FLASH)
	}
	else
	{
		// Update flashlight battery on HUD
		message_begin(MSG_ONE_UNRELIABLE, g_msgFlashBat, _, ID_CHARGE)
		write_byte(g_flashbattery[ID_CHARGE]) // battery
		message_end()
	}
}

// Remove Spawn Protection Task
public remove_spawn_protection(taskid)
{
	// Not alive
	if (!g_isalive[ID_SPAWN]) return;
	
	// Remove spawn protection
	g_nodamage[ID_SPAWN] = false
	set_pev(ID_SPAWN, pev_effects, pev(ID_SPAWN, pev_effects) & ~EF_NODRAW)
}

// Turn Off Flashlight and Restore Batteries
turn_off_flashlight(id)
{
	// Restore batteries for the next use
	fm_cs_set_user_batteries(id, 100)
	
	// Check if flashlight is on
	if (pev(id, pev_effects) & EF_DIMLIGHT)
	{
		// Turn it off
		set_pev(id, pev_impulse, IMPULSE_FLASHLIGHT)
	}
	else
	{
		// Clear any stored flashlight impulse (bugfix)
		set_pev(id, pev_impulse, 0)
	}
	
	// Turn off custom flashlight
	g_flashlight[id] = false
	g_flashbattery[id] = 100
		
	// Update flashlight HUD
	message_begin(MSG_ONE, g_msgFlashlight, _, id)
	write_byte(0) // toggle
	write_byte(100) // battery
	message_end()
		
	// Remove previous tasks
	remove_task(id+TASK_CHARGE)
	remove_task(id+TASK_FLASH)
}

public showStatus(id)
{
	// Format classname
	static class[32]
	
	new player_name[32], pid = read_data(2)
	get_user_name(pid,player_name,charsmax(player_name))
	
	if (g_class[pid] >= ZOMBIE) // zombies
	{
		if (g_class[pid] == NEMESIS)
			formatex(class, charsmax(class), "Nemesis")
		else if (g_class[pid] == ALIEN)
			formatex(class, charsmax(class), "Alien")
		else if (g_class[pid] == ASSASSIN)
			formatex(class, charsmax(class), "Assassin")
		else if (g_class[pid] == DEMON)
			formatex(class, charsmax(class), "Demon")	
		else
			copy(class, charsmax(class), g_zombie_classname[pid])
	}
	else // humans
	{
		if (g_class[pid] == SURVIVOR)
			formatex(class, charsmax(class), "Survivor")
		else if (g_class[pid] == WESKER)
			formatex(class, charsmax(class), "Wesker")
		else if (g_class[pid] == SNIPER)
			formatex(class, charsmax(class), "Sniper")
		else if (g_class[pid] == PREDATOR)
			formatex(class, charsmax(class), "Predator")
		else if (g_class[pid] == ANGEL)
			formatex(class, charsmax(class), "Angel")	
		else
			copy(class, charsmax(class), RANGOS[g_rango[pid]])
	}
	
	if (get_pcvar_num(cvar_hudstats) == 1)
	{
		if (!zp_get_user_zombie(pid) && !zp_get_user_zombie(id))
		{
			set_hudmessage(0, 200, 255, -1.0, 0.60, 1, 0.01, 7.0, 0.01, 0.01, 4)
			show_hudmessage(id,"%s^n%s^n[ Vida: %i | Armor: %i ]^n[ Ammopacks: %d | Nivel: %d ]", class, player_name, get_user_health(pid), get_user_armor(pid), g_ammopacks[pid][0], g_level[pid])
		}
		if (zp_get_user_zombie(pid) && zp_get_user_zombie(id))
		{
			set_hudmessage(255, 200, 0, -1.0, 0.60, 1, 0.01, 7.0, 0.01, 0.01, 4)
			show_hudmessage(id,"%s^n%s^n[ Vida: %i | Armor: %i ]^n[ Ammopacks: %d | Nivel: %d ]", class, player_name, get_user_health(pid), get_user_armor(pid), g_ammopacks[pid][0], g_level[pid])
		}
		return PLUGIN_CONTINUE
	}
	return PLUGIN_HANDLED
}

// Hide status player aiming
public hideStatus(id)
{
	// Not enabled
	if (!get_pcvar_num(cvar_hudstats)) return;
	
	ClearSyncHud(id, g_MsgSync3)
}

// Combo Task
public combo_counter(taskid)
{
	static szSay[12], szColor[12], szRed[4], szGreen[4], szBlue[4]
	for (new i = ArraySize(g_combo_levels)-1; i > -1; i--)
	{
		if (g_combo[ID_COMBO] >= ArrayGetCell(g_combo_levels, i))
		{
			ArrayGetString(g_combo_says, i, szSay, charsmax(szSay))
			ArrayGetString(g_combo_colors, i, szColor, charsmax(szColor))
			parse(szColor, szRed, charsmax(szRed), szGreen, charsmax(szGreen), szBlue, charsmax(szBlue))
            
			set_hudmessage(str_to_num(szRed), str_to_num(szGreen), str_to_num(szBlue), -1.0, 0.7, 0, 0.0, 3.0, 2.0, 1.0, -1)
			ShowSyncHudMsg(ID_COMBO, g_MsgSync4, "Combo: %d%", g_combo[ID_COMBO])
			break;
		}
	}
}

// Infection Bomb Explosion
infection_explode(ent)
{	
	// Get origin
	static Float:originF[3]
	pev(ent, pev_origin, originF)
	
	// Make the explosion
	create_blast1(originF)
	
	// Infection nade explode sound
	static sound[64]
	ArrayGetString(grenade_infect, random_num(0, ArraySize(grenade_infect) - 1), sound, charsmax(sound))
	emit_sound(ent, CHAN_WEAPON, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)
	
	// Get attacker
	static attacker
	attacker = pev(ent, pev_owner)
	
	// Infection bomb owner disconnected? (bugfix)
	if (!is_user_valid_connected(attacker))
	{
		// Get rid of the grenade
		engfunc(EngFunc_RemoveEntity, ent)
		return;
	}
	
	// Collisions
	static victim
	victim = -1
	
	while ((victim = engfunc(EngFunc_FindEntityInSphere, victim, originF, NADE_EXPLOSION_RADIUS)) != 0)
	{
		// Only effect alive non-spawnprotected humans
		if (!is_user_valid_alive(victim) || g_class[victim] >= ZOMBIE || g_nodamage[victim] || get_anti_infection(victim))
			continue;
			
		// Last human is killed
		if (fnGetHumans() == 1)
		{
			!is_user_valid_alive(victim)
		}
		if (fnGetHumans() == 1)
		{
			// Get rid of the grenade
		         engfunc(EngFunc_RemoveEntity, ent)
		         return;
		}
		
		// Infected victim's sound
		ArrayGetString(grenade_infect_player, random_num(0, ArraySize(grenade_infect_player) - 1), sound, charsmax(sound))
		emit_sound(victim, CHAN_VOICE, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)
		
		// Turn into zombie
		zombieme(victim, attacker, 0, 1, 1)
		
		// Add infect for attacker and victim
		if (g_infected[attacker][0] < 999999999)
		{
		g_infected[attacker][0]++
		}
		else
		{
		g_infected[attacker][0] += 0
		}
			
	}
	
	// Get rid of the grenade
	engfunc(EngFunc_RemoveEntity, ent)
}

// Fire Grenade Explosion
fire_explode(ent)
{
	// Get origin
	static Float:originF[3]
	pev(ent, pev_origin, originF)
	
	// Make the explosion
	create_blast2(originF)
	
	// Fire nade explode sound
	static sound[64]
	ArrayGetString(grenade_fire, random_num(0, ArraySize(grenade_fire) - 1), sound, charsmax(sound))
	emit_sound(ent, CHAN_WEAPON, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)
	
	// Collisions
	static victim
	victim = -1
	
	while ((victim = engfunc(EngFunc_FindEntityInSphere, victim, originF, NADE_EXPLOSION_RADIUS)) != 0)
	{
		// Already burned
		burn_player(victim)
	}
	
	// Get rid of the grenade
	engfunc(EngFunc_RemoveEntity, ent)
}

// Burn player effect
burn_player(victim, awp = 0)
{
	// Only effect alive zombies
	if (!is_user_valid_alive(victim) || g_class[victim] < ZOMBIE || g_nodamage[victim] || g_anti_fire[victim])
		return;
	
	// Nemesis/Alien awp cvar?
	if (awp && g_class[victim] >= NEMESIS && !get_pcvar_num(cvar_awpnemali))
		return;
	
	// Heat icon?
	if (get_pcvar_num(cvar_hudicons))
	{
		message_begin(MSG_ONE_UNRELIABLE, g_msgDamage, _, victim)
		write_byte(0) // damage save
		write_byte(0) // damage take
		write_long(DMG_BURN) // damage type
		write_coord(0) // x
		write_coord(0) // y
		write_coord(0) // z
		message_end()
	}
		
	if (g_class[victim] >= NEMESIS) // fire duration (nemesis/alien is fire resistant)
		g_burning_duration[victim] += get_pcvar_num(cvar_fireduration)
	else
		g_burning_duration[victim] += get_pcvar_num(cvar_fireduration) * 2
		
	// Set burning task on victim if not present
	if (!task_exists(victim+TASK_BURN))
		set_task(0.2, "burning_flame", victim+TASK_BURN, _, _, "b")
}

// Frost Grenade Explosion
frost_explode(ent)
{
	// Get origin
	static Float:originF[3]
	pev(ent, pev_origin, originF)
	
	// Make the explosion
	create_blast3(originF)
	
	// Frost nade explode sound
	static sound[64]
	ArrayGetString(grenade_frost, random_num(0, ArraySize(grenade_frost) - 1), sound, charsmax(sound))
	emit_sound(ent, CHAN_WEAPON, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)
	
	// Collisions
	static victim
	victim = -1
	
	while ((victim = engfunc(EngFunc_FindEntityInSphere, victim, originF, NADE_EXPLOSION_RADIUS)) != 0)
	{
		// Already frozen
		freeze_player(victim, 0)
	}
	
	// Get rid of the grenade
	engfunc(EngFunc_RemoveEntity, ent)
}

// Freeze player effect
freeze_player(victim, awp)
{
	// Only effect alive unfrozen zombies
	if (!is_user_valid_alive(victim) || g_class[victim] < ZOMBIE || g_frozen[victim] || g_nodamage[victim] || g_anti_ice[victim])
		return;
	
	// Freeze sound
	static sound[64];
	
	// Nemesis/Alien shouldn't be frozen
	if (!awp && (g_class[victim] == NEMESIS && !get_pcvar_num(cvar_frozennem) || g_class[victim] == ALIEN && !get_pcvar_num(cvar_frozenali) || g_class[victim] == ASSASSIN && !get_pcvar_num(cvar_frozenass)) 
	|| awp && g_class[victim] >= NEMESIS && !get_pcvar_num(cvar_awpnemali))
	{
		// Get player's origin
		static originF[3]
		get_user_origin(victim, originF)
		
		// Broken glass sound
		ArrayGetString(grenade_frost_break, random_num(0, ArraySize(grenade_frost_break) - 1), sound, charsmax(sound))
		emit_sound(victim, CHAN_BODY, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)
		
		// Glass shatter
		message_begin(MSG_PVS, SVC_TEMPENTITY, originF)
		write_byte(TE_BREAKMODEL) // TE id
		write_coord(originF[0]) // x
		write_coord(originF[1]) // y
		write_coord(originF[2]+24) // z
		write_coord(16) // size x
		write_coord(16) // size y
		write_coord(16) // size z
		write_coord(random_num(-50, 50)) // velocity x
		write_coord(random_num(-50, 50)) // velocity y
		write_coord(25) // velocity z
		write_byte(10) // random velocity
		write_short(g_glassSpr) // model
		write_byte(10) // count
		write_byte(25) // life
		write_byte(BREAK_GLASS) // flags
		message_end()	
		
		return;
	}
	
	// Freeze icon?
	if (get_pcvar_num(cvar_hudicons))
	{
		message_begin(MSG_ONE_UNRELIABLE, g_msgDamage, _, victim)
		write_byte(0) // damage save
		write_byte(0) // damage take
		write_long(DMG_DROWN) // damage type - DMG_FREEZE
		write_coord(0) // x
		write_coord(0) // y
		write_coord(0) // z
		message_end()
	}
	
	// Light blue glow while frozen
	set_rendering(victim, kRenderFxGlowShell, 0, 100, 200, kRenderNormal, 25)
	
	// Freeze sound
	ArrayGetString(grenade_frost_player, random_num(0, ArraySize(grenade_frost_player) - 1), sound, charsmax(sound))
	emit_sound(victim, CHAN_BODY, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)
	
	// Get freeze duration setting
	static Float:freezeduration
	
	if (g_class[victim] == ASSASSIN)
	{
	         freezeduration = get_pcvar_float(cvar_freezedurationass)
	}
	else
	{
	         freezeduration = get_pcvar_float(cvar_freezeduration)
	}
	
	// Add a blue tint to their screen
	message_begin(MSG_ONE, g_msgScreenFade, _, victim)
	write_short(0) // duration
	write_short(0) // hold time
	write_short(FFADE_STAYOUT) // fade type
	write_byte(0) // red
	write_byte(50) // green
	write_byte(200) // blue
	write_byte(100) // alpha
	message_end()
	
	// Set the frozen flag
	g_frozen[victim] = true
		
	// Save player's old gravity (bugfix)
	pev(victim, pev_gravity, g_frozen_gravity[victim])
		
	// Prevent from jumping
	if (pev(victim, pev_flags) & FL_ONGROUND)
		set_pev(victim, pev_gravity, 999999.9) // set really high
	else
		set_pev(victim, pev_gravity, 0.000001) // no gravity
		
	// Prevent from moving
	ExecuteHamB(Ham_Player_ResetMaxSpeed, victim)
	
	// Set a task to remove the freeze
	set_task(freezeduration, "remove_freeze", victim)
}

// Remove freeze task
public remove_freeze(id)
{
	// Not alive or not frozen anymore
	if (!g_isalive[id] || !g_frozen[id]) return;
	
	// Unfreeze
	g_frozen[id] = false
	
	// Restore gravity and maxspeed (bugfix)
	set_pev(id, pev_gravity, g_frozen_gravity[id])
	ExecuteHamB(Ham_Player_ResetMaxSpeed, id)
	
	// Apply normal glow (not in armageddon and in crysis)
	if (g_class[id] == NEMESIS && get_pcvar_num(cvar_nemglow))
		set_rendering(id)
	else if (g_class[id] == ALIEN && get_pcvar_num(cvar_aliglow))
		set_rendering(id)
	else if (g_class[id] == ASSASSIN && get_pcvar_num(cvar_assglow))
		set_rendering(id)
	else if (g_class[id] == DEMON && get_pcvar_num(cvar_demglow))
		set_rendering(id)	
	else if (g_class[id] == SURVIVOR && get_pcvar_num(cvar_survglow))
		set_rendering(id)
	else if (g_class[id] == WESKER && get_pcvar_num(cvar_weskglow))
		set_rendering(id)
	else if (g_class[id] == SNIPER && get_pcvar_num(cvar_snipglow))
		set_rendering(id)
	else if (g_class[id] == PREDATOR && get_pcvar_num(cvar_predglow))
		set_rendering(id)	
	else if (g_class[id] == ANGEL && get_pcvar_num(cvar_angglow))
		set_rendering(id)	
	else
		set_rendering(id)
	
	// Gradually remove screen's blue tint
	message_begin(MSG_ONE, g_msgScreenFade, _, id)
	write_short(UNIT_SECOND) // duration
	write_short(0) // hold time
	write_short(FFADE_IN) // fade type
	write_byte(0) // red
	write_byte(50) // green
	write_byte(200) // blue
	write_byte(100) // alpha
	message_end()
	
	// Broken glass sound
	static sound[64]
	ArrayGetString(grenade_frost_break, random_num(0, ArraySize(grenade_frost_break) - 1), sound, charsmax(sound))
	emit_sound(id, CHAN_BODY, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)
	
	// Get player's origin
	static origin2[3]
	get_user_origin(id, origin2)
	
	// Glass shatter
	message_begin(MSG_PVS, SVC_TEMPENTITY, origin2)
	write_byte(TE_BREAKMODEL) // TE id
	write_coord(origin2[0]) // x
	write_coord(origin2[1]) // y
	write_coord(origin2[2]+24) // z
	write_coord(16) // size x
	write_coord(16) // size y
	write_coord(16) // size z
	write_coord(random_num(-50, 50)) // velocity x
	write_coord(random_num(-50, 50)) // velocity y
	write_coord(25) // velocity z
	write_byte(10) // random velocity
	write_short(g_glassSpr) // model
	write_byte(10) // count
	write_byte(25) // life
	write_byte(BREAK_GLASS) // flags
	message_end()
	
	ExecuteForward(g_fwUserUnfrozen, g_fwDummyResult, id);
}

gas_explode(ent)
{
	// Get origin
	static Float:originF[3]
	pev(ent, pev_origin, originF)
	
	// Make the explosion
	create_blast4(originF)
	
	static attacker
	attacker = pev(ent, pev_owner)
	
	static sound[64]
	ArrayGetString(grenade_explosion, random_num(0, ArraySize(grenade_explosion) - 1), sound, charsmax(sound))
	emit_sound(ent, CHAN_WEAPON, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)
	
	for( new victim = 1; victim < 33; victim++ )
	{
		if( !is_user_connected( victim ) || !is_user_alive( victim ) ) continue;
		
		if( g_class[victim] >= ZOMBIE )
		{
			static Float: fDistance, Float: fDamage;
			
			fDistance = HattrickRange( victim, ent );
			
			if( fDistance < 300.0 )
			{
				fDamage = 300.0
				
				message_begin( MSG_ONE_UNRELIABLE, get_user_msgid( "ScreenFade" ), _, victim );
				write_short( 2048 );
				write_short( 1024 );
				write_short( FFADE_IN );
				write_byte( 255 );
				write_byte( 0 );
				write_byte( 0 );
				write_byte( fDistance < 220 ? 220 : 205 );
				message_end( );
				
				message_begin( MSG_ONE_UNRELIABLE, g_msgScreenShake, _, victim );
				write_short( 4096 * 100 ); // amplitude
				write_short( 4096 * 500 ); // duration
				write_short( 4096 * 200 ); // frequency
				message_end( );
				
				if( float( get_user_health( victim ) ) - fDamage > 0.0 )
				{
					ExecuteHamB( Ham_TakeDamage, victim, ent, attacker, fDamage, DMG_BLAST );
				}
				else
				{
					ExecuteHamB( Ham_Killed, victim, attacker, 4 );
				}
			}
		}
	}
	
	// Get rid of the grenade
	engfunc(EngFunc_RemoveEntity, ent)
}

// Aura Shield Grenade Explosion
aurashield_explode(ent)
{
	// Round ended (bugfix)
	if (g_endround) return;
	
	// Get origin
	static Float:originF[3]
	pev(ent, pev_origin, originF)
	
	// Make the explosion
	create_blast5(originF)
	
	// Get attacker
	static attacker
	attacker = pev(ent, pev_owner)
	
	// Infection bomb owner disconnected? (bugfix)
	if (!is_user_valid_connected(attacker))
	{
		// Get rid of the grenade
		engfunc(EngFunc_RemoveEntity, ent)
		return;
	}
	
	// Collisions
	static victim
	victim = -1
	
	while ((victim = engfunc(EngFunc_FindEntityInSphere, victim, originF, NADE_EXPLOSION_RADIUS)) != 0)
	{
		// Only effect alive non-spawnprotected humans
		if (!is_user_valid_alive(victim) || (g_class[victim] < ZOMBIE) || g_class[victim] >= FIRST_ZOMBIE || g_class[victim] >= LAST_ZOMBIE || g_class[victim] >= NEMESIS || g_nodamage[victim])
			continue;
			
		SendDeathMsg2(attacker, victim)	
		UpdateFrags(attacker, victim, 1, 1, 1)
		FixDeadAttrib(victim)
		humanme(victim, 0, 0)
	}
	
	// Get rid of the grenade
	engfunc(EngFunc_RemoveEntity, ent)
}

// Thunderer AWP
thunderer_awp(victim)
{
	// Only effect alive zombies
	if (!is_user_valid_alive(victim) || g_class[victim] < ZOMBIE || g_nodamage[victim])
		return;
	
	// Nemesis/Alien awp cvar?
	if (g_class[victim] >= NEMESIS && !get_pcvar_num(cvar_awpnemali))
		return;
	
	// Electrocuted icon?
	if (get_pcvar_num(cvar_hudicons))
	{
		message_begin(MSG_ONE_UNRELIABLE, g_msgDamage, _, victim)
		write_byte(0) // damage save
		write_byte(0) // damage take
		write_long(DMG_SHOCK) // damage type
		write_coord(0) // x
		write_coord(0) // y
		write_coord(0) // z
		message_end()
	}
	
	// Get player origin
	static Float:originF[3]
	pev(victim, pev_origin, originF)
	
	// Make thunder
	ThunderPlayer(originF)
	
	// Emit sound
	static sound[64];
	ArrayGetString(sound_thunder_awp, random_num(0, ArraySize(sound_thunder_awp) - 1), sound, charsmax(sound))
	emit_sound(victim, CHAN_BODY, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)
	
	// Give a glow to the victim
	set_rendering(victim, kRenderFxGlowShell, 255, 255, 0, kRenderNormal, 25)
	
	// Get player's health
	static health; health = get_user_health(victim)
	
	// Take damage from the thunder
	if (health - floatround(get_pcvar_float(cvar_thunderdamageawp), floatround_ceil) > 0)
		set_user_health(victim, health - floatround(get_pcvar_float(cvar_thunderdamageawp), floatround_ceil))
	
	// Give the normal glow
	set_task(1.0, "remove_thunder_glow", victim)
}

// Remove thunder glow
public remove_thunder_glow(victim)
{
	// Is frozen?
	if (g_frozen[victim])
	{
		// Light blue glow while frozen
		set_rendering(victim, kRenderFxGlowShell, 0, 100, 200, kRenderNormal, 25)
		return;
	}
	
	// Apply normal glow (not in armageddon and in crysis)
	if (g_class[victim] == NEMESIS && get_pcvar_num(cvar_nemglow))
		set_rendering(victim)
	else if (g_class[victim] == ALIEN && get_pcvar_num(cvar_aliglow))
		set_rendering(victim)
	else if (g_class[victim] == ASSASSIN && get_pcvar_num(cvar_assglow))
		set_rendering(victim)
	else if (g_class[victim] == DEMON && get_pcvar_num(cvar_demglow))
		set_rendering(victim)	
	else if (g_class[victim] == SURVIVOR && get_pcvar_num(cvar_survglow))
		set_rendering(victim)
	else if (g_class[victim] == WESKER && get_pcvar_num(cvar_weskglow))
		set_rendering(victim)
	else if (g_class[victim] == SNIPER && get_pcvar_num(cvar_snipglow))
		set_rendering(victim)
	else if (g_class[victim] == PREDATOR && get_pcvar_num(cvar_predglow))
		set_rendering(victim)
	else if (g_class[victim] == ANGEL && get_pcvar_num(cvar_angglow))
		set_rendering(victim)	
	else
		set_rendering(victim)
}

// Remove Stuff Task
public remove_stuff()
{
	static ent
	
	// Remove rotating doors
	if (get_pcvar_num(cvar_removedoors) > 0)
	{
		ent = -1;
		while ((ent = engfunc(EngFunc_FindEntityByString, ent, "classname", "func_door_rotating")) != 0)
			engfunc(EngFunc_SetOrigin, ent, Float:{8192.0 ,8192.0 ,8192.0})
	}
	
	// Remove all doors
	if (get_pcvar_num(cvar_removedoors) > 1)
	{
		ent = -1;
		while ((ent = engfunc(EngFunc_FindEntityByString, ent, "classname", "func_door")) != 0)
			engfunc(EngFunc_SetOrigin, ent, Float:{8192.0 ,8192.0 ,8192.0})
	}
	
	// Triggered lights
	if (!get_pcvar_num(cvar_triggered))
	{
		ent = -1
		while ((ent = engfunc(EngFunc_FindEntityByString, ent, "classname", "light")) != 0)
		{
			dllfunc(DLLFunc_Use, ent, 0); // turn off the light
			set_pev(ent, pev_targetname, 0) // prevent it from being triggered
		}
	}
}

// Set Custom Weapon Models
replace_weapon_models(id, weaponid)
{
	switch (weaponid)
	{
		case CSW_KNIFE: // Custom knife models
		{
			if (g_class[id] >= ZOMBIE)
			{
				if (g_class[id] == NEMESIS) // Nemesis
				{
					set_pev(id, pev_viewmodel2, model_vknife_nemesis)
					set_pev(id, pev_weaponmodel2, "")
				}
				else if (g_class[id] == ALIEN) // Alien
				{
					set_pev(id, pev_viewmodel2, model_vknife_alien)
					set_pev(id, pev_weaponmodel2, "")
				}
				else if (g_class[id] == ASSASSIN) // Alien
				{
					set_pev(id, pev_viewmodel2, model_vknife_assassin)
					set_pev(id, pev_weaponmodel2, "")
				}
				else if (g_class[id] == DEMON) // Alien
				{
					set_pev(id, pev_viewmodel2, model_vknife_demon)
					set_pev(id, pev_weaponmodel2, "")
				}
				else // Zombies
				{
					// Admin knife models?
					if (get_pcvar_num(cvar_adminknifemodelszombie) && get_user_flags(id) & g_access_flag[ACCESS_ADMIN_MODELS])
					{
						set_pev(id, pev_viewmodel2, model_vknife_admin_zombie)
						set_pev(id, pev_weaponmodel2, "")
					}
					else
					{
						static clawmodel[100]
						ArrayGetString(g_zclass_clawmodel, g_zombieclass[id], clawmodel, charsmax(clawmodel))
						format(clawmodel, charsmax(clawmodel), "models/zombie_apocalypse/%s", clawmodel)
						set_pev(id, pev_viewmodel2, clawmodel)
						set_pev(id, pev_weaponmodel2, "")
					}
				}
			}
			else // Humans
			{
				if (get_pcvar_num(cvar_adminknifemodelshuman) && get_user_flags(id) & g_access_flag[ACCESS_ADMIN_MODELS])
				{
					set_pev(id, pev_viewmodel2, model_vknife_admin_human)
					set_pev(id, pev_weaponmodel2, model_pknife_admin_human)
				}
				else if (g_knifes[id] == 0)
				{
					set_pev(id, pev_viewmodel2, v_model_knife)
				          set_pev(id, pev_weaponmodel2, p_model_knife)
				}
				else if (g_knifes[id] == 1)
			         {
				          set_pev(id, pev_viewmodel2, v_model_knife1)
				          set_pev(id, pev_weaponmodel2, p_model_knife1)
			         }
				else if (g_knifes[id] == 2)
			         {
				          set_pev(id, pev_viewmodel2, v_model_knife2)
				          set_pev(id, pev_weaponmodel2, p_model_knife2)
			         }
				else if (g_knifes[id] == 3)
			         {
				          set_pev(id, pev_viewmodel2, v_model_knife3)
				          set_pev(id, pev_weaponmodel2, p_model_knife3)
			         }
				else if (g_knifes[id] == 4)
			         {
				          set_pev(id, pev_viewmodel2, v_model_knife4)
				          set_pev(id, pev_weaponmodel2, p_model_knife4)
			         }
				else if (g_knifes[id] == 5)
			         {
				          set_pev(id, pev_viewmodel2, v_model_knife5)
				          set_pev(id, pev_weaponmodel2, p_model_knife5)
			         }
				else if (g_knifes[id] == 6)
			         {
				          set_pev(id, pev_viewmodel2, v_model_knife6)
				          set_pev(id, pev_weaponmodel2, p_model_knife6)
			         }
				else if (g_knifes[id] == 7)
			         {
				          set_pev(id, pev_viewmodel2, v_model_knife7)
				          set_pev(id, pev_weaponmodel2, p_model_knife7)
			         }
				else if (g_knifes[id] == 8)
			         {
				          set_pev(id, pev_viewmodel2, v_model_knife8)
				          set_pev(id, pev_weaponmodel2, p_model_knife8)
			         }
				else if (g_knifes[id] == 9)
			         {
				          set_pev(id, pev_viewmodel2, v_model_knife9)
				          set_pev(id, pev_weaponmodel2, p_model_knife9)
			         }
				else if (g_knifes[id] == 10)
			         {
				          set_pev(id, pev_viewmodel2, v_model_knife10)
				          set_pev(id, pev_weaponmodel2, p_model_knife10)
			         }
				else if (g_knifes[id] == 11)
			         {
				          set_pev(id, pev_viewmodel2, v_model_knife11)
				          set_pev(id, pev_weaponmodel2, p_model_knife11)
			         }
			}
		}
		case CSW_HEGRENADE: // Infection bomb or fire grenade
		{
			if (g_class[id] >= ZOMBIE)
			{
				set_pev(id, pev_viewmodel2, model_grenade_infect)
				set_pev(id, pev_weaponmodel2, model_pgrenade_infect)
			}
			else
			{
				if (g_weapon[id] == 0)
				{
					set_pev(id, pev_viewmodel2, model_grenade_fire)
				}
				else if (g_weapon[id] == 1)
				{
					set_pev(id, pev_viewmodel2, model_grenade_fire)
				}
				else if (g_weapon[id] == 2)
				{
					set_pev(id, pev_viewmodel2, model_grenade_fire2)
				}
				set_pev(id, pev_weaponmodel2, model_pgrenade_fire)
			}
	         }		
		case CSW_FLASHBANG: // Frost grenade
		{
			if (g_weapon[id] == 0)
			{
				set_pev(id, pev_viewmodel2, model_grenade_frost)
			}	
			if (g_weapon[id] == 1)
			{
				set_pev(id, pev_viewmodel2, model_grenade_frost)
			}
			if (g_weapon[id] == 2)
			{
				set_pev(id, pev_viewmodel2, model_grenade_frost2)
			}
			set_pev(id, pev_weaponmodel2, model_pgrenade_frost)
		}
		case CSW_SMOKEGRENADE: // Aura Shield grenade
		{
			if (g_smokegrenade[id] == 0)
			{
				set_pev(id, pev_viewmodel2, model_grenade_gas)
				set_pev(id, pev_weaponmodel2, model_pgrenade_gas)
			}
			else if (g_smokegrenade[id] == 1)
			{
				set_pev(id, pev_viewmodel2, model_grenade_aurashield)
				set_pev(id, pev_weaponmodel2, model_pgrenade_aurashield)
			}
		}
		case CSW_DEAGLE: // Survivor weapon
		{
			if (g_weapon[id] == 0)
			{
				set_pev(id, pev_viewmodel2, v_model_deagle_lg_2)
			}
			else if (g_weapon[id] == 1)
			{
				set_pev(id, pev_viewmodel2, v_model_deagle_lg_2)
			}
			else if (g_weapon[id] == 2)
			{
				set_pev(id, pev_viewmodel2, v_model_deagle_lg_2)
			}
		}
		case CSW_USP: // Survivor weapon
		{
			if (g_weapon[id] == 0)
			{
				set_pev(id, pev_viewmodel2, v_model_usp_lg_2)
			}
			else if (g_weapon[id] == 1)
			{
				set_pev(id, pev_viewmodel2, v_model_usp_lg_2)
			}
			else if (g_weapon[id] == 2)
			{
				set_pev(id, pev_viewmodel2, v_model_usp_lg_2)
			}
		}
		case CSW_M249: // Deagle weapon
		{
			if (g_weapon[id] == 0)
			{
				set_pev(id, pev_viewmodel2, v_model_m249_lg_3)
			}
			else if (g_weapon[id] == 1)
			{
				set_pev(id, pev_viewmodel2, v_model_m249_lg_3)
			}
			else if (g_weapon[id] == 2)
			{
				set_pev(id, pev_viewmodel2, v_model_m249_lg_3)
			}
		}
		case CSW_MP5NAVY: // Survivor weapon
		{
			if (g_class[id] == SURVIVOR || g_superm249[id])
			{
				set_pev(id, pev_viewmodel2, model_vm249_survivor)
			}
			else if (g_weapon[id] == 0)
			{
				set_pev(id, pev_viewmodel2, v_model_mp5_lg_2)
			}
			else if (g_weapon[id] == 1)
			{
				set_pev(id, pev_viewmodel2, v_model_mp5_lg_2)
			}
			else if (g_weapon[id] == 2)
			{
				set_pev(id, pev_viewmodel2, v_model_mp5_lg_2)
			}
		}
		case CSW_XM1014: // Deagle weapon
		{
			if (g_weapon[id] == 0)
			{
				set_pev(id, pev_viewmodel2, v_model_xm1014_lg_2)
			}
			else if (g_weapon[id] == 1)
			{
				set_pev(id, pev_viewmodel2, v_model_xm1014_lg_2)
			}
			else if (g_weapon[id] == 2)
			{
				set_pev(id, pev_viewmodel2, v_model_xm1014_lg_2)
			}
		}
		case CSW_M3: // Deagle weapon
		{
			if (g_weapon[id] == 0)
			{
				set_pev(id, pev_viewmodel2, v_model_m3_lg_2)
			}
			else if (g_weapon[id] == 1)
			{
				set_pev(id, pev_viewmodel2, v_model_m3_lg_2)
			}
			else if (g_weapon[id] == 2)
			{
				set_pev(id, pev_viewmodel2, v_model_m3_lg_2)
			}
		}
		case CSW_AK47: // Deagle weapon
		{
			if (g_weapon[id] == 0)
			{
				set_pev(id, pev_viewmodel2, v_model_ak47_lg_2)
			}
			else if (g_weapon[id] == 1)
			{
				set_pev(id, pev_viewmodel2, v_model_ak47_lg_2)
			}
			else if (g_weapon[id] == 2)
			{
				set_pev(id, pev_viewmodel2, v_model_ak47_lg_2)
			}
		}
		case CSW_M4A1: // Deagle weapon
		{
			if (g_class[id] == WESKER || g_superdeagle[id])
			{
				set_pev(id, pev_viewmodel2, model_vdeagle_wesker)
			}
			else if (g_weapon[id] == 0)
			{
				set_pev(id, pev_viewmodel2, v_model_m4a1_lg_2)
			}
			else if (g_weapon[id] == 1)
			{
				set_pev(id, pev_viewmodel2, v_model_m4a1_lg_2)
			}
			else if (g_weapon[id] == 2)
			{
				set_pev(id, pev_viewmodel2, v_model_m4a1_lg_2)
			}
		}
		case CSW_GALIL: // Deagle weapon
		{
			if (g_weapon[id] == 0)
			{
				set_pev(id, pev_viewmodel2, v_model_galil_lg_2)
			}
			else if (g_weapon[id] == 1)
			{
				set_pev(id, pev_viewmodel2, v_model_galil_lg_2)
			}
			else if (g_weapon[id] == 2)
			{
				set_pev(id, pev_viewmodel2, v_model_galil_lg_2)
			}
		}
		case CSW_AWP: // Deagle weapon
		{
			if (g_class[id] == SNIPER || g_superawp[id])
			{
				set_pev(id, pev_viewmodel2, model_vawp_sniper)
			}
		}
	}
}

// Reset Player Vars
reset_vars(id, resetall, famepj)
{
	g_class[id] = HUMAN
	g_frozen[id] = false
	g_nodamage[id] = false
	g_respawn_as_zombie[id] = false
	g_nvision[id] = g_nvisionenabled[id] = false
	g_flashlight[id] = false
	g_flashbattery[id] = 100
	g_canbuy[id] = 0
	g_categoryb[id] = g_superm249[id] = g_superdeagle[id] = g_superawp[id] = false
	g_superknife[id] = 0
	g_specialawp[id] = 0
	g_burning_duration[id] = 0
	
	if (resetall)
	{
		g_combo[id] = 0
		g_damage_done[id] = g_comboreward[id] = 0
		g_level[id] = 0
		g_rango[id] = g_rango2[id] = 0
		g_rangelevel[id] = 1
		g_experience[id] = g_fame[id] = 0
		g_point[id] = 0
		g_ammopacks[id][0] = get_pcvar_num(cvar_startammopacks)	
		g_ammopacks[id][1] = 0
		g_humanclass[id] = g_humanclassnext[id] = 0
		g_zombieclass[id] = g_zombieclassnext[id] = 0
		for (new i = 0; i < 4; i++) g_playedtime[id][i] = 0
		for (new i = 0; i < 5; i++)
		{
			g_skill_points[id][0][i] = 0
			g_skill_points[id][1][i] = 0
			g_killed[id][0][i] = 0
			g_killed[id][1][i] = 0
		}
		for (new i = 0; i < 8; i++)
		{
			g_questkill[id][i] = 0
			g_questkill[id][i] = 0
			g_questcompleted[id][i] = 0
		}
		for (new i = 0; i < 2; i++)
		{
			g_points[id][i] = 0
			g_usedpoints[id][i] = 0
			g_infected[id][i] = 0
		}
		g_quest[id] = g_questrounds[id] = 0
		g_escape[id] = 0
		g_nvgred[id] = 0
		g_nvggreen[id] = 255
		g_nvgblue[id] = 0
		g_hudred[id] = 255
		g_hudgreen[id] = 0
		g_hudblue[id] = 0
		g_flashred[id] = 255
		g_flashgreen[id] = 255
		g_flashblue[id] = 255
		g_hud[id] = 0
		g_weapon[id] = 0
		g_hud_stats_t[id] = 1
		g_hud_stats_x[id] = 0.02
		g_hud_stats_y[id] = 0.075
		g_models[id] = 0
		g_hats[id] = 0
		g_glows[id] = 0
		g_knifes[id] = 0
		g_grenades[id] = 0
		WPN_STARTID = 0
		PL_ACTION = 0
		MENU_PAGE_HCLASS = MENU_PAGE_ZCLASS = MENU_PAGE_EXTRAS = MENU_PAGE_PLAYERS = MENU_PAGE_LEVELS = 0
		CONFIRM_MENU = 0
	}
	
	if (famepj)
	{
		g_level[id] = 1
		g_experience[id] = 0
		g_rangelevel[id] = 1
		g_points[id][0] += get_pcvar_num(cvar_pointsfameup)
		g_points[id][1] += get_pcvar_num(cvar_pointsfameup)
		g_fame[id]++
		g_humanclass[id] = g_humanclassnext[id] = HCLASS_NONE
		g_zombieclass[id] = g_zombieclassnext[id] = ZCLASS_NONE
		WPN_STARTID = 0
		PL_ACTION = 0
		MENU_PAGE_HCLASS = MENU_PAGE_ZCLASS = MENU_PAGE_EXTRAS = MENU_PAGE_PLAYERS = MENU_PAGE_LEVELS = 0
		CONFIRM_MENU = 0
		zp_colored_print(id, "^x04[ZE]^x01 Has subido tu fama satisfactoriamente | Nivel de fama actual: %d", g_fame[id])
		Save(id) // save when fame up
	}
}

// Set spectators nightvision
public spec_nvision(id)
{
	// Not connected, alive, or bot
	if (!g_isconnected[id] || g_isalive[id] || g_isbot[id])
		return;
	
	// Give Night Vision?
	if (!get_pcvar_num(cvar_nvggive)) return;
	
	g_nvision[id] = true
		
	// Turn on Night Vision automatically?
	if (get_pcvar_num(cvar_nvggive) == 1)
	{
		g_nvisionenabled[id] = true
			
		// Custom nvg
		remove_task(id+TASK_NVISION)
		set_task(0.1, "set_user_nvision", id+TASK_NVISION, _, _, "b")
	}
}

// Show HUD Task
public ShowHUD(taskid)
{
	static id; id = ID_SHOWHUD;
	
	// Player died?
	if (!g_isalive[id])
	{
		// Get spectating target
		id = pev(id, PEV_SPEC_TARGET)
		
		// Target not alive
		if (!g_isalive[id]) return;
	}
	
	// Format classname
	static class[32]
	
	if (g_class[id] >= ZOMBIE) // zombies
	{
		if (g_class[id] == NEMESIS)
			formatex(class, charsmax(class), "Nemesis")
		else if (g_class[id] == ALIEN)
			formatex(class, charsmax(class), "Alien")
		else if (g_class[id] == ASSASSIN)
			formatex(class, charsmax(class), "Assassin")	
		else if (g_class[id] == DEMON)
			formatex(class, charsmax(class), "Demon")
		else
			copy(class, charsmax(class), g_zombie_classname[id])
	}
	else // humans
	{
		if (g_class[id] == SURVIVOR)
			formatex(class, charsmax(class), "Survivor")
		else if (g_class[id] == WESKER)
			formatex(class, charsmax(class), "Wesker")
		else if (g_class[id] == SNIPER)
			formatex(class, charsmax(class), "Sniper")
		else if (g_class[id] == PREDATOR)
			formatex(class, charsmax(class), "Predator")
		else if (g_class[id] == ANGEL)
			formatex(class, charsmax(class), "Angel")	
		else
			copy(class, charsmax(class), g_human_classname[id])
	}
	
	// Spectating someone else?
	if (id != ID_SHOWHUD)
	{
		// Show hud stats you´re spectating
		set_hudmessage(255, 255, 255, 0.6, 0.8, 1, 6.0, 1.1, 0.0, 0.0, -1)
		ShowSyncHudMsg(ID_SHOWHUD, g_MsgSync2, "Siguiendo a: %s^n[Vida: %i ] [Clase: %s ] [Ammo packs: %d^n][Nivel: %d ] [Rango: %s]  [EXP: %d]", g_playername[id], get_user_health(id), class, g_ammopacks[id][0], g_level[id], RANGOS[g_rango[id]], g_experience[id])
	}
	else if (g_hud[id] == 0)
	{
		// Show your hud stats
		set_hudmessage(g_hudred[id], g_hudgreen[id], g_hudblue[id], g_hud_stats_x[id], g_hud_stats_y[id], g_hud_stats_t[id], 6.0, 1.1, 0.0, 0.0, -1)
		ShowSyncHudMsg(ID_SHOWHUD, g_MsgSync2, "[Vida: %i]^n[Clase: %s]^n[Nivel: %d]^n[Rango: %s]^n[Ammo packs: %d]^n[Chaleco: %i]", get_user_health(id), class, g_level[id], RANGOS[g_rango[id]], g_ammopacks[id][0], get_user_armor(id))
	}
	else if (g_hud[id] == 1)
	{
		set_hudmessage(g_hudred[id], g_hudgreen[id], g_hudblue[id], g_hud_stats_x[id], g_hud_stats_y[id], g_hud_stats_t[id], 6.0, 1.1, 0.0, 0.0, -1)
		ShowSyncHudMsg(ID_SHOWHUD, g_MsgSync2, "[Vida: %i] [Clase: %s] [Nivel: %d]^n[Rango: %s]^n [Ammo packs: %d] [Chaleco: %i]", get_user_health(id), class, g_level[id], RANGOS[g_rango[id]], g_ammopacks[id][0], get_user_armor(id))
	}

}

// Health task for /survivor/wesker/nemesis/alien
public health_task(taskid)
{
	// Round ended/Not alive/He isn't...
	if (g_endround || !g_isalive[ID_HEALTH] || (g_currentmode == MODE_SURVIVOR && g_class[ID_HEALTH] != SURVIVOR) 
	|| (g_currentmode == MODE_WESKER && g_class[ID_HEALTH] != WESKER) || (g_currentmode == MODE_SNIPER && g_class[ID_HEALTH] != SNIPER) || (g_currentmode == MODE_PREDATOR && g_class[ID_HEALTH] != PREDATOR) || (g_currentmode == MODE_ANGEL && g_class[ID_HEALTH] != ANGEL)
	|| (g_currentmode == MODE_NEMESIS && g_class[ID_HEALTH] != NEMESIS) || (g_currentmode == MODE_ALIEN && g_class[ID_HEALTH] != ALIEN) 
	|| (g_currentmode == MODE_ASSASSIN && g_class[ID_HEALTH] != ASSASSIN) || (g_currentmode == MODE_DEMON && g_class[ID_HEALTH] != DEMON))
	{
		g_healthshow = 0
		remove_task(ID_HEALTH+TASK_HEALTH)
		return;
	}
	
	// Get his health
	g_healthshow = get_user_health(ID_HEALTH)
}

// Prepare Maker Hud
public prepare_marker_hud()
{
	remove_task(TASK_MARKER)
	set_task(1.0, "marker_hud", TASK_MARKER, _, _, "b")
}

// Marker Hud Task
public marker_hud()
{
	// No mode started
	if (g_currentmode == MODE_NONE) return;
	
	static texthealth[25]
	
	// Show health
	if (g_healthshow) formatex(texthealth, charsmax(texthealth), "VIDA DEL %s: %d", g_currentmode > MODE_SWARM ? g_currentmode > MODE_NEMESIS ? g_currentmode > MODE_ALIEN ? g_currentmode > MODE_ASSASSIN ? g_currentmode > MODE_DEMON ? g_currentmode > MODE_SURVIVOR ? g_currentmode > MODE_WESKER ? g_currentmode > MODE_SNIPER ? g_currentmode > MODE_PREDATOR ? 
	"ANGEL" : "PREDATOR" : "SNIPER" : "WESKER" : "SURVIVOR" : "DEMON" : "ASSASSIN" : "ALIEN" : "NEMESIS" : "", g_healthshow)
	else formatex(texthealth, charsmax(texthealth), "")
	
	// Current mode HUD
	set_hudmessage(mode_colors[g_currentmode-1][0], mode_colors[g_currentmode-1][1], mode_colors[g_currentmode-1][2], HUD_MARKER_X, HUD_MARKER_Y, 0, 6.0, 1.1, 0.0, 0.0, -1)
	show_hudmessage(0, "%s", texthealth)
}

// Madness Over Task
public madness_over(id)
{
	id -= TASK_BLOOD
	if(is_user_alive(id))
	{
		g_nodamage[id] = false
		g_madness[id] = false
		set_rendering(id, kRenderFxGlowShell, 0, 0, 0, kRenderNormal, 0)
		remove_task(id+TASK_AURA)
		remove_task(id+TASK_BLOOD)
	}	
} 

// Place user at a random spawn
do_random_spawn(id, regularspawns = 0)
{
	static hull, sp_index, i
	
	// Get whether the player is crouching
	hull = (pev(id, pev_flags) & FL_DUCKING) ? HULL_HEAD : HULL_HUMAN
	
	// Use regular spawns?
	if (!regularspawns)
	{
		// No spawns?
		if (!g_spawnCount) return;
		
		// Choose random spawn to start looping at
		sp_index = random_num(0, g_spawnCount - 1)
		
		// Try to find a clear spawn
		for (i = sp_index + 1; /*no condition*/; i++)
		{
			// Start over when we reach the end
			if (i >= g_spawnCount) i = 0
			
			// Free spawn space?
			if (is_hull_vacant(g_spawns[i], hull))
			{
				// Engfunc_SetOrigin is used so ent's mins and maxs get updated instantly
				engfunc(EngFunc_SetOrigin, id, g_spawns[i])
				break;
			}
			
			// Loop completed, no free space found
			if (i == sp_index) break;
		}
	}
	else
	{
		// No spawns?
		if (!g_spawnCount2) return;
		
		// Choose random spawn to start looping at
		sp_index = random_num(0, g_spawnCount2 - 1)
		
		// Try to find a clear spawn
		for (i = sp_index + 1; /*no condition*/; i++)
		{
			// Start over when we reach the end
			if (i >= g_spawnCount2) i = 0
			
			// Free spawn space?
			if (is_hull_vacant(g_spawns2[i], hull))
			{
				// Engfunc_SetOrigin is used so ent's mins and maxs get updated instantly
				engfunc(EngFunc_SetOrigin, id, g_spawns2[i])
				break;
			}
			
			// Loop completed, no free space found
			if (i == sp_index) break;
		}
	}
}

// Get Zombies -returns alive zombies number-
fnGetZombies()
{
	static iZombies, id
	iZombies = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (g_isalive[id] && g_class[id] >= ZOMBIE)
			iZombies++
	}
	
	return iZombies;
}

// Get Humans -returns alive humans number-
fnGetHumans()
{
	static iHumans, id
	iHumans = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (g_isalive[id] && g_class[id] < ZOMBIE)
			iHumans++
	}
	
	return iHumans;
}

// Get Nemesis -returns alive nemesis number-
fnGetNemesis()
{
	static iNemesis, id
	iNemesis = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (g_isalive[id] && g_class[id] == NEMESIS)
			iNemesis++
	}
	
	return iNemesis;
}

// Get Aliens -returns alive aliens number-
fnGetAliens()
{
	static iAliens, id
	iAliens = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (g_isalive[id] && g_class[id] == ALIEN)
			iAliens++
	}
	
	return iAliens;
}

// Get Survivors -returns alive survivors number-
fnGetSurvivors()
{
	static iSurvivors, id
	iSurvivors = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (g_isalive[id] && g_class[id] == SURVIVOR)
			iSurvivors++
	}
	
	return iSurvivors;
}

// Get Weskers -returns alive weskers number-
fnGetWeskers()
{
	static iWeskers, id
	iWeskers = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (g_isalive[id] && g_class[id] == WESKER)
			iWeskers++
	}
	
	return iWeskers;
}

fnGetSnipers()
{
	static iSnipers, id
	iSnipers = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (g_isalive[id] && g_class[id] == SNIPER)
			iSnipers++
	}
	
	return iSnipers;
}

fnGetPredators()
{
	static iPredators, id
	iPredators = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (g_isalive[id] && g_class[id] == PREDATOR)
			iPredators++
	}
	
	return iPredators;
}

fnGetAngels()
{
	static iAngels, id
	iAngels = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (g_isalive[id] && g_class[id] == ANGEL)
			iAngels++
	}
	
	return iAngels;
}

// Get Alive -returns alive players number-
fnGetAlive()
{
	static iAlive, id
	iAlive = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (g_isalive[id])
			iAlive++
	}
	
	return iAlive;
}

// Get Random Alive -returns index of alive player number n -
fnGetRandomAlive(n)
{
	static iAlive, id
	iAlive = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (g_isalive[id])
			iAlive++
		
		if (iAlive == n)
			return id;
	}
	
	return -1;
}

// Get Alive -returns logged players number-
fnGetLogged()
{
	static iLogged, id
	iLogged = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (g_status[id] != OFFLINE)
			iLogged++
	}
	
	return iLogged;
}

// Get Random Logged -returns index of logged player number n -
fnGetRandomLogged(n)
{
	static iLogged, id
	iLogged = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (g_status[id] != OFFLINE)
			iLogged++
		
		if (iLogged == n)
			return id;
	}
	
	return -1;
}

// Get Playing -returns number of users playing-
fnGetPlaying()
{
	static iPlaying, id, team
	iPlaying = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (g_isconnected[id])
		{
			team = fm_cs_get_user_team(id)
			
			if (team != FM_CS_TEAM_SPECTATOR && team != FM_CS_TEAM_UNASSIGNED)
				iPlaying++
		}
	}
	
	return iPlaying;
}

// Get CTs -returns number of CTs connected-
fnGetCTs()
{
	static iCTs, id
	iCTs = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (g_isconnected[id])
		{			
			if (fm_cs_get_user_team(id) == FM_CS_TEAM_CT)
				iCTs++
		}
	}
	
	return iCTs;
}

// Get Ts -returns number of Ts connected-
fnGetTs()
{
	static iTs, id
	iTs = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (g_isconnected[id])
		{			
			if (fm_cs_get_user_team(id) == FM_CS_TEAM_T)
				iTs++
		}
	}
	
	return iTs;
}

// Get Alive CTs -returns number of CTs alive-
fnGetAliveCTs()
{
	static iCTs, id
	iCTs = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (g_isalive[id])
		{			
			if (fm_cs_get_user_team(id) == FM_CS_TEAM_CT)
				iCTs++
		}
	}
	
	return iCTs;
}

// Get Alive Ts -returns number of Ts alive-
fnGetAliveTs()
{
	static iTs, id
	iTs = 0
	
	for (id = 1; id <= g_maxplayers; id++)
	{
		if (g_isalive[id])
		{			
			if (fm_cs_get_user_team(id) == FM_CS_TEAM_T)
				iTs++
		}
	}
	
	return iTs;
}

// Last Check -check for last human or zombie and set its flag-
fnCheckLast()
{
	static id
	for (id = 1; id <= g_maxplayers; id++)
	{
		// Last zombie
		if (g_isalive[id] && g_class[id] == ZOMBIE && fnGetZombies() == 1)
		{
			// Last zombie forward
			ExecuteForward(g_fwUserLastZombie, g_fwDummyResult, id);
			
			g_class[id] = LAST_ZOMBIE
		}
		else if ((!g_isalive[id] || fnGetZombies() > 1) && g_class[id] == LAST_ZOMBIE)
			g_class[id] = ZOMBIE
		
		// Last human
		if (g_isalive[id] && g_class[id] == HUMAN && fnGetHumans() == 1)
		{
			// Last human forward
			ExecuteForward(g_fwUserLastHuman, g_fwDummyResult, id);
				
			// Reward extra hp
			set_user_health(id, get_user_health(id) + get_pcvar_num(cvar_humanlasthp))
			
			g_class[id] = LAST_HUMAN
		}
		else if ((!g_isalive[id] || fnGetHumans() > 1) && g_class[id] == LAST_HUMAN)
			g_class[id] = HUMAN
	}
}

// Checks if a player is allowed to be zombie
allowed_zombie(id)
{
	if ((g_class[id] >= ZOMBIE && g_class[id] < NEMESIS) || g_endround || !g_isalive[id] || task_exists(TASK_WELCOMEMSG) || (!g_newround && g_class[id] < ZOMBIE && fnGetHumans() == 1))
		return false;
	
	return true;
}

// Checks if a player is allowed to be human
allowed_human(id)
{
	if (g_class[id] < SURVIVOR || g_endround || !g_isalive[id] || task_exists(TASK_WELCOMEMSG) || (!g_newround && g_class[id] >= ZOMBIE && fnGetZombies() == 1))
		return false;
	
	return true;
}

// Checks if a player is allowed to be survivor
allowed_survivor(id)
{
	if (g_endround || g_class[id] == SURVIVOR || !g_isalive[id] || task_exists(TASK_WELCOMEMSG) || (!g_newround && g_class[id] >= ZOMBIE && fnGetZombies() == 1))
		return false;
	
	return true;
}

// Checks if a player is allowed to be wesker
allowed_wesker(id)
{
	if (g_endround || g_class[id] == WESKER || !g_isalive[id] || task_exists(TASK_WELCOMEMSG) || (!g_newround && g_class[id] >= ZOMBIE && fnGetZombies() == 1))
		return false;
	
	return true;
}

allowed_sniper(id)
{
	if (g_endround || g_class[id] == SNIPER || !g_isalive[id] || task_exists(TASK_WELCOMEMSG) || (!g_newround && g_class[id] >= ZOMBIE && fnGetZombies() == 1))
		return false;
	
	return true;
}

allowed_predator(id)
{
	if (g_endround || g_class[id] == PREDATOR || !g_isalive[id] || task_exists(TASK_WELCOMEMSG) || (!g_newround && g_class[id] >= ZOMBIE && fnGetZombies() == 1))
		return false;
	
	return true;
}

allowed_angel(id)
{
	if (g_endround || g_class[id] == ANGEL || !g_isalive[id] || task_exists(TASK_WELCOMEMSG) || (!g_newround && g_class[id] >= ZOMBIE && fnGetZombies() == 1))
		return false;
	
	return true;
}

// Checks if a player is allowed to be nemesis
allowed_nemesis(id)
{
	if (g_endround || g_class[id] == NEMESIS || !g_isalive[id] || task_exists(TASK_WELCOMEMSG) || (!g_newround && g_class[id] < ZOMBIE && fnGetHumans() == 1))
		return false;
	
	return true;
}

// Checks if a player is allowed to be alien
allowed_alien(id)
{
	if (g_endround || g_class[id] == ALIEN || !g_isalive[id] || task_exists(TASK_WELCOMEMSG) || (!g_newround && g_class[id] < ZOMBIE && fnGetHumans() == 1))
		return false;
	
	return true;
}

// Checks if a player is allowed to be assassin
allowed_assassin(id)
{
	if (g_endround || g_class[id] == ASSASSIN || !g_isalive[id] || task_exists(TASK_WELCOMEMSG) || (!g_newround && g_class[id] < ZOMBIE && fnGetHumans() == 1))
		return false;
	
	return true;
}

allowed_demon(id)
{
	if (g_endround || g_class[id] == DEMON || !g_isalive[id] || task_exists(TASK_WELCOMEMSG) || (!g_newround && g_class[id] < ZOMBIE && fnGetHumans() == 1))
		return false;
	
	return true;
}

// Checks if a player is allowed to respawn
allowed_respawn(id)
{
	static team
	team = fm_cs_get_user_team(id)
	
	if (g_endround || team == FM_CS_TEAM_SPECTATOR || team == FM_CS_TEAM_UNASSIGNED || g_isalive[id])
		return false;
	
	return true;
}

// Checks if swarm mode is allowed
allowed_swarm()
{
	if (g_endround || !g_newround || task_exists(TASK_WELCOMEMSG))
		return false;
	
	return true;
}

// Checks if multi infection mode is allowed
allowed_multi()
{
	if (g_endround || !g_newround || task_exists(TASK_WELCOMEMSG) || floatround(fnGetAlive()*get_pcvar_float(cvar_multiratio), floatround_ceil) < 2 || floatround(fnGetAlive()*get_pcvar_float(cvar_multiratio), floatround_ceil) >= fnGetAlive())
		return false;
	
	return true;
}

// Checks if plague mode is allowed
allowed_plague()
{
	if (g_endround || !g_newround || task_exists(TASK_WELCOMEMSG) || floatround((fnGetAlive()-(get_pcvar_num(cvar_plaguenemnum)+get_pcvar_num(cvar_plaguesurvnum)))*get_pcvar_float(cvar_plagueratio), floatround_ceil) < 1
	|| fnGetAlive()-(get_pcvar_num(cvar_plaguesurvnum)+get_pcvar_num(cvar_plaguenemnum)+floatround((fnGetAlive()-(get_pcvar_num(cvar_plaguenemnum)+get_pcvar_num(cvar_plaguesurvnum)))*get_pcvar_float(cvar_plagueratio), floatround_ceil)) < 1)
		return false;
	
	return true;
}

// Checks if cooperative mode is allowed
allowed_cooperative()
{
	if (g_endround || !g_newround || task_exists(TASK_WELCOMEMSG) || floatround((fnGetAlive()-(get_pcvar_num(cvar_cooperativesurvnum)+get_pcvar_num(cvar_cooperativewesknum)))*get_pcvar_float(cvar_cooperativeratio), floatround_ceil) < 1
	|| fnGetAlive()-(get_pcvar_num(cvar_cooperativewesknum)+get_pcvar_num(cvar_cooperativesurvnum)+floatround((fnGetAlive()-(get_pcvar_num(cvar_cooperativesurvnum)+get_pcvar_num(cvar_cooperativewesknum)))*get_pcvar_float(cvar_cooperativeratio), floatround_ceil)) < 1)
		return false;
	
	return true;
}

// Checks if nemesis extremo mode is allowed
allowed_nextremo()
{
	if (g_endround || !g_newround || task_exists(TASK_WELCOMEMSG) || floatround((fnGetAlive()-(get_pcvar_num(cvar_nextremonemnum)+get_pcvar_num(cvar_nextremonemnum)))*get_pcvar_float(cvar_nextremoratio), floatround_ceil) < 1
	|| fnGetAlive()-(get_pcvar_num(cvar_nextremonemnum)+get_pcvar_num(cvar_nextremonemnum)+floatround((fnGetAlive()-(get_pcvar_num(cvar_nextremonemnum)+get_pcvar_num(cvar_nextremonemnum)))*get_pcvar_float(cvar_nextremoratio), floatround_ceil)) < 1)
		return false;
	
	return true;
}

// Checks if synapsis mode is allowed
allowed_synapsis()
{
	if (g_endround || !g_newround || task_exists(TASK_WELCOMEMSG) || floatround((fnGetAlive()-(get_pcvar_num(cvar_synapsisnemnum)+get_pcvar_num(cvar_synapsissurvnum)))*get_pcvar_float(cvar_synapsisratio), floatround_ceil) < 1
	|| fnGetAlive()-(get_pcvar_num(cvar_synapsissurvnum)+get_pcvar_num(cvar_synapsisnemnum)+floatround((fnGetAlive()-(get_pcvar_num(cvar_synapsisnemnum)+get_pcvar_num(cvar_synapsissurvnum)))*get_pcvar_float(cvar_synapsisratio), floatround_ceil)) < 1)
		return false;
	
	return true;
}

// Checks if l4d mode is allowed
allowed_l4d()
{
	if (g_endround || !g_newround || task_exists(TASK_WELCOMEMSG))
		return false;
	
	return true;
}

// Checks if armageddon mode is allowed
allowed_armageddon()
{
	if (g_endround || !g_newround || task_exists(TASK_WELCOMEMSG) || floatround(fnGetAlive()*get_pcvar_float(cvar_armageddonratio), floatround_ceil) < 1 || floatround(fnGetAlive()*get_pcvar_float(cvar_armageddonratio), floatround_ceil) >= fnGetAlive())
		return false;
	
	return true;
}

// Checks if crysis mode is allowed
allowed_crysis()
{
	if (g_endround || !g_newround || task_exists(TASK_WELCOMEMSG) || floatround(fnGetAlive()*get_pcvar_float(cvar_crysisratio), floatround_ceil) < 1 || floatround(fnGetAlive()*get_pcvar_float(cvar_crysisratio), floatround_ceil) >= fnGetAlive())
		return false;
	
	return true;
}

// Checks if crysis mode is allowed
allowed_avs()
{
	if (g_endround || !g_newround || task_exists(TASK_WELCOMEMSG) || floatround(fnGetAlive()*get_pcvar_float(cvar_avsratio), floatround_ceil) < 1 || floatround(fnGetAlive()*get_pcvar_float(cvar_avsratio), floatround_ceil) >= fnGetAlive())
		return false;
	
	return true;
}

// Checks if apocalypse mode is allowed
allowed_apocalypse()
{
	if (g_endround || !g_newround || task_exists(TASK_WELCOMEMSG) || floatround(fnGetAlive()*get_pcvar_float(cvar_apocalypseratio), floatround_ceil) < 2 || floatround(fnGetAlive()*get_pcvar_float(cvar_apocalypseratio), floatround_ceil) >= fnGetAlive())
		return false;
	
	return true;
}

// Checks if nightmare mode is allowed
allowed_nightmare()
{
	if (g_endround || !g_newround || task_exists(TASK_WELCOMEMSG) || floatround(fnGetAlive()*get_pcvar_float(cvar_nightmareratio), floatround_ceil) < 2 || floatround(fnGetAlive()*get_pcvar_float(cvar_nightmareratio), floatround_ceil) >= fnGetAlive())
		return false;
	
	return true;
}

// Checks if nightmare mode is allowed
allowed_ultimate()
{
	if (g_endround || !g_newround || task_exists(TASK_WELCOMEMSG) || floatround(fnGetAlive()*get_pcvar_float(cvar_ultimateratio), floatround_ceil) < 3 || floatround(fnGetAlive()*get_pcvar_float(cvar_ultimateratio), floatround_ceil) >= fnGetAlive())
		return false;
	
	return true;
}

// Admin Commands on Players
command_onplayer(id, player, command)
{
	// Show activity
	client_print(0, print_chat, "ADMIN %s - ha %s a %s%s%s", g_playername[id], command < 11 ? "convertido" : "revivido", g_playername[player], command < 11 ? " en " : "", 
	command > 0 ? command > 1 ? command > 2 ? command > 3 ? command > 4 ? command > 5 ? command > 6 ? command > 7 ? command > 8 ? command > 9 ? command > 10 ? "" : "Angel" : "Predator"  : "Sniper" : "Wesker" : "Survivor" : "Demon" : "Assassin" : "Alien" : "Nemesis" : "Humano" : "Zombie")
	
	// Log to Zombie Apocalypse log file?
	if (get_pcvar_num(cvar_logcommands))
	{
		static authid[32], logdata[200]
		get_user_authid(id, authid, charsmax(authid))
		formatex(logdata, charsmax(logdata), "ADMIN %s <%s> - ha %s a %s%s%s", g_playername[id], authid, command < 11 ? "convertido" : "revivido", g_playername[player], command < 11 ? " en " : "", 
		command > 0 ? command > 1 ? command > 2 ? command > 3 ? command > 4 ? command > 5 ? command > 6 ? command > 7 ? command > 8 ? command > 9 ? command > 10 ? "" : "Angel" : "Predator" : "Sniper" : "Wesker" : "Survivor" : "Demon" : "Assassin" : "Alien" : "Nemesis" : "Humano" : "Zombie")
		log_to_file("zombieapocalypse.log", logdata)
	}
	
	switch (command)
	{
		case 0: // zombie
		{
			// New round?
			if (g_newround)
			{
				// Set as first zombie
				remove_task(TASK_MAKEZOMBIE)
				make_a_zombie(MODE_INFECTION, player)
			}
			else
			{
				// Just infect
				zombieme(player, 0, 0, 0, 0)
			}
		}
		case 1: // human
		{
			// Turn to human
			humanme(player, 0, 0)
		}
		case 2: // nemesis
		{
			// New round?
			if (g_newround)
			{
				// Set as first nemesis
				remove_task(TASK_MAKEZOMBIE)
				make_a_zombie(MODE_NEMESIS, player)
			}
			else
			{
				// Turn player into a Nemesis
				zombieme(player, 0, 1, 0, 0)
			}
		}
		case 3: // alien
		{
			// New round?
			if (g_newround)
			{
				// Set as first alien
				remove_task(TASK_MAKEZOMBIE)
				make_a_zombie(MODE_ALIEN, player)
			}
			else
			{
				// Turn player into a Alien
				zombieme(player, 0, 2, 0, 0)
			}
		}
		case 4: // assassin
		{
			// New round?
			if (g_newround)
			{
				// Set as first alien
				remove_task(TASK_MAKEZOMBIE)
				make_a_zombie(MODE_ASSASSIN, player)
			}
			else
			{
				// Turn player into a Assassin
				zombieme(player, 0, 3, 0, 0)
			}
		}
		case 5: // demon
		{
			// New round?
			if (g_newround)
			{
				// Set as first demon
				remove_task(TASK_MAKEZOMBIE)
				make_a_zombie(MODE_DEMON, player)
			}
			else
			{
				// Turn player into a demon
				zombieme(player, 0, 4, 0, 0)
			}
		}
		case 6: // survivor
		{
			// New round?
			if (g_newround)
			{
				// Set as first survivor
				remove_task(TASK_MAKEZOMBIE)
				make_a_zombie(MODE_SURVIVOR, player)
			}
			else
			{
				// Turn player into a Survivor
				humanme(player, 1, 0)
			}
		}
		case 7: // wesker
		{
			// New round?
			if (g_newround)
			{
				// Set as first wesker
				remove_task(TASK_MAKEZOMBIE)
				make_a_zombie(MODE_WESKER, player)
			}
			else
			{
				// Turn player into a Wesker
				humanme(player, 2, 0)
			}
		}
		case 8: // sniper
		{
			// New round?
			if (g_newround)
			{
				// Set as first wesker
				remove_task(TASK_MAKEZOMBIE)
				make_a_zombie(MODE_SNIPER, player)
			}
			else
			{
				// Turn player into a Sniper
				humanme(player, 3, 0)
			}
		}
		case 9: // predator
		{
			// New round?
			if (g_newround)
			{
				// Set as first wesker
				remove_task(TASK_MAKEZOMBIE)
				make_a_zombie(MODE_PREDATOR, player)
			}
			else
			{
				// Turn player into a Sniper
				humanme(player, 4, 0)
			}
		}
		case 10: // angel
		{
			// New round?
			if (g_newround)
			{
				// Set as first wesker
				remove_task(TASK_MAKEZOMBIE)
				make_a_zombie(MODE_ANGEL, player)
			}
			else
			{
				// Turn player into a Sniper
				humanme(player, 5, 0)
			}
		}
		case 11: // respawn
		{
			// Respawn as zombie?
			if (get_pcvar_num(cvar_deathmatch) == 2 || (get_pcvar_num(cvar_deathmatch) == 3 && random_num(0, 1)) || (get_pcvar_num(cvar_deathmatch) == 4 && fnGetZombies() < fnGetAlive()/2))
				g_respawn_as_zombie[player] = true
	
			// Override respawn as zombie setting on nemesis, alien, survivor and wesker rounds
			if ((g_currentmode == MODE_SURVIVOR || g_currentmode == MODE_WESKER)) g_respawn_as_zombie[player] = true
			else if ((g_currentmode == MODE_NEMESIS || g_currentmode == MODE_ALIEN)) g_respawn_as_zombie[player] = false
	
			respawn_player_manually(player);
		}
	}
}

// Admin Command Modes
command_modes(id, command)
{
	// Show activity
	client_print(0, print_chat, "ADMIN %s - comienza Modo %s", g_playername[id], command > 0 ? command > 1 ? command > 2 ? command > 3 ? command > 4 ? command > 5 ? command > 6 ? command > 7 ? command > 8 ? command > 9 ? command > 10 ? command > 11 ?
	"Ultimate" : "Nightmare" : "Apocalypse" : "Assassins vs Snipers" : "Crysis" : "Armageddon" : "Left 4 Dead" : "Synapsis" : "Nemesis Extremo" : "Cooperative" : "Plague" : "Swarm" : "Multiple Infeccion")
	
	// Log to Zombie Apocalypse log file?
	if (get_pcvar_num(cvar_logcommands))
	{
		static authid[32], logdata[200]
		get_user_authid(id, authid, charsmax(authid))
		formatex(logdata, charsmax(logdata), "ADMIN %s <%s> - comienza Modo %s", g_playername[id], authid, command > 0 ? command > 1 ? command > 2 ? command > 3 ? command > 4 ? command > 5 ? command > 6 ? command > 7 ? command > 8 ? command > 9 ? command > 10 ? command > 11 ?
		"Ultimate" : "Nightmare" : "Apocalypse" : "Assassins vs Snipers" : "Crysis" : "Armageddon" : "Left 4 Dead" : "Synapsis" : "Nemesis Extremo" : "Cooperative" : "Plague" : "Swarm" : "Multiple Infeccion")
		log_to_file("zombie_escape.log", logdata)
	}
	
	switch (command)
	{
		case 0: // Call Multi Infection
		{
			remove_task(TASK_MAKEZOMBIE)
			make_a_zombie(MODE_MULTI, 0)
		}
		case 1: // Call Swarm Mode
		{
			remove_task(TASK_MAKEZOMBIE)
			make_a_zombie(MODE_SWARM, 0)
		}
		case 2: // Call Plague Mode
		{
			remove_task(TASK_MAKEZOMBIE)
			make_a_zombie(MODE_PLAGUE, 0)
		}
		case 3: // Call Cooperative Mode
		{
			remove_task(TASK_MAKEZOMBIE)
			make_a_zombie(MODE_COOPERATIVE, 0)
		}
		case 4: // Call Nemesis Extremo Mode
		{
			remove_task(TASK_MAKEZOMBIE)
			make_a_zombie(MODE_NEXTREMO, 0)
		}
		case 5: // Call Synapsis Mode
		{
			remove_task(TASK_MAKEZOMBIE)
			make_a_zombie(MODE_SYNAPSIS, 0)
		}
		case 6: // Call Left 4 Dead Mode
		{
			remove_task(TASK_MAKEZOMBIE)
			make_a_zombie(MODE_L4D, 0)
		}
		case 7: // Call Armageddon Mode
		{
			remove_task(TASK_MAKEZOMBIE)
			make_a_zombie(MODE_ARMAGEDDON, 0)
		}
		case 8: // Call Crysis Mode
		{
			remove_task(TASK_MAKEZOMBIE)
			make_a_zombie(MODE_CRYSIS, 0)
		}
		case 9: // Call Assassins vs Snipers Mode
		{
			remove_task(TASK_MAKEZOMBIE)
			make_a_zombie(MODE_AVS, 0)
		}
		case 10: // Call Apocalypse Mode
		{
			remove_task(TASK_MAKEZOMBIE)
			make_a_zombie(MODE_APOCALYPSE, 0)
		}
		case 11: // Call Nightmare Mode
		{
			remove_task(TASK_MAKEZOMBIE)
			make_a_zombie(MODE_NIGHTMARE, 0)
		}
		case 12: // Call Ultimate Mode
		{
			remove_task(TASK_MAKEZOMBIE)
			make_a_zombie(MODE_ULTIMATE, 0)
		}
	}
}

// Set proper maxspeed for player
set_player_maxspeed(id)
{
	// If frozen, prevent from moving
	if (g_frozen[id])
	{
		set_pev(id, pev_maxspeed, 1.0)
	}
	// Otherwise, set maxspeed directly
	else
	{
		if (g_class[id] >= ZOMBIE)
		{
			if (g_class[id] == NEMESIS)
				set_pev(id, pev_maxspeed, get_pcvar_float(cvar_nemspd))
			else if (g_class[id] == ALIEN)
				set_pev(id, pev_maxspeed, get_pcvar_float(cvar_alispd))
			else if (g_class[id] == ASSASSIN)
				set_pev(id, pev_maxspeed, get_pcvar_float(cvar_assspd))	
			else if (g_class[id] == DEMON)
				set_pev(id, pev_maxspeed, get_pcvar_float(cvar_demspd))	
			else
				set_pev(id, pev_maxspeed, g_zombie_spd[id] + ammount_zspeed(g_level[id]))
		}
		else
		{
			if (g_class[id] == SURVIVOR)
				set_pev(id, pev_maxspeed, get_pcvar_float(cvar_survspd))
			else if (g_class[id] == WESKER)
				set_pev(id, pev_maxspeed, get_pcvar_float(cvar_weskspd))
			else if (g_class[id] == SNIPER)
				set_pev(id, pev_maxspeed, get_pcvar_float(cvar_snipspd))
			else if (g_class[id] == PREDATOR)
				set_pev(id, pev_maxspeed, get_pcvar_float(cvar_predspd))
			else if (g_class[id] == ANGEL)
				set_pev(id, pev_maxspeed, get_pcvar_float(cvar_angspd))	
			else
				set_pev(id, pev_maxspeed, g_human_spd[id] + ammount_hspeed(g_level[id]))
		}
	}
}

/*================================================================================
 [Custom Natives]
=================================================================================*/

// Native: za_get_user_status
public native_get_user_status(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	return g_status[id];
}

// Native: zp_get_user_zombie
public native_get_user_zombie(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	if (g_class[id] >= ZOMBIE) return true;
	
	return false;
}

// Native: zp_get_user_madness
public native_get_user_madness(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	return g_madness[id];
}

// Native: zp_get_user_frozen
public native_get_user_frozen(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	return g_frozen[id];
}

// Native: zp_get_user_burn
public native_get_user_burn(id)
{
	burn_player(id, 1)
}

// Native: zp_get_user_freeze
public native_get_user_freeze(id)
{
	freeze_player(id, 1)
}

// Native: zp_get_user_nemesis
public native_get_user_nemesis(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	if (g_class[id] == NEMESIS) return true;
	
	return false;
}

// Native: za_get_user_alien
public native_get_user_alien(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	if (g_class[id] == ALIEN) return true;
	
	return false;
}

// Native: zp_get_user_assassin
public native_get_user_assassin(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	if (g_class[id] == ASSASSIN) return true;
	
	return false;
}

public native_get_user_demon(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	if (g_class[id] == DEMON) return true;
	
	return false;
}

// Native: zp_get_user_survivor
public native_get_user_survivor(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	if (g_class[id] == SURVIVOR) return true;
	
	return false;
}

// Native: za_get_user_wesker
public native_get_user_wesker(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	if (g_class[id] == WESKER) return true;
	
	return false;
}

// Native: zp_get_user_sniper
public native_get_user_sniper(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	if (g_class[id] == SNIPER) return true;
	
	return false;
}

public native_get_user_predator(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	if (g_class[id] == PREDATOR) return true;
	
	return false;
}

public native_get_user_angel(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	if (g_class[id] == ANGEL) return true;
	
	return false;
}

// Native: zp_get_user_first_zombie
public native_get_user_first_zombie(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	if (g_class[id] == FIRST_ZOMBIE) return true;
	
	return false;
}

// Native: zp_get_user_last_zombie
public native_get_user_last_zombie(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	if (g_class[id] == LAST_ZOMBIE) return true;
	
	return false;
}

// Native: zp_get_user_last_human
public native_get_user_last_human(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	if (g_class[id] == LAST_HUMAN) return true;
	
	return false;
}

// Native: za_get_user_human_class
public native_get_user_human_class(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	return g_humanclass[id];
}

// Native: zp_get_user_zombie_class
public native_get_user_zombie_class(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	return g_zombieclass[id];
}

// Native: za_get_user_next_hclass
public native_get_user_next_hclass(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	return g_humanclassnext[id];
}

// Native: zp_get_user_next_zclass
public native_get_user_next_zclass(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	return g_zombieclassnext[id];
}

// Native: za_set_user_human_class
public native_set_user_human_class(id, classid)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return false;
	}
	
	if (classid < 0 || classid >= g_hclass_i)
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid human class id (%d)", classid)
		return false;
	}
	
	g_humanclassnext[id] = classid
	return true;
}

// Native: zp_set_user_zombie_class
public native_set_user_zombie_class(id, classid)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return false;
	}
	
	if (classid < 0 || classid >= g_zclass_i)
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid zombie class id (%d)", classid)
		return false;
	}
	
	g_zombieclassnext[id] = classid
	return true;
}

// Native: za_get_user_level
public native_get_user_level(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	return g_level[id];
}

// Native: za_set_user_level
public native_set_user_level(id, level)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return false;
	}
	
	if (level > g_max_level)
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Level (Max: %d)", g_max_level)
		return false;
	}
	
	g_level[id] = level;
	return true;
}

// Native: za_get_user_fame
public native_get_user_fame(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	return g_fame[id];
}

// Native: za_set_user_fame
public native_set_user_fame(id, fame)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return false;
	}
	
	if (fame > g_max_fame)
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Fame (Max: %d)", g_max_fame)
		return false;
	}
	
	g_fame[id] = fame;
	return true;
}

// Native: za_get_user_experience
public native_get_user_experience(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	return g_experience[id];
}

// Native: za_set_user_experience
public native_set_user_experience(id, amount)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return false;
	}
	
	g_experience[id] = amount;
	return true;
}

// Native: zp_get_user_ammo_packs
public native_get_user_ammo_packs(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	return g_ammopacks[id][0];
}

// Native: zp_set_user_ammo_packs
public native_set_user_ammo_packs(id, amount)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return false;
	}
	
	g_ammopacks[id][0] = amount;
	return true;
}

// Native: za_get_user_hpoints
public native_get_user_hpoints(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	return g_points[id][0];
}

// Native: za_set_user_hpoints
public native_set_user_hpoints(id, amount)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return false;
	}
	
	g_points[id][0] = amount;
	return true;
}

// Native: za_get_user_zpoints
public native_get_user_zpoints(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	return g_points[id][1];
}

// Native: za_set_user_zpoints
public native_set_user_zpoints(id, amount)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return false;
	}
	
	g_points[id][1] = amount;
	return true;
}

public native_get_user_levelup(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	return update_level(id);
}

// Native: zp_get_zombie_maxhealth
public native_get_zombie_maxhealth(id)
{
	// ZA disabled
	if (!g_pluginenabled) return -1;
	
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	if (g_class[id] < ZOMBIE || g_class[id] >= NEMESIS)
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Player not a normal zombie (%d)", id)
		return -1;
	}
	
	if (g_class[id] == FIRST_ZOMBIE)
		return floatround((float(ArrayGetCell(g_zclass_hp, g_zombieclass[id])) + ammount_zhealth(g_level[id])) * get_pcvar_float(cvar_zombiefirsthp));
	
	return ArrayGetCell(g_zclass_hp, g_zombieclass[id]) + ammount_zhealth(g_level[id]);
	
}

// Native: zp_get_user_batteries
public native_get_user_batteries(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	return g_flashbattery[id];
}

// Native: zp_set_user_batteries
public native_set_user_batteries(id, value)
{
	// ZA disabled
	if (!g_pluginenabled) return false;
	
	if (!is_user_valid_connected(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return false;
	}
	
	g_flashbattery[id] = clamp(value, 0, 100);
	
	// Set the flashlight charge task to update battery status
	remove_task(id+TASK_CHARGE)
	set_task(1.0, "flashlight_charge", id+TASK_CHARGE, _, _, "b")
	return true;
}

// Native: zp_get_user_nightvision
public native_get_user_nightvision(id)
{
	if (!is_user_valid(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return -1;
	}
	
	return g_nvision[id];
}

// Native: zp_set_user_nightvision
public native_set_user_nightvision(id, set)
{
	// ZA disabled
	if (!g_pluginenabled) return false;
	
	if (!is_user_valid_connected(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return false;
	}
	
	if (set)
	{
		g_nvision[id] = true
		
		if (!g_isbot[id])
		{
			g_nvisionenabled[id] = true
			
			// Custom nvg
			remove_task(id+TASK_NVISION)
			set_task(0.1, "set_user_nvision", id+TASK_NVISION, _, _, "b")
		}
		else
			cs_set_user_nvg(id, 1)
	}
	else
	{
		// Remove CS nightvision if player owns one (bugfix)
		cs_set_user_nvg(id, 0)
		
		remove_task(id+TASK_NVISION)
		g_nvision[id] = g_nvisionenabled[id] = false
	}
	return true;
}

// Native: zp_infect_user
public native_infect_user(id, infector, silent, rewards)
{
	// ZA disabled
	if (!g_pluginenabled) return false;
	
	if (!is_user_valid_alive(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return false;
	}
	
	// Not allowed to be zombie
	if (!allowed_zombie(id)) return false;
	
	// New round?
	if (g_newround)
	{
		// Set as first zombie
		remove_task(TASK_MAKEZOMBIE)
		make_a_zombie(MODE_INFECTION, id)
	}
	else
	{
		// Just infect (plus some checks)
		zombieme(id, is_user_valid_alive(infector) ? infector : 0, 0, (silent == 1) ? 1 : 0, (rewards == 1) ? 1 : 0)
	}
	return true;
}

// Native: zp_disinfect_user
public native_disinfect_user(id, silent)
{
	// ZA disabled
	if (!g_pluginenabled) return false;
	
	if (!is_user_valid_alive(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return false;
	}
	
	// Not allowed to be human
	if (!allowed_human(id)) return false;
	
	// Turn to human
	humanme(id, 0, (silent == 1) ? 1 : 0)
	return true;
}

// Native: zp_make_user_nemesis
public native_make_user_nemesis(id)
{
	// ZA disabled
	if (!g_pluginenabled) return false;
	
	if (!is_user_valid_alive(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return false;
	}
	
	// Not allowed to be nemesis
	if (!allowed_nemesis(id)) return false;
	
	// New round?
	if (g_newround)
	{
		// Set as first nemesis
		remove_task(TASK_MAKEZOMBIE)
		make_a_zombie(MODE_NEMESIS, id)
	}
	else
	{
		// Turn player into a Nemesis
		zombieme(id, 0, 1, 0, 0)
	}
	return true;
}

// Native: za_make_user_alien
public native_make_user_alien(id)
{
	// ZA disabled
	if (!g_pluginenabled) return false;
	
	if (!is_user_valid_alive(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return false;
	}
	
	// Not allowed to be alien
	if (!allowed_alien(id)) return false;
	
	// New round?
	if (g_newround)
	{
		// Set as first alien
		remove_task(TASK_MAKEZOMBIE)
		make_a_zombie(MODE_ALIEN, id)
	}
	else
	{
		// Turn player into a Alien
		zombieme(id, 0, 2, 0, 0)
	}
	return true;
}

// Native: zp_make_user_assassin
public native_make_user_assassin(id)
{
	// ZA disabled
	if (!g_pluginenabled) return false;
	
	if (!is_user_valid_alive(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return false;
	}
	
	// Not allowed to be nemesis
	if (!allowed_assassin(id)) return false;
	
	// New round?
	if (g_newround)
	{
		// Set as first assassin
		remove_task(TASK_MAKEZOMBIE)
		make_a_zombie(MODE_ASSASSIN, id)
	}
	else
	{
		// Turn player into a Assassin
		zombieme(id, 0, 3, 0, 0)
	}
	return true;
}

// Native: zp_make_user_survivor
public native_make_user_survivor(id)
{
	// ZA disabled
	if (!g_pluginenabled) return false;
	
	if (!is_user_valid_alive(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return false;
	}
	
	// Not allowed to be survivor
	if (!allowed_survivor(id)) return false;
	
	// New round?
	if (g_newround)
	{
		// Set as first survivor
		remove_task(TASK_MAKEZOMBIE)
		make_a_zombie(MODE_SURVIVOR, id)
	}
	else
	{
		// Turn player into a Survivor
		humanme(id, 1, 0)
	}
	return true;
}

// Native: za_make_user_wesker
public native_make_user_wesker(id)
{
	// ZA disabled
	if (!g_pluginenabled) return false;
	
	if (!is_user_valid_alive(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return false;
	}
	
	// Not allowed to be wesker
	if (!allowed_wesker(id)) return false;
	
	// New round?
	if (g_newround)
	{
		// Set as first wesker
		remove_task(TASK_MAKEZOMBIE)
		make_a_zombie(MODE_WESKER, id)
	}
	else
	{
		// Turn player into a Wesker
		humanme(id, 2, 0)
	}
	return true;
}

// Native: zp_make_user_sniper
public native_make_user_sniper(id)
{
	// ZA disabled
	if (!g_pluginenabled) return false;
	
	if (!is_user_valid_alive(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return false;
	}
	
	// Not allowed to be survivor
	if (!allowed_sniper(id)) return false;
	
	// New round?
	if (g_newround)
	{
		// Set as first survivor
		remove_task(TASK_MAKEZOMBIE)
		make_a_zombie(MODE_SNIPER, id)
	}
	else
	{
		// Turn player into a Survivor
		humanme(id, 3, 0)
	}
	return true;
}

// Native: zp_respawn_user
public native_respawn_user(id, team)
{
	// ZA disabled
	if (!g_pluginenabled) return false;
	
	if (!is_user_valid_connected(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return false;
	}
	
	// Respawn not allowed
	if (!allowed_respawn(id)) return false;
	
	// Respawn as zombie?
	g_respawn_as_zombie[id] = (team == ZP_TEAM_ZOMBIE) ? true : false
	
	// Respawnish!
	respawn_player_manually(id)
	return true;
}

// Native: zp_force_buy_extra_item
public native_force_buy_extra_item(id, itemid, ignorecost)
{
	// ZA disabled
	if (!g_pluginenabled) return false;
	
	if (!is_user_valid_alive(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return false;
	}
	
	if (itemid < 0 || itemid >= g_extraitem_i)
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid extra item id (%d)", itemid)
		return false;
	}
	
	buy_extra_item(id, itemid, ignorecost)
	return true;
}

// Native: zp_override_user_model
public native_override_user_model(id, const newmodel[])
{
	// ZA disabled
	if (!g_pluginenabled) return false;
	
	if (!is_user_valid_connected(id))
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid Player (%d)", id)
		return false;
	}
	
	// Strings passed byref
	param_convert(2)
	
	copy(g_playermodel[id], charsmax(g_playermodel[]), newmodel)
	cs_set_player_model(id, g_playermodel[id])
	return true;
}

// Native: zp_has_round_started
public native_has_round_started()
{
	if (g_newround) return 0; // not started
	if (g_modestarted) return 1; // started
	return 2; // starting
}

// Native: zp_is_nemesis_round
public native_is_nemesis_round()
{
	if (g_currentmode == MODE_NEMESIS) return true;
	return false;
}

// Native: za_is_alien_round
public native_is_alien_round()
{
	if (g_currentmode == MODE_ALIEN) return true;
	return false;
}

// Native: zp_is_survivor_round
public native_is_survivor_round()
{
	if (g_currentmode == MODE_SURVIVOR) return true;
	return false;
}

// Native: za_is_wesker_round
public native_is_wesker_round()
{
	if (g_currentmode == MODE_WESKER) return true;
	return false;
}

// Native: zp_is_sniper_round
public native_is_sniper_round()
{
	if (g_currentmode == MODE_SNIPER) return true;
	return false;
}

// Native: zp_is_swarm_round
public native_is_swarm_round()
{
	if (g_currentmode == MODE_SWARM) return true;
	return false;
}

// Native: zp_is_plague_round
public native_is_plague_round()
{
	if (g_currentmode == MODE_PLAGUE) return true;
	return false;
}

public native_is_cooperative_round()
{
	if (g_currentmode == MODE_COOPERATIVE) return true;
	return false;
}

// Native: za_is_synapsis_round
public native_is_synapsis_round()
{
	if (g_currentmode == MODE_SYNAPSIS) return true;
	return false;
}

// Native: za_is_armageddon_round
public native_is_armageddon_round()
{
	if (g_currentmode == MODE_ARMAGEDDON) return true;
	return false;
}

// Native: za_is_crysis_round
public native_is_crysis_round()
{
	if (g_currentmode == MODE_CRYSIS) return true;
	return false;
}

// Native: zp_get_zombie_count
public native_get_zombie_count()
{
	return fnGetZombies();
}

// Native: zp_get_human_count
public native_get_human_count()
{
	return fnGetHumans();
}

// Native: zp_get_nemesis_count
public native_get_nemesis_count()
{
	return fnGetNemesis();
}

// Native: za_get_alien_count
public native_get_alien_count()
{
	return fnGetAliens();
}

// Native: zp_get_survivor_count
public native_get_survivor_count()
{
	return fnGetSurvivors();
}

// Native: za_get_wesker_count
public native_get_wesker_count()
{
	return fnGetWeskers();
}

// Native: za_register_extra_item
public native_register_extra_item(const name[], lvl, cost, team)
{
	// ZA disabled
	if (!g_pluginenabled) return -1;
	
	// Strings passed byref
	param_convert(1)
	
	// Arrays not yet initialized
	if (!g_arrays_created)
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Can't register extra item yet (%s)", name)
		return -1;
	}
	
	if (strlen(name) < 1)
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Can't register extra item with an empty name")
		return -1;
	}
	
	new index, extraitem_name[32]
	for (index = 0; index < g_extraitem_i; index++)
	{
		ArrayGetString(g_extraitem_name, index, extraitem_name, charsmax(extraitem_name))
		if (equali(name, extraitem_name))
		{
			log_error(AMX_ERR_NATIVE, "[ZE] Extra item already registered (%s)", name)
			return -1;
		}
	}
	
	// For backwards compatibility
	if (team == ZP_TEAM_ANY) team = (ZP_TEAM_ZOMBIE|ZP_TEAM_HUMAN)
	
	// Add the item
	ArrayPushString(g_extraitem_name, name)
	ArrayPushCell(g_extraitem_lvl, lvl)
	ArrayPushCell(g_extraitem_cost, cost)
	ArrayPushCell(g_extraitem_team, team)
	
	// Set temporary new item flag
	ArrayPushCell(g_extraitem_new, 1)
	
	// Override extra items data with our customizations
	new i, buffer[32], size = ArraySize(g_extraitem2_realname)
	for (i = 0; i < size; i++)
	{
		ArrayGetString(g_extraitem2_realname, i, buffer, charsmax(buffer))
		
		// Check if this is the intended item to override
		if (!equal(name, buffer)) continue;
		
		// Remove new item flag
		ArraySetCell(g_extraitem_new, g_extraitem_i, 0)
		
		// Replace caption
		ArrayGetString(g_extraitem2_name, i, buffer, charsmax(buffer))
		ArraySetString(g_extraitem_name, g_extraitem_i, buffer)
		
		// Replace level
		buffer[0] = ArrayGetCell(g_extraitem2_lvl, i)
		ArraySetCell(g_extraitem_lvl, g_extraitem_i, buffer[0])
		
		// Replace cost
		buffer[0] = ArrayGetCell(g_extraitem2_cost, i)
		ArraySetCell(g_extraitem_cost, g_extraitem_i, buffer[0])
		
		// Replace team
		buffer[0] = ArrayGetCell(g_extraitem2_team, i)
		ArraySetCell(g_extraitem_team, g_extraitem_i, buffer[0])
	}
	
	// Increase registered items counter
	g_extraitem_i++
	
	// Return id under which we registered the item
	return g_extraitem_i-1;
}

// Function: za_register_extra_item (to be used within this plugin only)
native_register_extra_item2(const name[], lvl, cost, team)
{
	// Add the item
	ArrayPushString(g_extraitem_name, name)
	ArrayPushCell(g_extraitem_lvl, lvl)
	ArrayPushCell(g_extraitem_cost, cost)
	ArrayPushCell(g_extraitem_team, team)
	
	// Set temporary new item flag
	ArrayPushCell(g_extraitem_new, 1)
	
	// Increase registered items counter
	g_extraitem_i++
}

// Native: za_register_human_class
public native_register_human_class(const name[], const info[], const model[], lvl, hp, speed, Float:gravity)
{
	// ZA disabled
	if (!g_pluginenabled) return -1;
	
	// Strings passed byref
	param_convert(1)
	param_convert(2)
	param_convert(3)
	
	// Arrays not yet initialized
	if (!g_arrays_created)
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Can't register human class yet (%s)", name)
		return -1;
	}
	
	if (strlen(name) < 1)
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Can't register human class with an empty name")
		return -1;
	}
	
	new index, humanclass_name[32]
	for (index = 0; index < g_hclass_i; index++)
	{
		ArrayGetString(g_hclass_name, index, humanclass_name, charsmax(humanclass_name))
		if (equali(name, humanclass_name))
		{
			log_error(AMX_ERR_NATIVE, "[ZE] Human class already registered (%s)", name)
			return -1;
		}
	}
	
	// Add the class
	ArrayPushString(g_hclass_name, name)
	ArrayPushString(g_hclass_info, info)
	
	// Using same human models for all classes?
	if (g_same_models_humans)
	{
		ArrayPushCell(g_hclass_modelsstart, 0)
		ArrayPushCell(g_hclass_modelsend, ArraySize(g_hclass_playermodel))
	}
	else
	{
		ArrayPushCell(g_hclass_modelsstart, ArraySize(g_hclass_playermodel))
		ArrayPushString(g_hclass_playermodel, model)
		ArrayPushCell(g_hclass_modelsend, ArraySize(g_hclass_playermodel))
		ArrayPushCell(g_hclass_modelindex, -1)
	}
	
	ArrayPushCell(g_hclass_lvl, lvl)
	ArrayPushCell(g_hclass_hp, hp)
	ArrayPushCell(g_hclass_spd, speed)
	ArrayPushCell(g_hclass_grav, gravity)
	
	// Set temporary new class flag
	ArrayPushCell(g_hclass_new, 1)
	
	// Override human classes data with our customizations
	new i, k, buffer[72], Float:buffer2, nummodels_custom, nummodels_default, prec_mdl[100], size = ArraySize(g_hclass2_realname)
	for (i = 0; i < size; i++)
	{
		ArrayGetString(g_hclass2_realname, i, buffer, charsmax(buffer))
		
		// Check if this is the intended class to override
		if (!equal(name, buffer)) continue;
		
		// Remove new class flag
		ArraySetCell(g_hclass_new, g_hclass_i, 0)
		
		// Replace caption
		ArrayGetString(g_hclass2_name, i, buffer, charsmax(buffer))
		ArraySetString(g_hclass_name, g_hclass_i, buffer)
		
		// Replace info
		ArrayGetString(g_hclass2_info, i, buffer, charsmax(buffer))
		ArraySetString(g_hclass_info, g_hclass_i, buffer)
		
		// Replace models, unless using same models for all classes
		if (!g_same_models_humans)
		{
			nummodels_custom = ArrayGetCell(g_hclass2_modelsend, i) - ArrayGetCell(g_hclass2_modelsstart, i)
			nummodels_default = ArrayGetCell(g_hclass_modelsend, g_hclass_i) - ArrayGetCell(g_hclass_modelsstart, g_hclass_i)
			
			// Replace each player model and model index
			for (k = 0; k < min(nummodels_custom, nummodels_default); k++)
			{
				ArrayGetString(g_hclass2_playermodel, ArrayGetCell(g_hclass2_modelsstart, i) + k, buffer, charsmax(buffer))
				ArraySetString(g_hclass_playermodel, ArrayGetCell(g_hclass_modelsstart, g_hclass_i) + k, buffer)
				
				// Precache player model and replace its modelindex with the real one
				formatex(prec_mdl, charsmax(prec_mdl), "models/player/%s/%s.mdl", buffer, buffer)
				ArraySetCell(g_hclass_modelindex, ArrayGetCell(g_hclass_modelsstart, g_hclass_i) + k, engfunc(EngFunc_PrecacheModel, prec_mdl))
				if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, prec_mdl)
				if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, prec_mdl)
				// Precache modelT.mdl files too
				copy(prec_mdl[strlen(prec_mdl)-4], charsmax(prec_mdl) - (strlen(prec_mdl)-4), "T.mdl")
				if (file_exists(prec_mdl)) engfunc(EngFunc_PrecacheModel, prec_mdl)
			}
			
			// We have more custom models than what we can accommodate,
			// Let's make some space...
			if (nummodels_custom > nummodels_default)
			{
				for (k = nummodels_default; k < nummodels_custom; k++)
				{
					ArrayGetString(g_hclass2_playermodel, ArrayGetCell(g_hclass2_modelsstart, i) + k, buffer, charsmax(buffer))
					ArrayInsertStringAfter(g_hclass_playermodel, ArrayGetCell(g_hclass_modelsstart, g_hclass_i) + k - 1, buffer)
					
					// Precache player model and retrieve its modelindex
					formatex(prec_mdl, charsmax(prec_mdl), "models/player/%s/%s.mdl", buffer, buffer)
					ArrayInsertCellAfter(g_hclass_modelindex, ArrayGetCell(g_hclass_modelsstart, g_hclass_i) + k - 1, engfunc(EngFunc_PrecacheModel, prec_mdl))
					if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, prec_mdl)
					if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, prec_mdl)
					// Precache modelT.mdl files too
					copy(prec_mdl[strlen(prec_mdl)-4], charsmax(prec_mdl) - (strlen(prec_mdl)-4), "T.mdl")
					if (file_exists(prec_mdl)) engfunc(EngFunc_PrecacheModel, prec_mdl)
				}
				
				// Fix models end index for this class
				ArraySetCell(g_hclass_modelsend, g_hclass_i, ArrayGetCell(g_hclass_modelsend, g_hclass_i) + (nummodels_custom - nummodels_default))
			}
			
			/* --- Not needed since classes can't have more than 1 default model for now ---
			// We have less custom models than what this class has by default,
			// Get rid of those extra entries...
			if (nummodels_custom < nummodels_default)
			{
				for (k = nummodels_custom; k < nummodels_default; k++)
				{
					ArrayDeleteItem(g_hclass_playermodel, ArrayGetCell(g_hclass_modelsstart, g_hclass_i) + nummodels_custom)
				}
				
				// Fix models end index for this class
				ArraySetCell(g_hclass_modelsend, g_hclass_i, ArrayGetCell(g_hclass_modelsend, g_hclass_i) - (nummodels_default - nummodels_custom))
			}
			*/
		}
		
		// Replace level
		buffer[0] = ArrayGetCell(g_hclass2_lvl, i)
		ArraySetCell(g_hclass_lvl, g_hclass_i, buffer[0])
		
		// Replace health
		buffer[0] = ArrayGetCell(g_hclass2_hp, i)
		ArraySetCell(g_hclass_hp, g_hclass_i, buffer[0])
		
		// Replace speed
		buffer[0] = ArrayGetCell(g_hclass2_spd, i)
		ArraySetCell(g_hclass_spd, g_hclass_i, buffer[0])
		
		// Replace gravity
		buffer2 = Float:ArrayGetCell(g_hclass2_grav, i)
		ArraySetCell(g_hclass_grav, g_hclass_i, buffer2)
	}
	
	// If class was not overriden with customization data
	if (ArrayGetCell(g_hclass_new, g_hclass_i))
	{
		// If not using same models for all classes
		if (!g_same_models_humans)
		{
			// Precache default class model and replace modelindex with the real one
			formatex(prec_mdl, charsmax(prec_mdl), "models/player/%s/%s.mdl", model, model)
			ArraySetCell(g_hclass_modelindex, ArrayGetCell(g_hclass_modelsstart, g_hclass_i), engfunc(EngFunc_PrecacheModel, prec_mdl))
			if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, prec_mdl)
			if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, prec_mdl)
			// Precache modelT.mdl files too
			copy(prec_mdl[strlen(prec_mdl)-4], charsmax(prec_mdl) - (strlen(prec_mdl)-4), "T.mdl")
			if (file_exists(prec_mdl)) engfunc(EngFunc_PrecacheModel, prec_mdl)
		}
	}
	
	// Increase registered classes counter
	g_hclass_i++
	
	// Return id under which we registered the class
	return g_hclass_i-1;
}

// Native: za_register_zombie_class
public native_register_zombie_class(const name[], const info[], const model[], const clawmodel[], lvl, hp, speed, Float:gravity, Float:knockback)
{
	// ZA disabled
	if (!g_pluginenabled) return -1;
	
	// Strings passed byref
	param_convert(1)
	param_convert(2)
	param_convert(3)
	param_convert(4)
	
	// Arrays not yet initialized
	if (!g_arrays_created)
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Can't register zombie class yet (%s)", name)
		return -1;
	}
	
	if (strlen(name) < 1)
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Can't register zombie class with an empty name")
		return -1;
	}
	
	new index, zombieclass_name[32]
	for (index = 0; index < g_zclass_i; index++)
	{
		ArrayGetString(g_zclass_name, index, zombieclass_name, charsmax(zombieclass_name))
		if (equali(name, zombieclass_name))
		{
			log_error(AMX_ERR_NATIVE, "[ZE] Zombie class already registered (%s)", name)
			return -1;
		}
	}
	
	// Add the class
	ArrayPushString(g_zclass_name, name)
	ArrayPushString(g_zclass_info, info)
	
	// Using same zombie models for all classes?
	if (g_same_models_zombies)
	{
		ArrayPushCell(g_zclass_modelsstart, 0)
		ArrayPushCell(g_zclass_modelsend, ArraySize(g_zclass_playermodel))
	}
	else
	{
		ArrayPushCell(g_zclass_modelsstart, ArraySize(g_zclass_playermodel))
		ArrayPushString(g_zclass_playermodel, model)
		ArrayPushCell(g_zclass_modelsend, ArraySize(g_zclass_playermodel))
		ArrayPushCell(g_zclass_modelindex, -1)
	}
	
	ArrayPushString(g_zclass_clawmodel, clawmodel)
	ArrayPushCell(g_zclass_lvl, lvl)
	ArrayPushCell(g_zclass_hp, hp)
	ArrayPushCell(g_zclass_spd, speed)
	ArrayPushCell(g_zclass_grav, gravity)
	ArrayPushCell(g_zclass_kb, knockback)
	
	// Set temporary new class flag
	ArrayPushCell(g_zclass_new, 1)
	
	// Override zombie classes data with our customizations
	new i, k, buffer[72], Float:buffer2, nummodels_custom, nummodels_default, prec_mdl[100], size = ArraySize(g_zclass2_realname)
	for (i = 0; i < size; i++)
	{
		ArrayGetString(g_zclass2_realname, i, buffer, charsmax(buffer))
		
		// Check if this is the intended class to override
		if (!equal(name, buffer)) continue;
		
		// Remove new class flag
		ArraySetCell(g_zclass_new, g_zclass_i, 0)
		
		// Replace caption
		ArrayGetString(g_zclass2_name, i, buffer, charsmax(buffer))
		ArraySetString(g_zclass_name, g_zclass_i, buffer)
		
		// Replace info
		ArrayGetString(g_zclass2_info, i, buffer, charsmax(buffer))
		ArraySetString(g_zclass_info, g_zclass_i, buffer)
		
		// Replace models, unless using same models for all classes
		if (!g_same_models_zombies)
		{
			nummodels_custom = ArrayGetCell(g_zclass2_modelsend, i) - ArrayGetCell(g_zclass2_modelsstart, i)
			nummodels_default = ArrayGetCell(g_zclass_modelsend, g_zclass_i) - ArrayGetCell(g_zclass_modelsstart, g_zclass_i)
			
			// Replace each player model and model index
			for (k = 0; k < min(nummodels_custom, nummodels_default); k++)
			{
				ArrayGetString(g_zclass2_playermodel, ArrayGetCell(g_zclass2_modelsstart, i) + k, buffer, charsmax(buffer))
				ArraySetString(g_zclass_playermodel, ArrayGetCell(g_zclass_modelsstart, g_zclass_i) + k, buffer)
				
				// Precache player model and replace its modelindex with the real one
				formatex(prec_mdl, charsmax(prec_mdl), "models/player/%s/%s.mdl", buffer, buffer)
				ArraySetCell(g_zclass_modelindex, ArrayGetCell(g_zclass_modelsstart, g_zclass_i) + k, engfunc(EngFunc_PrecacheModel, prec_mdl))
				if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, prec_mdl)
				if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, prec_mdl)
				// Precache modelT.mdl files too
				copy(prec_mdl[strlen(prec_mdl)-4], charsmax(prec_mdl) - (strlen(prec_mdl)-4), "T.mdl")
				if (file_exists(prec_mdl)) engfunc(EngFunc_PrecacheModel, prec_mdl)
			}
			
			// We have more custom models than what we can accommodate,
			// Let's make some space...
			if (nummodels_custom > nummodels_default)
			{
				for (k = nummodels_default; k < nummodels_custom; k++)
				{
					ArrayGetString(g_zclass2_playermodel, ArrayGetCell(g_zclass2_modelsstart, i) + k, buffer, charsmax(buffer))
					ArrayInsertStringAfter(g_zclass_playermodel, ArrayGetCell(g_zclass_modelsstart, g_zclass_i) + k - 1, buffer)
					
					// Precache player model and retrieve its modelindex
					formatex(prec_mdl, charsmax(prec_mdl), "models/player/%s/%s.mdl", buffer, buffer)
					ArrayInsertCellAfter(g_zclass_modelindex, ArrayGetCell(g_zclass_modelsstart, g_zclass_i) + k - 1, engfunc(EngFunc_PrecacheModel, prec_mdl))
					if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, prec_mdl)
					if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, prec_mdl)
					// Precache modelT.mdl files too
					copy(prec_mdl[strlen(prec_mdl)-4], charsmax(prec_mdl) - (strlen(prec_mdl)-4), "T.mdl")
					if (file_exists(prec_mdl)) engfunc(EngFunc_PrecacheModel, prec_mdl)
				}
				
				// Fix models end index for this class
				ArraySetCell(g_zclass_modelsend, g_zclass_i, ArrayGetCell(g_zclass_modelsend, g_zclass_i) + (nummodels_custom - nummodels_default))
			}
			
			/* --- Not needed since classes can't have more than 1 default model for now ---
			// We have less custom models than what this class has by default,
			// Get rid of those extra entries...
			if (nummodels_custom < nummodels_default)
			{
				for (k = nummodels_custom; k < nummodels_default; k++)
				{
					ArrayDeleteItem(g_zclass_playermodel, ArrayGetCell(g_zclass_modelsstart, g_zclass_i) + nummodels_custom)
				}
				
				// Fix models end index for this class
				ArraySetCell(g_zclass_modelsend, g_zclass_i, ArrayGetCell(g_zclass_modelsend, g_zclass_i) - (nummodels_default - nummodels_custom))
			}
			*/
		}
		
		// Replace clawmodel
		ArrayGetString(g_zclass2_clawmodel, i, buffer, charsmax(buffer))
		ArraySetString(g_zclass_clawmodel, g_zclass_i, buffer)
		
		// Precache clawmodel
		formatex(prec_mdl, charsmax(prec_mdl), "models/zombie_apocalypse/%s", buffer)
		engfunc(EngFunc_PrecacheModel, prec_mdl)
		
		// Replace level
		buffer[0] = ArrayGetCell(g_zclass2_lvl, i)
		ArraySetCell(g_zclass_lvl, g_zclass_i, buffer[0])
		
		// Replace health
		buffer[0] = ArrayGetCell(g_zclass2_hp, i)
		ArraySetCell(g_zclass_hp, g_zclass_i, buffer[0])
		
		// Replace speed
		buffer[0] = ArrayGetCell(g_zclass2_spd, i)
		ArraySetCell(g_zclass_spd, g_zclass_i, buffer[0])
		
		// Replace gravity
		buffer2 = Float:ArrayGetCell(g_zclass2_grav, i)
		ArraySetCell(g_zclass_grav, g_zclass_i, buffer2)
		
		// Replace knockback
		buffer2 = Float:ArrayGetCell(g_zclass2_kb, i)
		ArraySetCell(g_zclass_kb, g_zclass_i, buffer2)
	}
	
	// If class was not overriden with customization data
	if (ArrayGetCell(g_zclass_new, g_zclass_i))
	{
		// If not using same models for all classes
		if (!g_same_models_zombies)
		{
			// Precache default class model and replace modelindex with the real one
			formatex(prec_mdl, charsmax(prec_mdl), "models/player/%s/%s.mdl", model, model)
			ArraySetCell(g_zclass_modelindex, ArrayGetCell(g_zclass_modelsstart, g_zclass_i), engfunc(EngFunc_PrecacheModel, prec_mdl))
			if (g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, prec_mdl)
			if (g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, prec_mdl)
			// Precache modelT.mdl files too
			copy(prec_mdl[strlen(prec_mdl)-4], charsmax(prec_mdl) - (strlen(prec_mdl)-4), "T.mdl")
			if (file_exists(prec_mdl)) engfunc(EngFunc_PrecacheModel, prec_mdl)
		}
		
		// Precache default clawmodel
		formatex(prec_mdl, charsmax(prec_mdl), "models/zombie_apocalypse/%s", clawmodel)
		engfunc(EngFunc_PrecacheModel, prec_mdl)
	}
	
	// Increase registered classes counter
	g_zclass_i++
	
	// Return id under which we registered the class
	return g_zclass_i-1;
}

// Native: zp_get_extra_item_id
public native_get_extra_item_id(const name[])
{
	// ZA disabled
	if (!g_pluginenabled) return -1;
	
	// Strings passed byref
	param_convert(1)
	
	// Loop through every item (not using Tries since ZA should work on AMXX 1.8.0)
	static i, item_name[32]
	for (i = 0; i < g_extraitem_i; i++)
	{
		ArrayGetString(g_extraitem_name, i, item_name, charsmax(item_name))
		
		// Check if this is the item to retrieve
		if (equali(name, item_name))
			return i;
	}
	
	return -1;
}

// Native: za_get_human_class_id
public native_get_human_class_id(const name[])
{
	// ZA disabled
	if (!g_pluginenabled) return -1;
	
	// Strings passed byref
	param_convert(1)
	
	// Loop through every class (not using Tries since ZA should work on AMXX 1.8.0)
	static i, class_name[32]
	for (i = 0; i < g_hclass_i; i++)
	{
		ArrayGetString(g_hclass_name, i, class_name, charsmax(class_name))
		
		// Check if this is the class to retrieve
		if (equali(name, class_name))
			return i;
	}
	
	return -1;
}

// Native: zp_get_zombie_class_id
public native_get_zombie_class_id(const name[])
{
	// ZA disabled
	if (!g_pluginenabled) return -1;
	
	// Strings passed byref
	param_convert(1)
	
	// Loop through every class (not using Tries since ZA should work on AMXX 1.8.0)
	static i, class_name[32]
	for (i = 0; i < g_zclass_i; i++)
	{
		ArrayGetString(g_zclass_name, i, class_name, charsmax(class_name))
		
		// Check if this is the class to retrieve
		if (equali(name, class_name))
			return i;
	}
	
	return -1;
}

// Native: za_get_human_class_info
public native_get_human_class_info(classid, info[], len)
{
	// ZA disabled
	if (!g_pluginenabled) return false;
	
	// Invalid class
	if (classid < 0 || classid >= g_hclass_i)
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid human class id (%d)", classid)
		return false;
	}
	
	// Strings passed byref
	param_convert(2)
	
	// Fetch human class info
	ArrayGetString(g_hclass_info, classid, info, len)
	return true;
}

// Native: zp_get_zombie_class_info
public native_get_zombie_class_info(classid, info[], len)
{
	// ZA disabled
	if (!g_pluginenabled) return false;
	
	// Invalid class
	if (classid < 0 || classid >= g_zclass_i)
	{
		log_error(AMX_ERR_NATIVE, "[ZE] Invalid zombie class id (%d)", classid)
		return false;
	}
	
	// Strings passed byref
	param_convert(2)
	
	// Fetch zombie class info
	ArrayGetString(g_zclass_info, classid, info, len)
	return true;
}

/*================================================================================
 [Custom Messages]
=================================================================================*/

// Custom Night Vision
public set_user_nvision(taskid)
{
	// Get player's origin
	static origin[3]
	get_user_origin(ID_NVISION, origin)
	
	// Nightvision message
	message_begin(MSG_ONE_UNRELIABLE, SVC_TEMPENTITY, _, ID_NVISION)
	write_byte(TE_DLIGHT) // TE id
	write_coord(origin[0]) // x
	write_coord(origin[1]) // y
	write_coord(origin[2]) // z
	write_byte(get_pcvar_num(cvar_nvgsize)) // radius
	
	if (g_class[ID_NVISION] >= ZOMBIE)
	{
	if (g_class[ID_NVISION] >= DEMON)
	{
		write_byte(186) // r
		write_byte(0) // g
		write_byte(255) // b
	}
	else if (g_class[ID_NVISION] >= ASSASSIN)
	{
		write_byte(250) // r
		write_byte(150) // g
		write_byte(20) // b
	}
	else if (g_class[ID_NVISION] >= ALIEN)
	{
		write_byte(25) // r
		write_byte(25) // g
		write_byte(100) // b
	}
	else if (g_class[ID_NVISION] >= NEMESIS)
	{
		write_byte(255) // r
		write_byte(0) // g
		write_byte(0) // b
	}
	else
	{
	write_byte(g_nvgred[ID_NVISION]) // r
	write_byte(g_nvggreen[ID_NVISION]) // g
	write_byte(g_nvgblue[ID_NVISION]) // b
	}
	}
	else
	{
	if (g_class[ID_NVISION] >= ANGEL)
	{
		write_byte(255) // r
		write_byte(100) // g
		write_byte(0) // b
	}
	else if (g_class[ID_NVISION] >= PREDATOR)
	{
		write_byte(255) // r
		write_byte(255) // g
		write_byte(255) // b
	}
	else if (g_class[ID_NVISION] >= SNIPER)
	{
		write_byte(0) // r
		write_byte(255) // g
		write_byte(255) // b
	}
	else if (g_class[ID_NVISION] >= WESKER)
	{
		write_byte(255) // r
		write_byte(215) // g
		write_byte(0) // b
	}
	else if (g_class[ID_NVISION] >= SURVIVOR)
	{
		write_byte(0) // r
		write_byte(0) // g
		write_byte(255) // b
	}
	else
	{
	write_byte(g_nvgred[ID_NVISION]) // r
	write_byte(g_nvggreen[ID_NVISION]) // g
	write_byte(g_nvgblue[ID_NVISION]) // b
	}
}
	
	write_byte(2) // life
	write_byte(0) // decay rate
	message_end()
}

// Custom Flashlight
public set_user_flashlight(taskid)
{
	// Get player and aiming origins
	static Float:originF[3], Float:destoriginF[3]
	pev(ID_FLASH, pev_origin, originF)
	fm_get_aim_origin(ID_FLASH, destoriginF)
	
	// Max distance check
	if (get_distance_f(originF, destoriginF) > get_pcvar_float(cvar_flashdist))
		return;
	
	// Send to all players?
	if (get_pcvar_num(cvar_flashshowall))
		engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, destoriginF, 0)
	else
		message_begin(MSG_ONE_UNRELIABLE, SVC_TEMPENTITY, _, ID_FLASH)
	
	// Flashlight
	write_byte(TE_DLIGHT) // TE id
	engfunc(EngFunc_WriteCoord, destoriginF[0]) // x
	engfunc(EngFunc_WriteCoord, destoriginF[1]) // y
	engfunc(EngFunc_WriteCoord, destoriginF[2]) // z
	write_byte(get_pcvar_num(cvar_flashsize)) // radius
	write_byte(g_flashred[ID_FLASH]) // r
	write_byte(g_flashgreen[ID_FLASH]) // g
	write_byte(g_flashblue[ID_FLASH]) // b
	write_byte(3) // life
	write_byte(0) // decay rate
	message_end()
}

// Infection special effects
infection_effects(id)
{
	// Screen fade? (unless frozen)
	if (!g_frozen[id] && get_pcvar_num(cvar_infectionscreenfade))
	{
		message_begin(MSG_ONE_UNRELIABLE, g_msgScreenFade, _, id)
		write_short(UNIT_SECOND) // duration
		write_short(0) // hold time
		write_short(FFADE_IN) // fade type
		if (g_class[id] >= DEMON)
	         {
		write_byte(186) // r
		write_byte(0) // g
		write_byte(255) // b
	         }
		else if (g_class[id] >= ASSASSIN)
	         {
		write_byte(255) // r
		write_byte(150) // g
		write_byte(20) // b
	         }
		else if (g_class[id] >= ALIEN)
	         {
		write_byte(25) // r
		write_byte(25) // g
		write_byte(100) // b
	         }
	         else if (g_class[id] >= NEMESIS)
	         {
		write_byte(255) // r
		write_byte(0) // g
		write_byte(0) // b
	         }
	         else
	         {
	         write_byte(g_nvgred[id]) // r
	         write_byte(g_nvggreen[id]) // g
	         write_byte(g_nvgblue[id]) // b
	         }
		write_byte (255) // alpha
		message_end()
		
		// Repeat screen fade
		set_task(2.0, "screenfade_infected", id, "", 0, "a", 2)
	}
	
	// Screen shake?
	if (get_pcvar_num(cvar_infectionscreenshake))
	{
		message_begin(MSG_ONE_UNRELIABLE, g_msgScreenShake, _, id)
		write_short(UNIT_SECOND*8) // amplitude
		write_short(UNIT_SECOND*4) // duration
		write_short(UNIT_SECOND*20) // frequency
		message_end()
	}
	
	// Infection icon?
	if (get_pcvar_num(cvar_hudicons))
	{
		message_begin(MSG_ONE_UNRELIABLE, g_msgDamage, _, id)
		write_byte(0) // damage save
		write_byte(0) // damage take
		write_long(DMG_NERVEGAS) // damage type - DMG_RADIATION
		write_coord(0) // x
		write_coord(0) // y
		write_coord(0) // z
		message_end()
	}
	
	// Get player's origin
	static origin[3]
	get_user_origin(id, origin)
	
	// Tracers?
	if (get_pcvar_num(cvar_infectiontracers))
	{
		message_begin(MSG_PVS, SVC_TEMPENTITY, origin)
		write_byte(TE_IMPLOSION) // TE id
		write_coord(origin[0]) // x
		write_coord(origin[1]) // y
		write_coord(origin[2]) // z
		write_byte(165) // radius
		write_byte(20) // count
		write_byte(3) // duration
		message_end()
	}
	
	// Particle burst?
	if (get_pcvar_num(cvar_infectionparticles))
	{
		message_begin(MSG_PVS, SVC_TEMPENTITY, origin)
		write_byte(TE_PARTICLEBURST) // TE id
		write_coord(origin[0]) // x
		write_coord(origin[1]) // y
		write_coord(origin[2]) // z
		write_short(50) // radius
		write_byte(random_num(0,255)) // color
		write_byte(3) // duration (will be randomized a bit)
		message_end()
	}
	
	// Light sparkle?
	if (get_pcvar_num(cvar_infectionsparkle))
	{
		message_begin(MSG_PVS, SVC_TEMPENTITY, origin)
		write_byte(TE_DLIGHT) // TE id
		write_coord(origin[0]) // x
		write_coord(origin[1]) // y
		write_coord(origin[2]) // z
		write_byte(20) // radius
		write_byte(random_num(0,255)) // r
		write_byte(random_num(0,255)) // g
		write_byte(random_num(0,255)) // b
		write_byte(2) // life
		write_byte(0) // decay rate
		message_end()
	}
}

// Screen Fade Infected
public screenfade_infected(id)
{
	// Only effect alive unfrozen zombies
	if (!g_isalive[id] || (g_class[id] < ZOMBIE || g_class[id] >= NEMESIS) || g_nodamage[id] || g_frozen[id])
		return;
		
	// Add a green tint to their screen
	message_begin(MSG_ONE_UNRELIABLE, g_msgScreenFade, _, id)
	write_short(UNIT_SECOND*1) // duration
	write_short(UNIT_SECOND*0) // hold time
	write_short(FFADE_IN) // fade type
	write_byte(g_nvgred[id]) // r
	write_byte(g_nvggreen[id]) // g
	write_byte(g_nvgblue[id]) // b
	write_byte(200) // alpha
	message_end()
}

// Nemesis/madness/Alien aura task
public zombie_aura(taskid)
{
	// Not nemesis, not alien, not in zombie madness
	if (g_class[ID_AURA] < NEMESIS && !g_nodamage[ID_AURA])
	{
		// Task not needed anymore
		remove_task(taskid);
		return;
	}
	
	// Get player's origin
	static origin[3]
	get_user_origin(ID_AURA, origin)
	
	// Colored Aura
	message_begin(MSG_PVS, SVC_TEMPENTITY, origin)
	write_byte(TE_DLIGHT) // TE id
	write_coord(origin[0]) // x
	write_coord(origin[1]) // y
	write_coord(origin[2]) // z
	write_byte(15) // radius
	write_byte((g_class[ID_AURA] == ALIEN) ? get_pcvar_num(cvar_ali_aura_colors[0]) : get_pcvar_num(cvar_nem_aura_colors[0])) // r
	write_byte((g_class[ID_AURA] == ALIEN) ? get_pcvar_num(cvar_ali_aura_colors[1]) : get_pcvar_num(cvar_nem_aura_colors[1])) // g
	write_byte((g_class[ID_AURA] == ALIEN) ? get_pcvar_num(cvar_ali_aura_colors[2]) : get_pcvar_num(cvar_nem_aura_colors[2])) // b
	write_byte(2) // life
	write_byte(0) // decay rate
	message_end()
}

// Make zombies leave footsteps and bloodstains on the floor
public make_blood(taskid)
{
	// Only bleed when moving on ground
	if (!(pev(ID_BLOOD, pev_flags) & FL_ONGROUND) || get_speed(ID_BLOOD) < 80)
		return;
	
	// Get user origin
	static Float:originF[3]
	pev(ID_BLOOD, pev_origin, originF)
	
	// If ducking set a little lower
	if (pev(ID_BLOOD, pev_bInDuck))
		originF[2] -= 18.0
	else
		originF[2] -= 36.0
	
	// Send the decal message
	engfunc(EngFunc_MessageBegin, MSG_PAS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_WORLDDECAL) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	write_byte(ArrayGetCell(zombie_decals, random_num(0, ArraySize(zombie_decals) - 1))) // random decal number
	message_end()
}

// Burning Flames
public burning_flame(taskid)
{
	// Get player origin and flags
	static origin[3], flags
	get_user_origin(ID_BURN, origin)
	flags = pev(ID_BURN, pev_flags)
	
	// Madness mode - in water - burning stopped
	if (g_nodamage[ID_BURN] || (flags & FL_INWATER) || g_burning_duration[ID_BURN] < 1)
	{
		// Smoke sprite
		message_begin(MSG_PVS, SVC_TEMPENTITY, origin)
		write_byte(TE_SMOKE) // TE id
		write_coord(origin[0]) // x
		write_coord(origin[1]) // y
		write_coord(origin[2]-50) // z
		write_short(g_smokeSpr) // sprite
		write_byte(random_num(15, 20)) // scale
		write_byte(random_num(10, 20)) // framerate
		message_end()
		
		// Task not needed anymore
		remove_task(taskid);
		return;
	}
	
	// Randomly play burning zombie scream sounds (not for nemesis/alien)
	if (g_class[ID_BURN] < NEMESIS && !random_num(0, 20))
	{
		static sound[64]
		ArrayGetString(grenade_fire_player, random_num(0, ArraySize(grenade_fire_player) - 1), sound, charsmax(sound))
		emit_sound(ID_BURN, CHAN_VOICE, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)
	}
	
	// Fire slow down, unless nemesis/alien
	if (g_class[ID_BURN] < NEMESIS && (flags & FL_ONGROUND) && get_pcvar_float(cvar_fireslowdown) > 0.0)
	{
		static Float:velocity[3]
		pev(ID_BURN, pev_velocity, velocity)
		xs_vec_mul_scalar(velocity, get_pcvar_float(cvar_fireslowdown), velocity)
		set_pev(ID_BURN, pev_velocity, velocity)
	}
	
	// Get player's health
	static health; health = get_user_health(ID_BURN)
	
	// Take damage from the fire
	if (health - floatround(get_pcvar_float(cvar_firedamage), floatround_ceil) > 0)
		set_user_health(ID_BURN, health - floatround(get_pcvar_float(cvar_firedamage), floatround_ceil))
	
	// Flame sprite
	message_begin(MSG_PVS, SVC_TEMPENTITY, origin)
	write_byte(TE_SPRITE) // TE id
	write_coord(origin[0]+random_num(-5, 5)) // x
	write_coord(origin[1]+random_num(-5, 5)) // y
	write_coord(origin[2]+random_num(-10, 10)) // z
	write_short(g_flameSpr) // sprite
	write_byte(random_num(5, 10)) // scale
	write_byte(200) // brightness
	message_end()
	
	// Decrease burning duration counter
	g_burning_duration[ID_BURN]--
}

// Infection Bomb: Green Blast
create_blast1(const Float:originF[3])
{
	// Smallest ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+385.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(0) // red
	write_byte(200) // green
	write_byte(0) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
	
	// Medium ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+470.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(0) // red
	write_byte(200) // green
	write_byte(0) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
	
	// Largest ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+555.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(0) // red
	write_byte(200) // green
	write_byte(0) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
	
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_PARTICLEBURST) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	write_short(60) // radius
	write_byte(185) // color
	write_byte(6) // duration (will be randomized a bit)
	message_end()
	
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_PARTICLEBURST) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	write_short(60) // radius
	write_byte(185) // color
	write_byte(5) // duration (will be randomized a bit)
	message_end()
	
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_PARTICLEBURST) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	write_short(60) // radius
	write_byte(185) // color
	write_byte(4) // duration (will be randomized a bit)
	message_end()
}

// Fire Grenade: Fire Blast
create_blast2(const Float:originF[3])
{
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPRITE)
	engfunc(EngFunc_WriteCoord, originF[0]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[1]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[2]+80)
	write_short(g_flameSpr)
	write_byte(10)
	write_byte(255)
	message_end()
         
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPRITE)
	engfunc(EngFunc_WriteCoord, originF[0]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[1]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[2]+80)
	write_short(g_flameSpr)
	write_byte(10)
	write_byte(255)
	message_end()
	
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPRITE)
	engfunc(EngFunc_WriteCoord, originF[0]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[1]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[2]+80)
	write_short(g_flameSpr)
	write_byte(10)
	write_byte(255)
	message_end()
	
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPRITE)
	engfunc(EngFunc_WriteCoord, originF[0]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[1]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[2]+80)
	write_short(g_flameSpr)
	write_byte(10)
	write_byte(255)
	message_end()
	
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPRITE)
	engfunc(EngFunc_WriteCoord, originF[0]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[1]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[2]+80)
	write_short(g_flameSpr)
	write_byte(10)
	write_byte(255)
	message_end()
	
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPRITE)
	engfunc(EngFunc_WriteCoord, originF[0]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[1]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[2]+80)
	write_short(g_flameSpr)
	write_byte(10)
	write_byte(255)
	message_end()
	
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPRITE)
	engfunc(EngFunc_WriteCoord, originF[0]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[1]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[2]+80)
	write_short(g_flameSpr)
	write_byte(10)
	write_byte(255)
	message_end()
	
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPRITE)
	engfunc(EngFunc_WriteCoord, originF[0]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[1]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[2]+80)
	write_short(g_flameSpr)
	write_byte(10)
	write_byte(255)
	message_end()
	
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPRITE)
	engfunc(EngFunc_WriteCoord, originF[0]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[1]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[2]+80)
	write_short(g_flameSpr)
	write_byte(10)
	write_byte(255)
	message_end()
	
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPRITE)
	engfunc(EngFunc_WriteCoord, originF[0]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[1]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[2]+80)
	write_short(g_flameSpr)
	write_byte(10)
	write_byte(255)
	message_end()
	
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPRITE)
	engfunc(EngFunc_WriteCoord, originF[0]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[1]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[2]+80)
	write_short(g_flameSpr)
	write_byte(10)
	write_byte(255)
	message_end()
	
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPRITE)
	engfunc(EngFunc_WriteCoord, originF[0]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[1]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[2]+80)
	write_short(g_flameSpr)
	write_byte(10)
	write_byte(255)
	message_end()
	
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPRITE)
	engfunc(EngFunc_WriteCoord, originF[0]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[1]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[2]+80)
	write_short(g_flameSpr)
	write_byte(10)
	write_byte(255)
	message_end()
	
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPRITE)
	engfunc(EngFunc_WriteCoord, originF[0]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[1]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[2]+80)
	write_short(g_flameSpr)
	write_byte(10)
	write_byte(255)
	message_end()
	
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPRITE)
	engfunc(EngFunc_WriteCoord, originF[0]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[1]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[2]+80)
	write_short(g_flameSpr)
	write_byte(10)
	write_byte(255)
	message_end()
	
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPRITE)
	engfunc(EngFunc_WriteCoord, originF[0]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[1]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[2]+80)
	write_short(g_flameSpr)
	write_byte(10)
	write_byte(255)
	message_end()
	
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPRITE)
	engfunc(EngFunc_WriteCoord, originF[0]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[1]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[2]+80)
	write_short(g_flameSpr)
	write_byte(10)
	write_byte(255)
	message_end()
	
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPRITE)
	engfunc(EngFunc_WriteCoord, originF[0]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[1]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[2]+80)
	write_short(g_flameSpr)
	write_byte(10)
	write_byte(255)
	message_end()
	
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPRITE)
	engfunc(EngFunc_WriteCoord, originF[0]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[1]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[2]+80)
	write_short(g_flameSpr)
	write_byte(10)
	write_byte(255)
	message_end()
	
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPRITE)
	engfunc(EngFunc_WriteCoord, originF[0]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[1]+random_num(-150, 150))
	engfunc(EngFunc_WriteCoord, originF[2]+80)
	write_short(g_flameSpr)
	write_byte(10)
	write_byte(255)
	message_end()
	
	// Smallest ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+385.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(255) // red
	write_byte(100) // green
	write_byte(0) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
	
	// Medium ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+470.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(255) // red
	write_byte(100) // green
	write_byte(0) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
	
	// Largest ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+555.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(255) // red
	write_byte(100) // green
	write_byte(0) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
}

// Frost Grenade: Freeze Blast
create_blast3(const Float:originF[3])
{
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPRITETRAIL)
	engfunc(EngFunc_WriteCoord, originF[0])
	engfunc(EngFunc_WriteCoord, originF[1])
	engfunc(EngFunc_WriteCoord, originF[2])
	engfunc(EngFunc_WriteCoord, originF[0])
	engfunc(EngFunc_WriteCoord, originF[1])
	engfunc(EngFunc_WriteCoord, originF[2])
	write_short(g_explosfr)
	write_byte(100)
	write_byte(1)
	write_byte(2)
	write_byte(60)
	write_byte(60)
	message_end()
	
	// Smallest ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+385.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(0) // red
	write_byte(100) // green
	write_byte(200) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
	
	// Medium ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+470.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(0) // red
	write_byte(100) // green
	write_byte(200) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
	
	// Largest ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+555.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(0) // red
	write_byte(100) // green
	write_byte(200) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
}

create_blast4(const Float:originF[3])
{
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+385.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(200) // red
	write_byte(0) // green
	write_byte(0) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
	
	// Medium ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+470.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(200) // red
	write_byte(0) // green
	write_byte(0) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
	
	// Largest ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+555.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(200) // red
	write_byte(0) // green
	write_byte(0) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
	
	engfunc(EngFunc_MessageBegin, MSG_BROADCAST,SVC_TEMPENTITY, originF, 0)
	write_byte(TE_EXPLOSION)
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+75) // z axis
	write_short(g_explofre)
	write_byte(30)
	write_byte(15)
	write_byte(TE_EXPLFLAG_NOSOUND)
	message_end()
}

create_blast5(const Float:originF[3])
{
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+385.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(255) // red
	write_byte(255) // green
	write_byte(0) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
	
	// Medium ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+470.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(255) // red
	write_byte(255) // green
	write_byte(0) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
	
	// Largest ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+555.0) // z axis
	write_short(g_exploSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(4) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(255) // red
	write_byte(255) // green
	write_byte(0) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()
}

// Thunderer AWP: Yellow Thunder
ThunderPlayer(Float:originF[3])
{
	// Thunder
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(0) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]-25) // z
	engfunc(EngFunc_WriteCoord, originF[0]+150) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]+150) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+800) // z axis
	write_short(g_thunderSpr) // sprite
	write_byte(1) // startframe
	write_byte(5) // flamerate
	write_byte(2) // life
	write_byte(20) // width
	write_byte(30) // noise
	write_byte(255) // red
	write_byte(255) // green
	write_byte(0) // blue
	write_byte(200) // brightness
	write_byte(200) // speed
	message_end()
}

// Zombie Death
FX_BloodSpurt(originF[3])
{
	message_begin(MSG_BROADCAST, SVC_TEMPENTITY)
	write_byte(TE_LAVASPLASH)
	write_coord(originF[0])
	write_coord(originF[1])
	write_coord(originF[2]-26)
	message_end()
}

// Fix Dead Attrib on scoreboard
FixDeadAttrib(id)
{
	message_begin(MSG_BROADCAST, g_msgScoreAttrib)
	write_byte(id) // id
	write_byte(0) // attrib
	message_end()
}

// Send Death Message for infections
SendDeathMsg(attacker, victim)
{
	message_begin(MSG_BROADCAST, g_msgDeathMsg)
	write_byte(attacker) // killer
	write_byte(victim) // victim
	write_byte(1) // headshot flag
	write_string("infection") // killer's weapon
	message_end()
}

SendDeathMsg2(attacker, victim)
{
	message_begin(MSG_BROADCAST, g_msgDeathMsg)
	write_byte(attacker) // killer
	write_byte(victim) // victim
	write_byte(1) // headshot flag
	write_string("grenade") // killer's weapon
	message_end()
}

// Update Player Frags and Deaths
UpdateFrags(attacker, victim, frags, deaths, scoreboard)
{
	// Set attacker frags
	set_pev(attacker, pev_frags, float(pev(attacker, pev_frags) + frags))
	
	// Set victim deaths
	cs_set_user_deaths(victim, cs_get_user_deaths(victim) + deaths)
	
	// Update scoreboard with attacker and victim info
	if (scoreboard)
	{
		message_begin(MSG_BROADCAST, g_msgScoreInfo)
		write_byte(attacker) // id
		write_short(pev(attacker, pev_frags)) // frags
		write_short(cs_get_user_deaths(attacker)) // deaths
		write_short(0) // class?
		write_short(fm_cs_get_user_team(attacker)) // team
		message_end()
		
		message_begin(MSG_BROADCAST, g_msgScoreInfo)
		write_byte(victim) // id
		write_short(pev(victim, pev_frags)) // frags
		write_short(cs_get_user_deaths(victim)) // deaths
		write_short(0) // class?
		write_short(fm_cs_get_user_team(victim)) // team
		message_end()
	}
}

// Plays a sound on clients
PlaySound(const sound[])
{
	if (equal(sound[strlen(sound)-4], ".mp3"))
		client_cmd(0, "mp3 play ^"sound/%s^"", sound)
	else
		client_cmd(0, "spk ^"%s^"", sound)
}

// Plays a sound on one client
OnePlaySound(id, const sound[])
{
	if (equal(sound[strlen(sound)-4], ".mp3"))
		client_cmd(id, "mp3 play ^"sound/%s^"", sound)
	else
		client_cmd(id, "spk ^"%s^"", sound)
}

// Prints a colored message to target (use 0 for everyone), supports ML formatting.
// Note: I still need to make something like gungame's LANG_PLAYER_C to avoid unintended
// argument replacement when a function passes -1 (it will be considered a LANG_PLAYER)
zp_colored_print(target, const message[], any:...)
{
	static buffer[512], i, argscount
	argscount = numargs()
	
	// Send to everyone
	if (!target)
	{
		static player
		for (player = 1; player <= g_maxplayers; player++)
		{
			// Not connected
			if (!g_isconnected[player]) continue;
			
			// Remember changed arguments
			static changed[5], changedcount // [5] = max LANG_PLAYER occurencies
			changedcount = 0
			
			// Replace LANG_PLAYER with player id
			for (i = 2; i < argscount; i++)
			{
				if (getarg(i) == LANG_PLAYER)
				{
					setarg(i, 0, player)
					changed[changedcount] = i
					changedcount++
				}
			}
			
			// Format message for player
			vformat(buffer, charsmax(buffer), message, 3)
			
			// Send it
			message_begin(MSG_ONE_UNRELIABLE, g_msgSayText, _, player)
			write_byte(player)
			write_string(buffer)
			message_end()
			
			// Replace back player id's with LANG_PLAYER
			for (i = 0; i < changedcount; i++)
				setarg(changed[i], 0, LANG_PLAYER)
		}
	}
	// Send to specific target
	else
	{
		/*
		// Not needed since you should set the ML argument
		// to the player's id for a targeted print message
		
		// Replace LANG_PLAYER with player id
		for (i = 2; i < argscount; i++)
		{
			if (getarg(i) == LANG_PLAYER)
				setarg(i, 0, target)
		}
		*/
		
		// Format message for player
		vformat(buffer, charsmax(buffer), message, 3)
		
		// Send it
		message_begin(MSG_ONE, g_msgSayText, _, target)
		write_byte(target)
		write_string(buffer)
		message_end()
	}
}

/*================================================================================
 [Stocks]
=================================================================================*/

// Stock by YakumoHiratsuhi -save all characters name is using to check after-
stock save_characters_name()
{
	static key[32], data[160], charactername[5][32]
	
	for (new i = 0; i < fvault_size(g_VaultCharacters); i++)
	{
		fvault_get_keyname(g_VaultCharacters, i, key, charsmax(key))
		
		fvault_get_data(g_VaultCharacters, key, data, charsmax(data))
		
		parse(data, charactername[0], charsmax(charactername[]), charactername[1], charsmax(charactername[]), charactername[2], charsmax(charactername[]), charactername[3], charsmax(charactername[]), charactername[4], charsmax(charactername[]))
		
		if (!equal(charactername[0], "None")) TrieSetCell(g_tcharacternames, charactername[0], 1)
		if (!equal(charactername[1], "None")) TrieSetCell(g_tcharacternames, charactername[1], 1)
		if (!equal(charactername[2], "None")) TrieSetCell(g_tcharacternames, charactername[2], 1)
		if (!equal(charactername[3], "None")) TrieSetCell(g_tcharacternames, charactername[3], 1)
		if (!equal(charactername[4], "None")) TrieSetCell(g_tcharacternames, charactername[4], 1)
	}
}

// Get entity's aim origins (from fakemeta_util)
stock fm_get_aim_origin(id, Float:origin[3])
{
	static Float:origin1F[3], Float:origin2F[3]
	pev(id, pev_origin, origin1F)
	pev(id, pev_view_ofs, origin2F)
	xs_vec_add(origin1F, origin2F, origin1F)

	pev(id, pev_v_angle, origin2F);
	engfunc(EngFunc_MakeVectors, origin2F)
	global_get(glb_v_forward, origin2F)
	xs_vec_mul_scalar(origin2F, 9999.0, origin2F)
	xs_vec_add(origin1F, origin2F, origin2F)

	engfunc(EngFunc_TraceLine, origin1F, origin2F, 0, id, 0)
	get_tr2(0, TR_vecEndPos, origin)
}

// Collect random spawn points
stock load_spawns()
{
	// Check for CSDM spawns of the current map
	new cfgdir[32], mapname[32], filepath[100], linedata[64]
	get_configsdir(cfgdir, charsmax(cfgdir))
	get_mapname(mapname, charsmax(mapname))
	formatex(filepath, charsmax(filepath), "%s/csdm/%s.spawns.cfg", cfgdir, mapname)
	
	// Load CSDM spawns if present
	if (file_exists(filepath))
	{
		new csdmdata[10][6], file = fopen(filepath,"rt")
		
		while (file && !feof(file))
		{
			fgets(file, linedata, charsmax(linedata))
			
			// invalid spawn
			if(!linedata[0] || str_count(linedata,' ') < 2) continue;
			
			// get spawn point data
			parse(linedata,csdmdata[0],5,csdmdata[1],5,csdmdata[2],5,csdmdata[3],5,csdmdata[4],5,csdmdata[5],5,csdmdata[6],5,csdmdata[7],5,csdmdata[8],5,csdmdata[9],5)
			
			// origin
			g_spawns[g_spawnCount][0] = floatstr(csdmdata[0])
			g_spawns[g_spawnCount][1] = floatstr(csdmdata[1])
			g_spawns[g_spawnCount][2] = floatstr(csdmdata[2])
			
			// increase spawn count
			g_spawnCount++
			if (g_spawnCount >= sizeof g_spawns) break;
		}
		if (file) fclose(file)
	}
	else
	{
		// Collect regular spawns
		collect_spawns_ent("info_player_start")
		collect_spawns_ent("info_player_deathmatch")
	}
	
	// Collect regular spawns for non-random spawning unstuck
	collect_spawns_ent2("info_player_start")
	collect_spawns_ent2("info_player_deathmatch")
}

// Collect spawn points from entity origins
stock collect_spawns_ent(const classname[])
{
	new ent = -1
	while ((ent = engfunc(EngFunc_FindEntityByString, ent, "classname", classname)) != 0)
	{
		// get origin
		new Float:originF[3]
		pev(ent, pev_origin, originF)
		g_spawns[g_spawnCount][0] = originF[0]
		g_spawns[g_spawnCount][1] = originF[1]
		g_spawns[g_spawnCount][2] = originF[2]
		
		// increase spawn count
		g_spawnCount++
		if (g_spawnCount >= sizeof g_spawns) break;
	}
}

// Collect spawn points from entity origins
stock collect_spawns_ent2(const classname[])
{
	new ent = -1
	while ((ent = engfunc(EngFunc_FindEntityByString, ent, "classname", classname)) != 0)
	{
		// get origin
		new Float:originF[3]
		pev(ent, pev_origin, originF)
		g_spawns2[g_spawnCount2][0] = originF[0]
		g_spawns2[g_spawnCount2][1] = originF[1]
		g_spawns2[g_spawnCount2][2] = originF[2]
		
		// increase spawn count
		g_spawnCount2++
		if (g_spawnCount2 >= sizeof g_spawns2) break;
	}
}

// Drop primary/secondary weapons
stock drop_weapons(id, dropwhat)
{
	// Get user weapons
	static weapons[32], num, i, weaponid
	num = 0 // reset passed weapons count (bugfix)
	get_user_weapons(id, weapons, num)
	
	// Loop through them and drop primaries or secondaries
	for (i = 0; i < num; i++)
	{
		// Prevent re-indexing the array
		weaponid = weapons[i]
		
		if ((dropwhat == 1 && ((1<<weaponid) & PRIMARY_WEAPONS_BIT_SUM)) || (dropwhat == 2 && ((1<<weaponid) & SECONDARY_WEAPONS_BIT_SUM)))
		{
			// Get weapon entity
			static wname[32], weapon_ent
			get_weaponname(weaponid, wname, charsmax(wname))
			weapon_ent = find_ent_by_owner(-1, wname, id)
			
			// Hack: store weapon bpammo on PEV_ADDITIONAL_AMMO
			set_pev(weapon_ent, PEV_ADDITIONAL_AMMO, cs_get_user_bpammo(id, weaponid))
			
			// Player drops the weapon and looses his bpammo
			engclient_cmd(id, "drop", wname)
			cs_set_user_bpammo(id, weaponid, 0)
		}
	}
}

// Stock by (probably) Twilight Suzuka -counts number of chars in a string-
stock str_count(const str[], searchchar)
{
	new count, i, len = strlen(str)
	
	for (i = 0; i <= len; i++)
	{
		if (str[i] == searchchar)
			count++
	}
	
	return count;
}

// Stock by Kiske -counts number of characters in a string-
stock count_characters(const szString[], const len = sizeof(szString))
{
	new count, i

	for (i = 0 ; i < len; i++)
	{
		if (isalnum(szString[i]))
			count++
	}
    
	return count;
}

// Stock by Neeeeeeeeeel.- -check special characters in a string-
stock contain_special_characters(const str[])
{
	static len
	len = strlen(str)
	
	for (new i = 0; i < len; i++)
	{
		if (!isalpha(str[i]) && !isdigit(str[i]))
			return 1;
	}
	
	return 0;
}

// Stock by Asdito´^ -add point to numbers-
stock add_point(number)
{ 
	new count, i, str[29], str2[35], len
	num_to_str(number, str, charsmax(str))
	len = strlen(str)
	
	for (i = 0; i < len; i++)
	{
		if (i != 0 && ((len - i) %3 == 0))
		{
			add(str2, charsmax(str2), ".", 1)
			count++
			add(str2[i+count], 1, str[i], 1)
		}
		else
			add(str2[i+count], 1, str[i], 1)
	}

	return str2;
}

// Stock by Asdito´^ -add point to numbers-
stock add_point2(number)
{ 
	new count, i, str[29], str2[35], len
	num_to_str(number, str, charsmax(str))
	len = strlen(str)
	
	for (i = 0; i < len; i++)
	{
		if (i != 0 && ((len - i) %2 == 0))
		{
			add(str2, charsmax(str2), ".", 1)
			count++
			add(str2[i+count], 1, str[i], 1)
		}
		else
			add(str2[i+count], 1, str[i], 1)
	}

	return str2;
}
// Checks if a space is vacant (credits to VEN)
stock is_hull_vacant(Float:origin[3], hull)
{
	engfunc(EngFunc_TraceHull, origin, origin, 0, hull, 0, 0)
	
	if (!get_tr2(0, TR_StartSolid) && !get_tr2(0, TR_AllSolid) && get_tr2(0, TR_InOpen))
		return true;
	
	return false;
}

// Check if a player is stuck (credits to VEN)
stock is_player_stuck(id)
{
	static Float:originF[3]
	pev(id, pev_origin, originF)
	
	engfunc(EngFunc_TraceHull, originF, originF, 0, (pev(id, pev_flags) & FL_DUCKING) ? HULL_HEAD : HULL_HUMAN, id, 0)
	
	if (get_tr2(0, TR_StartSolid) || get_tr2(0, TR_AllSolid) || !get_tr2(0, TR_InOpen))
		return true;
	
	return false;
}

// Simplified get_weaponid (CS only)
stock cs_weapon_name_to_id(const weapon[])
{
	static i
	for (i = 0; i < sizeof WEAPONENTNAMES; i++)
	{
		if (equal(weapon, WEAPONENTNAMES[i]))
			return i;
	}
	
	return 0;
}

// Gets the weapon id from a weaponbox by ConnorMcLeod (only works for CS) (returns in CSW_* constants)
stock cs_get_weaponbox_id(weaponbox_ent)
{
	// Prevent server crash if entity's private data not initalized
	if (pev_valid(weaponbox_ent) != PDATA_SAFE) return -1;

	static i, weapon
	for (i = 1; i <= 5; i++)
	{
		weapon = get_pdata_cbase(weaponbox_ent, WEAPONBOX[i], OFFSET_LINUX_WEAPONS)
        
		if (weapon > 0) return cs_get_weapon_id(weapon);
	}

	return 0;
}

// Get Weapon Entity's Owner
stock fm_cs_get_weapon_ent_owner(ent)
{
	// Prevent server crash if entity's private data not initalized
	if (pev_valid(ent) != PDATA_SAFE)
		return -1;
	
	return get_pdata_cbase(ent, OFFSET_WEAPONOWNER, OFFSET_LINUX_WEAPONS);
}

// Get User Team
stock fm_cs_get_user_team(id)
{
	// Prevent server crash if entity's private data not initalized
	if (pev_valid(id) != PDATA_SAFE)
		return FM_CS_TEAM_UNASSIGNED;
	
	return get_pdata_int(id, OFFSET_CSTEAMS, OFFSET_LINUX);
}

// Set a Player's Team
stock fm_cs_set_user_team(id, team)
{
	// Prevent server crash if entity's private data not initalized
	if (pev_valid(id) != PDATA_SAFE)
		return;
	
	set_pdata_int(id, OFFSET_CSTEAMS, team, OFFSET_LINUX)
}

// Set User Flashlight Batteries
stock fm_cs_set_user_batteries(id, value)
{
	// Prevent server crash if entity's private data not initalized
	if (pev_valid(id) != PDATA_SAFE)
		return;
	
	set_pdata_int(id, OFFSET_FLASHLIGHT_BATTERY, value, OFFSET_LINUX)
}

// Update Player's Team on all clients (adding needed delays)
stock fm_user_team_update(id)
{
	static Float:current_time
	current_time = get_gametime()
	
	if (current_time - g_teams_targettime >= 0.1)
	{
		set_task(0.1, "fm_cs_set_user_team_msg", id+TASK_TEAM)
		g_teams_targettime = current_time + 0.1
	}
	else
	{
		set_task((g_teams_targettime + 0.1) - current_time, "fm_cs_set_user_team_msg", id+TASK_TEAM)
		g_teams_targettime = g_teams_targettime + 0.1
	}
}

// Send User Team Message
public fm_cs_set_user_team_msg(taskid)
{
	// Note to self: this next message can now be received by other plugins
	
	// Set the switching team flag
	g_switchingteam = true
	
	// Tell everyone my new team
	emessage_begin(MSG_ALL, g_msgTeamInfo)
	ewrite_byte(ID_TEAM) // player
	ewrite_string(CS_TEAM_NAMES[fm_cs_get_user_team(ID_TEAM)]) // team
	emessage_end()
	
	// Done switching team
	g_switchingteam = false
}

public checkrango(id)
{
	while (g_level[id] >= cost_rango[g_rango[id]]) // Hacemos un chequeo que cuando sea mayor o igual al nivel necesario
	{
		g_rango[id]++ // Aumenta de rango
	}
	
	while (g_level[id] < cost_rango[g_rango[id]]) // Hacemos un chequeo que cuando sea mayor o igual al nivel necesario
	{
		g_rango[id]-- // Aumenta de rango
	}
}

public checkrango2(id)
{
	while (g_level[id] >= cost_rango2[g_rango2[id]]) // Hacemos un chequeo que cuando sea mayor o igual al nivel necesario
	{
		g_rango2[id]++ // Aumenta de rango
	}
	
	while (g_level[id] < cost_rango2[g_rango2[id]]) // Hacemos un chequeo que cuando sea mayor o igual al nivel necesario
	{
		g_rango2[id]-- // Aumenta de rango
	}
}


public SelectIt2(id, menu, item)
{
	if (item == MENU_EXIT)
	{
		menu_destroy(menu)
		return PLUGIN_HANDLED
	}
	
	new data[6], iName[64]
	new access, callback
	menu_item_getinfo(menu, item, access, data,5, iName, 63, callback)
	new key = str_to_num(data)
	
	new costo = g_costmodel[item]
	
	if(g_point[id] >= costo)
	{
		switch(key)
		{
			case 0:
			{
				if (g_point[id] >= 0)
				{
					g_hats[id] = 0
				}
			}	
			case 1:
			{
				if (g_point[id] >= 0)
				{
					g_hats[id] = 1
				}
			}
			case 2:
			{
				if (g_point[id] >= 400)
				{
					g_hats[id] = 2
				}
			}
			case 3:
			{
				if (g_point[id] >= 800)
				{
					g_hats[id] = 3
				}
			}
			case 4:
			{
				if (g_point[id] >= 1200)
				{
					g_hats[id] = 4
				}
			}
			case 5:
			{
				if (g_point[id] >= 1600)
				{
					g_hats[id] = 5
				}
			}
			case 6:
			{
				if (g_point[id] >= 2000)
				{
					g_hats[id] = 6
				}
			}
			case 7:
			{
				if (g_point[id] >= 2400)
				{
					g_hats[id] = 7
				}
			}
			case 8:
			{
				if (g_point[id] >= 2800)
				{
					g_hats[id] = 8
				}
			}
			case 9:
			{
				if (g_point[id] >= 3200)
				{
					g_hats[id] = 9
				}
			}
			case 10:
			{
				if (g_point[id] >= 3600)
				{
					g_hats[id] = 10
				}
			}
			case 11:
			{
				if (g_point[id] >= 4000)
				{
					g_hats[id] = 11
				}
			}
			case 12:
			{
				if (g_point[id] >= 4400)
				{
					g_hats[id] = 12
				}
			}
			case 13:
			{
				if (g_point[id] >= 4800)
				{
					g_hats[id] = 13
				}
			}
			case 14:
			{
				if (g_point[id] >= 5200)
				{
					g_hats[id] = 14
				}
			}
			case 15:
			{
				if (g_point[id] >= 5600)
				{
					g_hats[id] = 15
				}
			}
			case 16:
			{
				if (g_point[id] >= 6000)
				{
					g_hats[id] = 16
				}
			}
			case 17:
			{
				if (g_point[id] >= 6400)
				{
					g_hats[id] = 17
				}
			}
			case 18:
			{
				if (g_point[id] >= 6800)
				{
					g_hats[id] = 18
				}
			}
			case 19:
			{
				if (g_point[id] >= 7200)
				{
					g_hats[id] = 19
				}
			}
			case 20:
			{
				if (g_point[id] >= 7600)
				{
					g_hats[id] = 20
				}
			}
			case 21:
			{
				if (g_point[id] >= 8000)
				{
					g_hats[id] = 21
				}
			}
			case 22:
			{
				if (g_point[id] >= 8400)
				{
					g_hats[id] = 22
				}
			}
			case 23:
			{
				if (g_point[id] >= 8800)
				{
					g_hats[id] = 23
				}
			}
			case 24:
			{
				if (g_point[id] >= 9200)
				{
					g_hats[id] = 24
				}
			}
			case 25:
			{
				if (g_point[id] >= 9600)
				{
					g_hats[id] = 25
				}
			}
			case 26:
			{
				if (g_point[id] >= 10000)
				{
					g_hats[id] = 26
				}
			}
		}
	}
	SetupSelectMenu2(id)
	set_task(0.1, "fm_model_ents", id)
	return PLUGIN_HANDLED
}

public SelectIt3(id, menu, item)
{
	if (item == MENU_EXIT)
	{
		menu_destroy(menu)
		return PLUGIN_HANDLED
	}
	
	new data[6], iName[64]
	new access, callback
	menu_item_getinfo(menu, item, access, data,5, iName, 63, callback)
	new key = str_to_num(data)
	
	new costo = g_costmodel[item]
	
	if(g_point[id] >= costo)
	{
		switch(key)
		{
			case 0:
			{
				if (g_point[id] >= 0)
				{
					g_glows[id] = 0
				}
			}	
			case 1:
			{
				if (g_point[id] >= 900)
				{
					g_glows[id] = 1
				}
			}
			case 2:
			{
				if (g_point[id] >= 1800)
				{
					g_glows[id] = 2
				}
			}
			case 3:
			{
				if (g_point[id] >= 2700)
				{
					g_glows[id] = 3
				}
			}
			case 4:
			{
				if (g_point[id] >= 3600)
				{
					g_glows[id] = 4
				}
			}
			case 5:
			{
				if (g_point[id] >= 4500)
				{
					g_glows[id] = 5
				}
			}
			case 6:
			{
				if (g_point[id] >= 5400)
				{
					g_glows[id] = 6
				}
			}
			case 7:
			{
				if (g_point[id] >= 6300)
				{
					g_glows[id] = 7
				}
			}
			case 8:
			{
				if (g_point[id] >= 7200)
				{
					g_glows[id] = 8
				}
			}
			case 9:
			{
				if (g_point[id] >= 8100)
				{
					g_glows[id] = 9
				}
			}
		}
	}
	SetupSelectMenu3(id)
	return PLUGIN_HANDLED
}

public SelectIt4(id, menu, item)
{
	if (item == MENU_EXIT)
	{
		menu_destroy(menu)
		return PLUGIN_HANDLED
	}
	
	new data[6], iName[64]
	new access, callback
	menu_item_getinfo(menu, item, access, data,5, iName, 63, callback)
	new key = str_to_num(data)
	
	new costo = g_costmodel[item]
	
	if(g_point[id] >= costo)
	{
		switch(key)
		{
			case 0:
			{
				if (g_point[id] >= 0)
				{
					g_knifes[id] = 0
				}
			}	
			case 1:
			{
				if (g_point[id] >= 750)
				{
					g_knifes[id] = 1
				}
			}
			case 2:
			{
				if (g_point[id] >= 1500)
				{
					g_knifes[id] = 2
				}
			}
			case 3:
			{
				if (g_point[id] >= 2250)
				{
					g_knifes[id] = 3
				}
			}
			case 4:
			{
				if (g_point[id] >= 3000)
				{
					g_knifes[id] = 4
				}
			}
			case 5:
			{
				if (g_point[id] >= 3750)
				{
					g_knifes[id] = 5
				}
			}
			case 6:
			{
				if (g_point[id] >= 4500)
				{
					g_knifes[id] = 6
				}
			}
			case 7:
			{
				if (g_point[id] >= 5250)
				{
					g_knifes[id] = 7
				}
			}
			case 8:
			{
				if (g_point[id] >= 6000)
				{
					g_knifes[id] = 8
				}
			}
			case 9:
			{
				if (g_point[id] >= 6750)
				{
					g_knifes[id] = 9
				}
			}
			case 10:
			{
				if (g_point[id] >= 7500)
				{
					g_knifes[id] = 10
				}
			}
			case 11:
			{
				if (is_user_admin(id))
				{
					g_knifes[id] = 11
				}
			}
		}
	}
	SetupSelectMenu4(id)
	return PLUGIN_HANDLED
}

public SelectIt5(id, menu, item)
{
	if (item == MENU_EXIT)
	{
		menu_destroy(menu)
		return PLUGIN_HANDLED
	}
	
	new data[6], iName[64]
	new access, callback
	menu_item_getinfo(menu, item, access, data,5, iName, 63, callback)
	new key = str_to_num(data)
	
	new costo = g_costmodel[item]
	
	if(g_level[id] >= costo)
	{
		switch(key)
		{
			case 0:
			{
				if (g_level[id] >= 0)
				{
					g_grenades[id] = 0
				}
			}	
			case 1:
			{
				if (g_level[id] >= 30)
				{
					g_grenades[id] = 1
				}
			}
			case 2:
			{
				if (g_level[id] >= 50)
				{
					g_grenades[id] = 2
				}
			}
			case 3:
			{
				if (g_level[id] >= 100)
				{
					g_grenades[id] = 3
				}
			}
			case 4:
			{
				if (g_level[id] >= 150)
				{
					g_grenades[id] = 4
				}
			}
			case 5:
			{
				if (g_level[id] >= 200)
				{
					g_grenades[id] = 5
				}
			}
			case 6:
			{
				if (g_level[id] >= 250)
				{
					g_grenades[id] = 6
				}
			}
		}
	}
	SetupSelectMenu5(id)
	return PLUGIN_HANDLED
}

/*====================================================================
        MENU DE PUNTOS Y ELECCION DE SKIN ETC DE DASH
=======================================================================*/
public SelectIt(id, menu, item)
{
    if (item == MENU_EXIT)
    {
        menu_destroy(menu)
        return PLUGIN_HANDLED
    }
    
    new data[6], iName[64]
    new access, callback
    menu_item_getinfo(menu, item, access, data,5, iName, 63, callback)
    new key = str_to_num(data)
    
    new costo = g_costmodel[item]
    
    if(g_point[id] >= costo)
    {
        switch(key)
        {
            case 0:
            {
                if (g_point[id] >= 0)
                {
                    g_models[id] = 0
                }
            }   
            case 1:
            {
                if (g_point[id] >= 1500)
                {
                    g_models[id] = 1
                }
            }
            case 2:
            {
                if (g_point[id] >= 3000)
                {
                    g_models[id] = 2
                }
            }
            case 3:
            {
                if (g_point[id] >= 4500)
                {
                    g_models[id] = 3
                }
            }
            case 4:
            {
                if (g_point[id] >= 6000)
                {
                    g_models[id] = 4
                }
            }
            case 5:
            {
                if (g_point[id] >= 7500)
                {
                    g_models[id] = 5
                }
            }
            case 6:
            {
                if (g_point[id] >= 9000)
                {
                    g_models[id] = 6
                }
            }
            case 7:
            {
                if (g_point[id] >= 10500)
                {
                    g_models[id] = 7
                }
            }
            case 8:
            {
                if (g_point[id] >= 12000)
                {
                    g_models[id] = 8
                }
            }
            case 9:
            {
                if (g_point[id] >= 13500)
                {
                    g_models[id] = 9
                }
            }
            case 10:
            {
                if (is_user_admin(id))
                {
                    g_models[id] = 10
                }
            }
            case 11:
            {
                if (is_user_admin(id))
                {
                    g_models[id] = 11
                }
            }
            case 12:
            {
                if (is_user_admin(id))
                {
                    g_models[id] = 12
                }
            }
        }
    }
    SetupSelectMenu(id)
    return PLUGIN_HANDLED
}
public SetupSelectMenu(id)
{  
    new menu = menu_create("\r[ZE]\y Menu de Modelos\r", "SelectIt")
     static len
	len = 0
	len += formatex(g_menu[len], charsmax(g_menu) - len, "\wP. Upgrade: \y%d^n^n", g_point[id])

    if(g_point[id] <= -1)
    {
        menu_additem(menu, "\wNinguna", "0", 0)
    }
    else if (g_models[id] == 0)
    {
        menu_additem(menu, "\wNinguna \r[\yEquipado\r]", "0", 0)
    }
    else 
    {
        menu_additem(menu, "\wNinguna", "0", 0)
    }
    if(g_point[id] <= 1499)
    {
        menu_additem(menu, "\dS.W.R.C \r[PU: 1500]", "1", 0)
    }
    else if (g_models[id] == 1)
    {
        menu_additem(menu, "\wS.W.R.C \r[\yEquipado\r]", "1", 0)
    }
    else 
    {
        menu_additem(menu, "\wS.W.R.C", "1", 0)
    }
    if(g_point[id] <= 2999)
    {
        menu_additem(menu, "\dElite Combine \r[PU: 3000]", "2", 0)
    }
    else if (g_models[id] == 2)
    {
        menu_additem(menu, "\wElite Combine \r[\yEquipado\r]", "2", 0)
    }
    else 
    {
        menu_additem(menu, "\wElite Combine", "2", 0)
    }
    if(g_point[id] <= 4499)
    {
        menu_additem(menu, "\dDallas \r[PU: 4500]", "3", 0)
    }
    else if (g_models[id] == 3)
    {
        menu_additem(menu, "\wDallas \r[\yEquipado\r]", "3", 0)
    }
    else 
    {
        menu_additem(menu, "\wDallas", "3", 0)
    }
    if(g_point[id] <= 5999)
    {
        menu_additem(menu, "\dCarlitos \r[PU: 6000]", "4", 0)
    }
    else if (g_models[id] == 4)
    {
        menu_additem(menu, "\wCarlitos \r[\yEquipado\r]", "4", 0)
    }
    else 
    {
        menu_additem(menu, "\wCarlitos", "4", 0)
    }
    if(g_point[id] <= 7499)
    {
        menu_additem(menu, "\dWalter \r[PU: 7500]", "5", 0)
    }
    else if (g_models[id] == 5)
    {
        menu_additem(menu, "\wWalter \r[\yEquipado\r]", "5", 0)
    }
    else 
    {
        menu_additem(menu, "\wWalter", "5", 0)
    }
    if(g_point[id] <= 8999)
    {
        menu_additem(menu, "\dSpy \r[PU: 9000]", "6", 0)
    }
    else if (g_models[id] == 6)
    {
        menu_additem(menu, "\wSpy \r[\yEquipado\r]", "6", 0)
    }
    else 
    {
        menu_additem(menu, "\wSpy", "6", 0)
    }
    if(g_point[id] <= 10499)
    {
        menu_additem(menu, "\dSkaynet \r[PU: 10500]", "7", 0)
    }
    else if (g_models[id] == 7)
    {
        menu_additem(menu, "\wSkaynet \r[\yEquipado\r]", "7", 0)
    }
    else 
    {
        menu_additem(menu, "\wSkaynet", "7", 0)
    }
    if(g_point[id] <= 11999)
    {
        menu_additem(menu, "\dMr. Foster \r[PU: 12000]", "8", 0)
    }
    else if (g_models[id] == 8)
    {
        menu_additem(menu, "\wMr. Foster \r[\yEquipado\r]", "8", 0)
    }
    else 
    {
        menu_additem(menu, "\wMr. Foster", "8", 0)
    }
    if(g_point[id] <= 13499)
    {
        menu_additem(menu, "\dMike Noble \r[PU: 13500]", "9", 0)
    }
    else if (g_models[id] == 9)
    {
        menu_additem(menu, "\wMike Noble \r[\yEquipado\r]", "9", 0)
    }
    else 
    {
        menu_additem(menu, "\wMike Noble", "9", 0)
    }
    if (g_models[id] == 10)
    {
        menu_additem(menu, "\wVIP \r[\yEquipado\r]", "10", 0)
    }
    else if (is_user_admin(id))
    {
        menu_additem(menu, "\wVIP", "10", 0)
    }
    else 
    {
        menu_additem(menu, "\dVIP \r[\yVIP\r]", "10", 0)
    }
    if (g_models[id] == 11)
    {
        menu_additem(menu, "\wChickenator \r[\yEquipado\r]", "11", 0)
    }
    else if (is_user_admin(id))
    {
        menu_additem(menu, "\wChickenator", "11", 0)
    }
    else 
    {
        menu_additem(menu, "\dChickenator \r[\yVIP\r]", "11", 0)
    }
    if (g_models[id] == 12)
    {
        menu_additem(menu, "\wGoku \r[\yEquipado\r]", "12", 0)
    }
    else if (is_user_admin(id))
    {
        menu_additem(menu, "\wGoku", "12", 0)
    }
    else 
    {
        menu_additem(menu, "\dGoku \r[\yVIP\r]", "12", 0)
    }

    menu_display(id, menu, 0)
}

/*======================================================================*/

/*======================================================================*/
public SetupSelectMenu2(id)
{  
    new menu = menu_create("\r[ZE]\y Menu de Sombreros\r", "SelectIt2")
     
    if(g_point[id] <= -1)
    {
        menu_additem(menu, "\wNinguna", "0", 0)
    }
    else if (g_hats[id] == 0)
    {
        menu_additem(menu, "\wNinguna \r[\yEquipado\r]", "0", 0)
    }
    else 
    {
        menu_additem(menu, "\wNinguna", "0", 0)
    }
    if(g_point[id] <= -1)
    {
        menu_additem(menu, "\wBandera Lancelot", "1", 0)
    }
    else if (g_hats[id] == 1)
    {
        menu_additem(menu, "\wBandera Lancelot \r[\yEquipado\r]", "1", 0)
    }
    else 
    {
        menu_additem(menu, "\wBandera Lancelot", "1", 0)
    }
    if(g_point[id] <= 399)
    {
        menu_additem(menu, "\dKnuckles \r[PU: 400]", "2", 0)
    }
    else if (g_hats[id] == 2)
    {
        menu_additem(menu, "\wKnuckles \r[\yEquipado\r]", "2", 0)
    }
    else 
    {
        menu_additem(menu, "\wKnuckles", "2", 0)
    }
    if(g_point[id] <= 799)
    {
        menu_additem(menu, "\dSanta \r[PU: 800]", "3", 0)
    }
    else if (g_hats[id] == 3)
    {
        menu_additem(menu, "\wSanta \r[\yEquipado\r]", "3", 0)
    }
    else 
    {
        menu_additem(menu, "\wSanta", "3", 0)
    }
    if(g_point[id] <= 1199)
    {
        menu_additem(menu, "\dCannibal \r[PU: 1200]", "4", 0)
    }
    else if (g_hats[id] == 4)
    {
        menu_additem(menu, "\wCannibal \r[\yEquipado\r]", "4", 0)
    }
    else 
    {
        menu_additem(menu, "\wCannibal", "4", 0)
    }
    if(g_point[id] <= 1599)
    {
        menu_additem(menu, "\dBomba \r[PU: 1600]", "5", 0)
    }
    else if (g_hats[id] == 5)
    {
        menu_additem(menu, "\wBomba \r[\yEquipado\r]", "5", 0)
    }
    else 
    {
        menu_additem(menu, "\wBomba", "5", 0)
    }
    if(g_point[id] <= 1999)
    {
        menu_additem(menu, "\dClon \r[PU: 2000]", "6", 0)
    }
    else if (g_hats[id] == 6)
    {
        menu_additem(menu, "\wClon \r[\yEquipado\r]", "6", 0)
    }
    else 
    {
        menu_additem(menu, "\wClon", "6", 0)
    }
    if(g_point[id] <= 2399)
    {
        menu_additem(menu, "\dClon 2 \r[PU: 2400]", "7", 0)
    }
    else if (g_hats[id] == 7)
    {
        menu_additem(menu, "\wClon 2 \r[\yEquipado\r]", "7", 0)
    }
    else 
    {
        menu_additem(menu, "\wClon 2", "7", 0)
    }
    if(g_point[id] <= 2799)
    {
        menu_additem(menu, "\dDr. Doom \r[PU: 2800]", "8", 0)
    }
    else if (g_hats[id] == 8)
    {
        menu_additem(menu, "\wDr. Doom \r[\yEquipado\r]", "8", 0)
    }
    else 
    {
        menu_additem(menu, "\wDr. Doom", "8", 0)
    }
    if(g_point[id] <= 3199)
    {
        menu_additem(menu, "\dSheih \r[PU: 3200]", "9", 0)
    }
    else if (g_hats[id] == 9)
    {
        menu_additem(menu, "\wSheih \r[\yEquipado\r]", "9", 0)
    }
    else 
    {
        menu_additem(menu, "\wSheih", "9", 0)
    }
    if(g_point[id] <= 3599)
    {
        menu_additem(menu, "\dSvarshik \r[PU: 3600]", "10", 0)
    }
    else if (g_hats[id] == 10)
    {
        menu_additem(menu, "\wSvarshik \r[\yEquipado\r]", "10", 0)
    }
    else 
    {
        menu_additem(menu, "\wSvarshik", "10", 0)
    }
    if(g_point[id] <= 3999)
    {
        menu_additem(menu, "\dGazowa \r[PU: 4000]", "11", 0)
    }
    else if (g_hats[id] == 11)
    {
        menu_additem(menu, "\wGazowa \r[\yEquipado\r]", "11", 0)
    }
    else 
    {
        menu_additem(menu, "\wGazowa", "11", 0)
    }
    if(g_point[id] <= 4399)
    {
        menu_additem(menu, "\dMarsjanin \r[PU: 4400]", "12", 0)
    }
    else if (g_hats[id] == 12)
    {
        menu_additem(menu, "\wMarsjanin \r[\yEquipado\r]", "12", 0)
    }
    else 
    {
        menu_additem(menu, "\wMarsjanin", "12", 0)
    }
    if(g_point[id] <= 4799)
    {
        menu_additem(menu, "\dAlien \r[PU: 4800]", "13", 0)
    }
    else if (g_hats[id] == 13)
    {
        menu_additem(menu, "\wAlien \r[\yEquipado\r]", "13", 0)
    }
    else 
    {
        menu_additem(menu, "\wAlien", "13", 0)
    }
    if(g_point[id] <= 5199)
    {
        menu_additem(menu, "\dZelazny \r[PU: 5200]", "14", 0)
    }
    else if (g_hats[id] == 14)
    {
        menu_additem(menu, "\wZelazny \r[\yEquipado\r]", "14", 0)
    }
    else 
    {
        menu_additem(menu, "\wZelazny", "14", 0)
    }
    if(g_point[id] <= 5599)
    {
        menu_additem(menu, "\dMummy \r[PU: 5600]", "15", 0)
    }
    else if (g_hats[id] == 15)
    {
        menu_additem(menu, "\wMummy \r[\yEquipado\r]", "15", 0)
    }
    else 
    {
        menu_additem(menu, "\wMummy", "15", 0)
    }
    if(g_point[id] <= 5999)
    {
        menu_additem(menu, "\dDiabel \r[PU: 6000]", "16", 0)
    }
    else if (g_hats[id] == 16)
    {
        menu_additem(menu, "\wDiabel \r[\yEquipado\r]", "16", 0)
    }
    else 
    {
        menu_additem(menu, "\wDiabel", "16", 0)
    }
    if(g_point[id] <= 6399)
    {
        menu_additem(menu, "\dDoccabi \r[PU: 6400]", "17", 0)
    }
    else if (g_hats[id] == 17)
    {
        menu_additem(menu, "\wDoccabi \r[\yEquipado\r]", "17", 0)
    }
    else 
    {
        menu_additem(menu, "\wDoccabi", "17", 0)
    }
    if(g_point[id] <= 6799)
    {
        menu_additem(menu, "\dBruja \r[PU: 6800]", "18", 0)
    }
    else if (g_hats[id] == 18)
    {
        menu_additem(menu, "\wBruja \r[\yEquipado\r]", "18", 0)
    }
    else 
    {
        menu_additem(menu, "\wBruja", "18", 0)
    }
    if(g_point[id] <= 7199)
    {
        menu_additem(menu, "\dFrankenstein \r[PU: 7200]", "19", 0)
    }
    else if (g_hats[id] == 19)
    {
        menu_additem(menu, "\wFrankenstein \r[\yEquipado\r]", "19", 0)
    }
    else 
    {
        menu_additem(menu, "\wFrankenstein", "19", 0)
    }
    if(g_point[id] <= 7599)
    {
        menu_additem(menu, "\dMonin \r[PU: 7600]", "20", 0)
    }
    else if (g_hats[id] == 20)
    {
        menu_additem(menu, "\wMonin \r[\yEquipado\r]", "20", 0)
    }
    else 
    {
        menu_additem(menu, "\wMonin", "20", 0)
    }
    if(g_point[id] <= 7999)
    {
        menu_additem(menu, "\dScream \r[PU: 8000]", "21", 0)
    }
    else if (g_hats[id] == 21)
    {
        menu_additem(menu, "\wScream \r[\yEquipado\r]", "21", 0)
    }
    else 
    {
        menu_additem(menu, "\wScream", "21", 0)
    }
    if(g_point[id] <= 8399)
    {
        menu_additem(menu, "\dJack \r[PU: 8400]", "22", 0)
    }
    else if (g_hats[id] == 22)
    {
        menu_additem(menu, "\wJack \r[\yEquipado\r]", "22", 0)
    }
    else 
    {
        menu_additem(menu, "\wJack", "22", 0)
    }
    if(g_point[id] <= 8799)
    {
        menu_additem(menu, "\dFutbolista \r[PU: 8800]", "23", 0)
    }
    else if (g_hats[id] == 23)
    {
        menu_additem(menu, "\wFutbolista \r[\yEquipado\r]", "23", 0)
    }
    else 
    {
        menu_additem(menu, "\wFutbolista", "23", 0)
    }
    if(g_point[id] <= 9199)
    {
        menu_additem(menu, "\dDarkvader \r[PU: 9200]", "24", 0)
    }
    else if (g_hats[id] == 24)
    {
        menu_additem(menu, "\wDarkvader \r[\yEquipado\r]", "24", 0)
    }
    else 
    {
        menu_additem(menu, "\wDarkvader", "24", 0)
    }
    if(g_point[id] <= 9599)
    {
        menu_additem(menu, "\dRotwaila \r[PU: 9600]", "25", 0)
    }
    else if (g_hats[id] == 25)
    {
        menu_additem(menu, "\wRotwaila \r[\yEquipado\r]", "25", 0)
    }
    else 
    {
        menu_additem(menu, "\wRotwaila", "25", 0)
    }
    if(g_point[id] <= 9999)
    {
        menu_additem(menu, "\dMario \r[PU: 10000]", "26", 0)
    }
    else if (g_hats[id] == 26)
    {
        menu_additem(menu, "\wMario \r[\yEquipado\r]", "26", 0)
    }
    else 
    {
        menu_additem(menu, "\wMario", "26", 0)
    }

    menu_display(id, menu, 0)
}

public SetupSelectMenu3(id)
{  
    new menu = menu_create("\r[ZE]\y Menu de Glows\r", "SelectIt3")
     
    if(g_point[id] <= -1)
    {
        menu_additem(menu, "\wDesactivado", "0", 0)
    }
    else if (g_glows[id] == 0)
    {
        menu_additem(menu, "\wDesactivado \r[\yEquipado\r]", "0", 0)
    }
    else 
    {
        menu_additem(menu, "\wDesactivado", "0", 0)
    }
    if(g_point[id] <= 899)
    {
        menu_additem(menu, "\dRojo \r[PU: 900]", "1", 0)
    }
    else if (g_glows[id] == 1)
    {
        menu_additem(menu, "\wRojo \r[\yEquipado\r]", "1", 0)
    }
    else 
    {
        menu_additem(menu, "\wRojo", "1", 0)
    }
    if(g_point[id] <= 1799)
    {
        menu_additem(menu, "\dVerde \r[PU: 1800]", "2", 0)
    }
    else if (g_glows[id] == 2)
    {
        menu_additem(menu, "\wVerde \r[\yEquipado\r]", "2", 0)
    }
    else 
    {
        menu_additem(menu, "\wVerde", "2", 0)
    }
    if(g_point[id] <= 2699)
    {
        menu_additem(menu, "\dAzul \r[PU: 2700]", "3", 0)
    }
    else if (g_glows[id] == 3)
    {
        menu_additem(menu, "\wAzul \r[\yEquipado\r]", "3", 0)
    }
    else 
    {
        menu_additem(menu, "\wAzul", "3", 0)
    }
    if(g_point[id] <= 3599)
    {
        menu_additem(menu, "\dAmarillo \r[PU: 3600]", "4", 0)
    }
    else if (g_glows[id] == 4)
    {
        menu_additem(menu, "\wAmarillo \r[\yEquipado\r]", "4", 0)
    }
    else 
    {
        menu_additem(menu, "\wAmarillo", "4", 0)
    }
    if(g_point[id] <= 4499)
    {
        menu_additem(menu, "\dNaranja \r[PU: 4500]", "5", 0)
    }
    else if (g_glows[id] == 5)
    {
        menu_additem(menu, "\wNaranja \r[\yEquipado\r]", "5", 0)
    }
    else 
    {
        menu_additem(menu, "\wNaranja", "5", 0)
    }
    if(g_point[id] <= 5399)
    {
        menu_additem(menu, "\dCeleste \r[PU: 5400]", "6", 0)
    }
    else if (g_glows[id] == 6)
    {
        menu_additem(menu, "\wCeleste \r[\yEquipado\r]", "6", 0)
    }
    else 
    {
        menu_additem(menu, "\wCeleste", "6", 0)
    }
    if(g_point[id] <= 6299)
    {
        menu_additem(menu, "\dRosa \r[PU: 6300]", "7", 0)
    }
    else if (g_glows[id] == 7)
    {
        menu_additem(menu, "\wRosa \r[\yEquipado\r]", "7", 0)
    }
    else 
    {
        menu_additem(menu, "\wRosa", "7", 0)
    }
    if(g_point[id] <= 7199)
    {
        menu_additem(menu, "\dMorado \r[PU: 7200]", "8", 0)
    }
    else if (g_glows[id] == 8)
    {
        menu_additem(menu, "\wMorado \r[\yEquipado\r]", "8", 0)
    }
    else 
    {
        menu_additem(menu, "\wMorado", "8", 0)
    }
    if(g_point[id] <= 8099)
    {
        menu_additem(menu, "\dBlanco \r[PU: 8100]", "9", 0)
    }
    else if (g_glows[id] == 9)
    {
        menu_additem(menu, "\wBlanco \r[\yEquipado\r]", "9", 0)
    }
    else 
    {
        menu_additem(menu, "\wBlanco", "9", 0)
    }

    menu_display(id, menu, 0)
}

public SetupSelectMenu4(id)
{  
    new menu = menu_create("\r[ZE]\y Menu de Cuchillos\r", "SelectIt4")
     
    if(g_point[id] <= -1)
    {
        menu_additem(menu, "\wManos", "0", 0)
    }
    else if (g_knifes[id] == 0)
    {
        menu_additem(menu, "\wManos \r[\yEquipado\r]", "0", 0)
    }
    else 
    {
        menu_additem(menu, "\wManos", "0", 0)
    }
    if(g_point[id] <= 749)
    {
        menu_additem(menu, "\dRazor \r[PU: 750]", "1", 0)
    }
    else if (g_knifes[id] == 1)
    {
        menu_additem(menu, "\wRazor \r[\yEquipado\r]", "1", 0)
    }
    else 
    {
        menu_additem(menu, "\wRazor", "1", 0)
    }
    if(g_point[id] <= 1499)
    {
        menu_additem(menu, "\dStrong \r[PU: 1500]", "2", 0)
    }
    else if (g_knifes[id] == 2)
    {
        menu_additem(menu, "\wStrong \r[\yEquipado\r]", "2", 0)
    }
    else 
    {
        menu_additem(menu, "\wStrong", "2", 0)
    }
    if(g_point[id] <= 2249)
    {
        menu_additem(menu, "\dMaster Combat \r[PU: 2250]", "3", 0)
    }
    else if (g_knifes[id] == 3)
    {
        menu_additem(menu, "\wMaster Combat \r[\yEquipado\r]", "3", 0)
    }
    else 
    {
        menu_additem(menu, "\wMaster Combat", "3", 0)
    }
    if(g_point[id] <= 2999)
    {
        menu_additem(menu, "\dXmas \r[PU: 3000]", "4", 0)
    }
    else if (g_knifes[id] == 4)
    {
        menu_additem(menu, "\wXmas \r[\yEquipado\r]", "4", 0)
    }
    else 
    {
        menu_additem(menu, "\wXmas", "4", 0)
    }
    if(g_point[id] <= 3749)
    {
        menu_additem(menu, "\dCrowbar \r[PU: 3750]", "5", 0)
    }
    else if (g_knifes[id] == 5)
    {
        menu_additem(menu, "\wCrowbar \r[\yEquipado\r]", "5", 0)
    }
    else 
    {
        menu_additem(menu, "\wCrowbar", "5", 0)
    }
    if(g_point[id] <= 4499)
    {
        menu_additem(menu, "\dHammer \r[PU: 4500]", "6", 0)
    }
    else if (g_knifes[id] == 6)
    {
        menu_additem(menu, "\wHammer \r[\yEquipado\r]", "6", 0)
    }
    else 
    {
        menu_additem(menu, "\wHammer", "6", 0)
    }
    if(g_point[id] <= 5149)
    {
        menu_additem(menu, "\dMachete \r[PU: 5250]", "7", 0)
    }
    else if (g_knifes[id] == 7)
    {
        menu_additem(menu, "\wMachete \r[\yEquipado\r]", "7", 0)
    }
    else 
    {
        menu_additem(menu, "\wMachete", "7", 0)
    }
    if(g_point[id] <= 5999)
    {
        menu_additem(menu, "\dKatana \r[PU: 6000]", "8", 0)
    }
    else if (g_knifes[id] == 8)
    {
        menu_additem(menu, "\wKatana \r[\yEquipado\r]", "8", 0)
    }
    else 
    {
        menu_additem(menu, "\wKatana", "8", 0)
    }
    if(g_point[id] <= 6749)
    {
        menu_additem(menu, "\dSkullaxe \r[PU: 6750]", "9", 0)
    }
    else if (g_knifes[id] == 9)
    {
        menu_additem(menu, "\wSkullaxe \r[\yEquipado\r]", "9", 0)
    }
    else 
    {
        menu_additem(menu, "\wSkullaxe", "9", 0)
    }
    if(g_point[id] <= 7499)
    {
        menu_additem(menu, "\dDual Katana \r[PU: 7500]", "10", 0)
    }
    else if (g_knifes[id] == 10)
    {
        menu_additem(menu, "\wDual Katana \r[\yEquipado\r]", "10", 0)
    }
    else 
    {
        menu_additem(menu, "\wDual Katana", "10", 0)
    }
    if (g_knifes[id] == 11)
    {
        menu_additem(menu, "\wMotocierra \r[\yEquipado\r]", "11", 0)
    }
    else if (is_user_admin(id))
    {
        menu_additem(menu, "\wMotocierra", "11", 0)
    }
    else 
    {
        menu_additem(menu, "\dMotocierra \r[\yVIP\r]", "11", 0)
    }

    menu_display(id, menu, 0)
}

public SetupSelectMenu5(id)
{  
    new menu = menu_create("\r[ZE]\y Menu de Granadas", "SelectIt5")
     
    if(g_level[id] <= -1)
    {
        menu_additem(menu, "\y[\wGF: 1 | GH: 1 | GB: 1\y]", "0", 0)
    }
    else if (g_grenades[id] == 0)
    {
        menu_additem(menu, "\y[\wGF: 1 | GH: 1 | GB: 1\y] \r[\yEquipado\r]", "0", 0)
    }
    else 
    {
        menu_additem(menu, "\y[\wGF: 1 | GH: 1 | GB: 1\y]", "0", 0)
    }
    if(g_level[id] <= 29)
    {
        menu_additem(menu, "\d[GF: 1 | GH: 2 | GB: 1] \r[Nivel: 30]", "1", 0)
    }
    else if (g_grenades[id] == 1)
    {
        menu_additem(menu, "\y[\wGF: 1 | GH: 2 | GB: 1\y] \r[\yEquipado\r]", "1", 0)
    }
    else 
    {
        menu_additem(menu, "\y[\wGF: 1 | GH: 2 | GB: 1\y]", "1", 0)
    }
    if(g_level[id] <= 49)
    {
        menu_additem(menu, "\d[GF: 2 | GH: 2 | GB: 1] \r[Nivel: 50]", "2", 0)
    }
    else if (g_grenades[id] == 2)
    {
        menu_additem(menu, "\y[\wGF: 2 | GH: 2 | GB: 1\y] \r[\yEquipado\r]", "2", 0)
    }
    else 
    {
        menu_additem(menu, "\y[\wGF: 2 | GH: 2 | GB: 1\y]", "2", 0)
    }
    if(g_level[id] <= 99)
    {
        menu_additem(menu, "\d[GF: 2 | GH: 2 | GB: 2] \r[Nivel: 100]", "3", 0)
    }
    else if (g_grenades[id] == 3)
    {
        menu_additem(menu, "\y[\wGF: 2 | GH: 2 | GB: 2\y] \r[\yEquipado\r]", "3", 0)
    }
    else 
    {
        menu_additem(menu, "\y[\wGF: 2 | GH: 2 | GB: 2\y]", "3", 0)
    }
    if(g_level[id] <= 149)
    {
        menu_additem(menu, "\d[GF: 2 | GH: 3 | GB: 2] \r[Nivel: 150]", "4", 0)
    }
    else if (g_grenades[id] == 4)
    {
        menu_additem(menu, "\y[\wGF: 2 | GH: 3 | GB: 2\y] \r[\yEquipado\r]", "4", 0)
    }
    else 
    {
        menu_additem(menu, "\y[\wGF: 2 | GH: 3 | GB: 2\y]", "4", 0)
    }
    if(g_level[id] <= 199)
    {
        menu_additem(menu, "\d[GF: 3 | GH: 3 | GB: 2] \r[Nivel: 200]", "5", 0)
    }
    else if (g_grenades[id] == 5)
    {
        menu_additem(menu, "\y[\wGF: 3 | GH: 3 | GB: 2\y] \r[\yEquipado\r]", "5", 0)
    }
    else 
    {
        menu_additem(menu, "\y[\wGF: 3 | GH: 3 | GB: 2\y]", "5", 0)
    }
    if(g_level[id] <= 249)
    {
        menu_additem(menu, "\d[GF: 3 | GH: 3 | GB: 3] \r[Nivel: 250]", "6", 0)
    }
    else if (g_grenades[id] == 6)
    {
        menu_additem(menu, "\y[\wGF: 3 | GH: 3 | GB: 3\y] \r[\yEquipado\r]", "6", 0)
    }
    else 
    {
        menu_additem(menu, "\y[\wGF: 3 | GH: 3 | GB: 3\y]", "6", 0)
    }

    menu_display(id, menu, 0)
}

#if defined AMBIENCE_SOUNDS
public start_ambience_sounds( )
{
    // Variables
    static amb_sound[64], sound, Float:duration
    
    // Select our ambience sound
    sound = random_num( 0, sizeof g_sound_ambience - 1 )
    copy( amb_sound, sizeof amb_sound - 1 , g_sound_ambience[ sound ] )
    duration = g_sound_ambience_duration[ sound ]
    
    // Check whether it's a wav or mp3, then play it on clients
    if ( equal( amb_sound[ strlen( amb_sound ) - 4 ], ".mp3" ) )
        client_cmd( 0, "mp3 play ^"sound/%s^"", amb_sound )
    else
        client_cmd( 1, "spk ^"%s^"", amb_sound )
    
    // Start the ambience sounds
    set_task( duration, "start_ambience_sounds", TASK_AMB )
}
#endif

#if defined AMBIENCE_SOUNDS2
public start_ambience_sounds2( )
{
    // Variables
    static amb_sound[64], sound, Float:duration
    
    // Select our ambience sound
    sound = random_num( 0, sizeof g_sound_ambience2 - 1 )
    copy( amb_sound, sizeof amb_sound - 1 , g_sound_ambience2[ sound ] )
    duration = g_sound_ambience_duration2[ sound ]
    
    // Check whether it's a wav or mp3, then play it on clients
    if ( equal( amb_sound[ strlen( amb_sound ) - 4 ], ".mp3" ) )
        client_cmd( 0, "mp3 play ^"sound/%s^"", amb_sound )
    else
        client_cmd( 1, "spk ^"%s^"", amb_sound )
    
    // Start the ambience sounds
    set_task( duration, "start_ambience_sounds2", TASK_AMB )
}
#endif

#if defined AMBIENCE_SOUNDS3
public start_ambience_sounds3( )
{
    // Variables
    static amb_sound[64], sound, Float:duration
    
    // Select our ambience sound
    sound = random_num( 0, sizeof g_sound_ambience3 - 1 )
    copy( amb_sound, sizeof amb_sound - 1 , g_sound_ambience3[ sound ] )
    duration = g_sound_ambience_duration3[ sound ]
    
    // Check whether it's a wav or mp3, then play it on clients
    if ( equal( amb_sound[ strlen( amb_sound ) - 4 ], ".mp3" ) )
        client_cmd( 0, "mp3 play ^"sound/%s^"", amb_sound )
    else
        client_cmd( 1, "spk ^"%s^"", amb_sound )
    
    // Start the ambience sounds
    set_task( duration, "start_ambience_sounds3", TASK_AMB )
}
#endif

#if defined AMBIENCE_SOUNDS4
public start_ambience_sounds4( )
{
    // Variables
    static amb_sound[64], sound, Float:duration
    
    // Select our ambience sound
    sound = random_num( 0, sizeof g_sound_ambience4 - 1 )
    copy( amb_sound, sizeof amb_sound - 1 , g_sound_ambience4[ sound ] )
    duration = g_sound_ambience_duration4[ sound ]
    
    // Check whether it's a wav or mp3, then play it on clients
    if ( equal( amb_sound[ strlen( amb_sound ) - 4 ], ".mp3" ) )
        client_cmd( 0, "mp3 play ^"sound/%s^"", amb_sound )
    else
        client_cmd( 1, "spk ^"%s^"", amb_sound )
    
    // Start the ambience sounds
    set_task( duration, "start_ambience_sounds4", TASK_AMB )
}
#endif

fn_get_alive_players( )
{
    static i_alive, id
    i_alive = 0
    
    for ( id = 1; id <= g_maxplayers; id++ )
    {
        if( is_user_alive( id ) )
            i_alive++
    }
    return i_alive;
}  

ReadFile()
{
    new szData[64], szX[13], szY[13], szZ[13], Origin[3]
    
    new File = fopen(g_szDirFile, "rt")
    
    while(!feof(File))
    {
        fgets(File, szData, charsmax(szData))
        
        if(!szData[0] || szData[0] == ';' || szData[0] == ' ' || (szData[0] == '/' && szData[1] == '/'))
            continue
            
        parse(szData, szX, charsmax(szX), szY, charsmax(szY), szZ, charsmax(szZ))
  
        Origin[0] = str_to_num(szX)
        Origin[1] = str_to_num(szY)
        Origin[2] = str_to_num(szZ)
        
        Create_Entity(Origin)
    }
    
    fclose(File)
}

public MenuZonas(id){
    new menu = menu_create("Menu Zonas","Handler")
    
    menu_additem(menu,"Poner Zona")
    menu_additem(menu,"Borrar Zona")
    menu_additem(menu,"Guardar Zona")
    
    menu_display(id,menu)
    return PLUGIN_HANDLED
}
public Handler(id,menu,item){
    if(item == MENU_EXIT)
    return PLUGIN_HANDLED
    
    switch(item){
        case 0:{
            new iOrigin[3]
            get_user_origin(id, iOrigin, 2)
            Create_Entity(iOrigin)
        }
        case 1:{
            new ent = -1
            while((ent = find_ent_by_class(ent, iClassName)))
            remove_entity(ent)
        }
        case 2:Guardar(id)
    }
    
    MenuZonas(id)
    return PLUGIN_HANDLED
}

public Create_Entity(iOrigin[3]) {
    new iEnt = create_entity("info_target") // Creamos la entidad con un nombre

    new Float:OriginF[3]
    IVecFVec(iOrigin, OriginF)
    entity_set_vector(iEnt,EV_VEC_origin, OriginF)

    entity_set_string(iEnt, EV_SZ_classname, iClassName) // Le asignamos el nombre creado a la entidad.
    
    new Float:mins[3] = {-10.0, -10.0, 0.0} // Tamaño
    new Float:maxs[3] = {10.0, 10.0, 150.0} // Tamaño
    entity_set_size(iEnt, mins, maxs) // Creamos el tamaño de la entidad (No el model)
    
    entity_set_int(iEnt, EV_INT_solid, SOLID_TRIGGER) // La hacemos solida
    entity_set_int(iEnt, EV_INT_movetype, MOVETYPE_STEP) // Hacemos que no se mueva.
}

public Func_Touch(iEnt, iToucher) 
{
         static players[32], party
	
	if (is_user_admin(iToucher))
         {
         if(!g_PartyData[iToucher][In_Party])
         {
	 	if (!is_valid_ent(iEnt) || !is_valid_ent(iToucher) || escape[iToucher]) return FMRES_IGNORED;
		
	 	if (!is_user_alive(iToucher) || escape[iToucher]) return FMRES_IGNORED;
		
	 	g_escape[iToucher]++
		
		if (g_escape[iToucher] > 999999999)
		{
			g_escape[iToucher] = 999999999
		}	
		
		escape[iToucher] = true
		
		if (g_quest[iToucher] == 4) g_questkill[iToucher][3]++
		
		if (g_happytime) g_experience[iToucher] += get_pcvar_num(cvar_xp_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp) * 2)
		else g_experience[iToucher] += get_pcvar_num(cvar_xp_for_escape) * 2
		
		if (g_experience[iToucher] > 999999999)
		{
			g_experience[iToucher] = 999999999
		}
		
		if (g_happytime) g_ammopacks[iToucher][0] += get_pcvar_num(cvar_ap_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp))
		else g_ammopacks[iToucher][0] += get_pcvar_num(cvar_ap_for_escape)
		
		if (g_ammopacks[iToucher][0] > 999999999)
		{
			g_experience[iToucher] = 999999999
		}
		
		if (g_happytime) g_point[iToucher] += get_pcvar_num(cvar_pu_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp) * 2)
		else g_point[iToucher] += get_pcvar_num(cvar_pu_for_escape) * 2
		
		if (g_point[iToucher] > 999999999)
		{
			g_point[iToucher] = 999999999
		}
		
		zp_colored_print(iToucher, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp y^x04 %d^x01 PU por Llegar a la Zona de^x04 Escape", 
		g_happytime ? get_pcvar_num(cvar_xp_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp) * 2) : get_pcvar_num(cvar_xp_for_escape) * 2,
		g_happytime ? get_pcvar_num(cvar_pu_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp) * 2) : get_pcvar_num(cvar_pu_for_escape) * 2)
		zp_colored_print(iToucher, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Ammopacks por Llegar a la Zona de^x04 Escape",
		g_happytime ? get_pcvar_num(cvar_ap_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp)) : get_pcvar_num(cvar_ap_for_escape)) 
		
		complete(iToucher)
		update_level(iToucher)
	}
	else
	{
		get_party_index(iToucher, players)
		for(new o; o < g_PartyData[iToucher][Amount_In_Party]; o++)
		{
			party = players[o]
			
			if (!is_valid_ent(iEnt) || !is_valid_ent(party) || escape[party]) return FMRES_IGNORED;
			
			if (!is_user_alive(party) || escape[party]) return FMRES_IGNORED;
			
			g_escape[party]++
			
			if (g_escape[party] > 999999999)
			{
				g_escape[party] = 999999999
			}
			
			escape[party] = true
			
			if (g_quest[party] == 4) g_questkill[party][3]++
			
			if (g_happytime) g_experience[party] += get_pcvar_num(cvar_xp_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp) * 2)
			else g_experience[party] += get_pcvar_num(cvar_xp_for_escape) * 2
			
			if (g_experience[party] > 999999999)
			{
				g_experience[party] = 999999999
			}
			
			if (g_happytime) g_ammopacks[party][0] += get_pcvar_num(cvar_ap_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp))
			else g_ammopacks[party][0] += get_pcvar_num(cvar_ap_for_escape)
			
			if (g_ammopacks[party][0] > 999999999)
			{
				g_ammopacks[party][0] = 999999999
			}
			
			if (g_happytime) g_point[party] += get_pcvar_num(cvar_pu_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp) * 2)
			else g_point[party] += get_pcvar_num(cvar_pu_for_escape) * 2
			
			if (g_point[party] > 999999999)
			{
				g_point[party] = 999999999
			}
			
			zp_colored_print(party, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp y^x04 %d^x01 PU en tu^x04 Party", 
			g_happytime ? get_pcvar_num(cvar_xp_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp) * 2) : get_pcvar_num(cvar_xp_for_escape) * 2,
			g_happytime ? get_pcvar_num(cvar_pu_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp) * 2) : get_pcvar_num(cvar_pu_for_escape) * 2)
			zp_colored_print(party, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Ammopacks en tu^x04 Party",
			g_happytime ? get_pcvar_num(cvar_ap_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp)) : get_pcvar_num(cvar_ap_for_escape))
			
			complete(party)
			update_level(party)
		}
	}
	}
	else
	{
         if(!g_PartyData[iToucher][In_Party])
         {
	 	if (!is_valid_ent(iEnt) || !is_valid_ent(iToucher) || escape[iToucher]) return FMRES_IGNORED;
		
	 	if (!is_user_alive(iToucher) || escape[iToucher]) return FMRES_IGNORED;
		
	 	g_escape[iToucher]++
		
		if (g_escape[iToucher] > 999999999)
		{
			g_escape[iToucher] = 999999999
		}	
		
		escape[iToucher] = true
		
		if (g_quest[iToucher] == 4) g_questkill[iToucher][3]++
		
		if (g_happytime) g_experience[iToucher] += get_pcvar_num(cvar_xp_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp))
		else g_experience[iToucher] += get_pcvar_num(cvar_xp_for_escape)
		
		if (g_experience[iToucher] > 999999999)
		{
			g_experience[iToucher] = 999999999
		}
		
		if (g_happytime) g_ammopacks[iToucher][0] += get_pcvar_num(cvar_ap_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp))
		else g_ammopacks[iToucher][0] += get_pcvar_num(cvar_ap_for_escape)
		
		if (g_ammopacks[iToucher][0] > 999999999)
		{
			g_experience[iToucher] = 999999999
		}
		
		if (g_happytime) g_point[iToucher] += get_pcvar_num(cvar_pu_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp))
		else g_point[iToucher] += get_pcvar_num(cvar_pu_for_escape)
		
		if (g_point[iToucher] > 999999999)
		{
			g_point[iToucher] = 999999999
		}
		
		zp_colored_print(iToucher, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp y^x04 %d^x01 PU por Llegar a la Zona de^x04 Escape", 
		g_happytime ? get_pcvar_num(cvar_xp_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp)) : get_pcvar_num(cvar_xp_for_escape),
		g_happytime ? get_pcvar_num(cvar_pu_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp)) : get_pcvar_num(cvar_pu_for_escape))
		zp_colored_print(iToucher, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Ammopacks por Llegar a la Zona de^x04 Escape",
		g_happytime ? get_pcvar_num(cvar_ap_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp)) : get_pcvar_num(cvar_ap_for_escape)) 
		
		complete(iToucher)
		update_level(iToucher)
	}
	else
	{
		get_party_index(iToucher, players)
		for(new o; o < g_PartyData[iToucher][Amount_In_Party]; o++)
		{
			party = players[o]
			
			if (!is_valid_ent(iEnt) || !is_valid_ent(party) || escape[party]) return FMRES_IGNORED;
			
			if (!is_user_alive(party) || escape[party]) return FMRES_IGNORED;
			
			g_escape[party]++
			
			if (g_escape[party] > 999999999)
			{
				g_escape[party] = 999999999
			}
			
			escape[party] = true
			
			if (g_quest[party] == 4) g_questkill[party][3]++
			
			if (g_happytime) g_experience[party] += get_pcvar_num(cvar_xp_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp))
			else g_experience[party] += get_pcvar_num(cvar_xp_for_escape)
			
			if (g_experience[party] > 999999999)
			{
				g_experience[party] = 999999999
			}
			
			if (g_happytime) g_ammopacks[party][0] += get_pcvar_num(cvar_ap_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp))
			else g_ammopacks[party][0] += get_pcvar_num(cvar_ap_for_escape)
			
			if (g_ammopacks[party][0] > 999999999)
			{
				g_ammopacks[party][0] = 999999999
			}
			
			if (g_happytime) g_point[party] += get_pcvar_num(cvar_pu_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp))
			else g_point[party] += get_pcvar_num(cvar_pu_for_escape)
			
			if (g_point[party] > 999999999)
			{
				g_point[party] = 999999999
			}
			
			zp_colored_print(party, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Exp y^x04 %d^x01 PU en tu^x04 Party", 
			g_happytime ? get_pcvar_num(cvar_xp_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp)) : get_pcvar_num(cvar_xp_for_escape),
			g_happytime ? get_pcvar_num(cvar_pu_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp)) : get_pcvar_num(cvar_pu_for_escape))
			zp_colored_print(party, "^x04[ZE]^x01 Ganaste^x04 %d^x01 Ammopacks en tu^x04 Party",
			g_happytime ? get_pcvar_num(cvar_ap_for_escape) * floatround(get_pcvar_float(cvar_hhdropxp)) : get_pcvar_num(cvar_ap_for_escape))
			
			complete(party)
			update_level(party)
		}
	}
	}
}

public remove_escape_task(id)
{
    escape[id] = false
}  

public Posicion(id){
    new ent = -1,Float:Origin[3]
    
    while((ent = find_ent_by_class(ent, iClassName))){
        
        entity_get_vector(ent, EV_VEC_origin, Origin)
        
        client_print(id,print_chat,"%f %f %f ", Origin[0], Origin[1], Origin[2])
    }
}
public Guardar(id){
    new szData[64], ent = -1,  Float:Origin[3]
                        
    if(file_exists(g_szDirFile))
        delete_file(g_szDirFile)
                            
    new File = fopen(g_szDirFile, "at")
            
    write_file(g_szDirFile, "//Posicion En El Mapa De las Zonas de Escapes")
                        
    while((ent = find_ent_by_class(ent, iClassName)))
    {
        entity_get_vector(ent, EV_VEC_origin, Origin)
                                
        formatex(szData, charsmax(szData), "%f %f %f^n", Origin[0], Origin[1], Origin[2])
        
        fputs(File, szData)
    }
            
    fclose(File)
            
    client_print(id, print_chat, "Zonas de Escapes Guardados")
} 

// When finish round...
complete(id)
{
	// Is in quest?
	if (g_quest[id])
	{
		// Auto-complete quest
		for (new i = 0; i < 8; i++)
		{
			if (g_questkill[id][i] >= quest_cost(g_questcompleted[id][i]))
			{
				menu_quest(id, i)
				Save(id) // save progress
				return;
			}
		}
	}
}	

// Remove Custom Model Entities
public fm_model_ents(id)
{
	if (g_class[id] >= SURVIVOR) return;
	
	// Set model on entity or make a new one if unexistant
	if (g_hats[id] == 0)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_1)
			}	
		}
	}
	else if (g_hats[id] == 1)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_2)
			}	
		}
	}
	else if (g_hats[id] == 2)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_3)
			}	
		}
	}
	else if (g_hats[id] == 3)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_4)
			}	
		}
	}
	else if (g_hats[id] == 4)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_5)
			}	
		}
	}
	else if (g_hats[id] == 5)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_6)
			}	
		}
	}
	else if (g_hats[id] == 6)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_7)
			}	
		}
	}
	else if (g_hats[id] == 7)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_8)
			}	
		}
	}
	else if (g_hats[id] == 8)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_9)
			}	
		}
	}
	else if (g_hats[id] == 9)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_10)
			}	
		}
	}
	else if (g_hats[id] == 10)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_11)
			}	
		}
	}
	else if (g_hats[id] == 11)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_12)
			}	
		}
	}
	else if (g_hats[id] == 12)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_13)
			}	
		}
	}
	else if (g_hats[id] == 13)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_14)
			}	
		}
	}
	else if (g_hats[id] == 14)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_15)
			}	
		}
	}
	else if (g_hats[id] == 15)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_16)
			}	
		}
	}
	else if (g_hats[id] == 16)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_17)
			}	
		}
	}
	else if (g_hats[id] == 17)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_18)
			}	
		}
	}
	else if (g_hats[id] == 18)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_19)
			}	
		}
	}
	else if (g_hats[id] == 19)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_20)
			}	
		}
	}
	else if (g_hats[id] == 20)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_21)
			}	
		}
	}
	else if (g_hats[id] == 21)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_22)
			}	
		}
	}
	else if (g_hats[id] == 22)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_23)
			}	
		}
	}
	else if (g_hats[id] == 23)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_24)
			}	
		}
	}
	else if (g_hats[id] == 24)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_25)
			}	
		}
	}
	else if (g_hats[id] == 25)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_26)
			}	
		}
	}
	else if (g_hats[id] == 26)
	{
		fm_remove_model_ents(id)
		if (!pev_valid(g_ent_hat[id]))
		{
			g_ent_hat[id] = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "info_target"))
			if (!pev_valid(g_ent_hat[id])) return;
			{
				set_pev(g_ent_hat[id], pev_classname, "player_model")
				set_pev(g_ent_hat[id], pev_movetype, MOVETYPE_FOLLOW)
				set_pev(g_ent_hat[id], pev_aiment, id)
				set_pev(g_ent_hat[id], pev_owner, id)
				engfunc(EngFunc_SetModel, g_ent_hat[id], hat_27)
			}	
		}
	}
}

// Remove Custom Model Entities
stock fm_remove_model_ents(id)
{	
	// Remove "playermodel" ent if present
	if (pev_valid(g_ent_hat[id]))
	{
		engfunc(EngFunc_RemoveEntity, g_ent_hat[id])
		g_ent_hat[id] = 0
	}
}

public fw_Knife_PrimaryAttack(knife)
{
	// Get Owner...
	static iPlayer 
	iPlayer = get_pdata_cbase(knife, m_pPlayer, 4)
	
	// Block secondary attack
	if(is_user_valid_alive(iPlayer) && zp_get_user_zombie(iPlayer) && g_frozen[iPlayer])
		return HAM_SUPERCEDE
		
	return HAM_IGNORED
}

public fw_Knife_SecondaryAttack(knife)
{
	// Get Owner...
	static iPlayer 
	iPlayer = get_pdata_cbase(knife, m_pPlayer, 4)
	
	// Block secondary attack
	if(is_user_valid_alive(iPlayer) && zp_get_user_zombie(iPlayer) && g_frozen[iPlayer])
		return HAM_SUPERCEDE
		
	return HAM_IGNORED
}

public show_current_combo(id, idamage) // public para el combo ocurrido funcione
{
	static combo; combo = g_combo[id]
	
	set_hudmessage(255, 0, 0, -1.0, 0.6, 1, 3.0, 3.0, 0.01, 0.01)
	ShowSyncHudMsg(id, g_MsgSync3, "%s^n^nCombo %d^n%d | %d^nHit: %d", g_info_combo[id], combo + 1, g_damagecombo[id], ammount_damage(combo), g_damagehits[id])
}

public finish_combo(taskid) // public que finaliza el combo
{
	static id, ap, info[32];
	
	id = ID_FINISH_COMBO // finaliza el combo
	
	ap = (g_combo[id] * 1) // nos dará los ap
	
	set_hudmessage(255, 0, 0, -1.0, 0.7, 1, 3.0, 3.0, 0.01, 0.01) // colores para el hud del combo
	
	if (ap) // condicion para proseguir
	{
		formatex(info, charsmax(info), "Extra AP ganados: %d", g_happytime ? ap * floatround(get_pcvar_float(cvar_hhdropxp)) : ap) // nos dará los ammopacks correspondientes
		if (g_happytime) g_ammopacks[id][0] += ap * floatround(get_pcvar_float(cvar_hhdropxp))
		else g_ammopacks[id][0] += ap
		
		if (g_ammopacks[id][0] > 999999999)
		{
			g_ammopacks[id][0] = 999999999
		}
	}
	else
	{
		info[0] = '^0'
	}
	
	ShowSyncHudMsg(id, g_MsgSync3, "Combo finalizado!^nTotal: %d, danio: %d, hits: %d^n^n%s", g_combo[id], g_damagecombo[id], g_damagehits[id], info) // hud que índica que el combo ha finalizado
	
	g_combo[id] = 0 // reinicia el combo en cero
	g_damagecombo[id] = 0 // reinicia el damage
	g_damagehits[id] = 0  // reinicia los hits por el damage
	
	complete(id)
	update_level(id)
}

public info_combo(taskid) // public que nos dará la info del combo
{
	static id;
	id = ID_INFO_COMBO
	
	g_info_combo[id][0] = '^0' // nos dará cierta información
}

public reset_combo(taskid) // public que reinicia el combo
{
	static id;
	id = ID_RESET_COMBO
	
	g_combo[id] = 0
	g_damagecombo[id] = 0
	g_damagehits[id] = 0
}	

stock Color(const id, const input[], any:...)
{
	static msg[191]
	vformat(msg, 190, input, 3)
	
	replace_all(msg, 190, "!g", "^4")
	replace_all(msg, 190, "!y", "^1")
	replace_all(msg, 190, "!t", "^3")
	
	message_begin(MSG_ONE_UNRELIABLE, g_msgSayText, _, id)
	write_byte(id)
	write_string(msg)
	message_end()
}

public cmdParty(id) 
{    
    if(g_PartyData[id][In_Party])
        show_party_info_menu(id)
    else
        show_party_menu(id)
    
    return PLUGIN_HANDLED
}

public show_party_menu(id) 
{
    
    new iMenu = menu_create("\r[Party]\y Menu Party","party_menu"), BlockParty[50]
    
    menu_additem(iMenu, "\yCrear Party", "0")
    
    formatex(BlockParty, charsmax(BlockParty), "\yBloquear Invitaciones De Party:\w %s",g_PartyData[id][Block_Party] ? "Si" : "No")
    
    menu_additem(iMenu, BlockParty, "1")
    
    menu_setprop(iMenu, MPROP_EXITNAME, "Salir")
    menu_setprop(iMenu, MPROP_EXIT, MEXIT_ALL)
    
    menu_display(id, iMenu, 0)
}
public show_party_info_menu(id) 
{    
    new iMenu = menu_create("\r[Party] Menu Party:","party_info_menu")
    
    menu_additem(iMenu, "Agregar Integrante", .callback = g_MenuCallback[MASTER])
    menu_additem(iMenu, "Expulsar Integrande", .callback = g_MenuCallback[MASTER])
    menu_additem(iMenu, "Destruir Party", .callback = g_MenuCallback[MASTER])
    menu_additem(iMenu, "Salir del Party", .callback = g_MenuCallback[USER])
    
    menu_setprop(iMenu, MPROP_EXITNAME, "Salir")
    menu_setprop(iMenu, MPROP_EXIT, MEXIT_ALL)
    
    menu_display(id, iMenu)
}
public show_party_add_menu(id) 
{    
    new iMenu = menu_create(g_PartyData[id][In_Party] ? "\r[Party] Agregar Integrante:" : "[Party] \rCrear Party:", "party_create_menu"), Poss[3], Name[32]
    
    for(new player = 1; player <= g_maxplayers; player++) {
        
        if(!is_available_to_party(player) || id == player)
            continue;
            
        get_user_name(player, Name, charsmax(Name))
        num_to_str(player, Poss, charsmax(Poss))
        menu_additem(iMenu, Name, Poss)
    }
    
    menu_setprop(iMenu, MPROP_EXITNAME, "Salir")
    menu_setprop(iMenu, MPROP_EXIT, MEXIT_ALL)
    
    menu_display(id, iMenu)
}
public show_party_kick_menu(id)
{    
    new iMenu = menu_create("\r[Party] \yExpulsar Party Menu:","party_kick_menu"), Players[32], Poss[3], user
    
    get_party_index(id, Players)
    
    for(new player; player < g_PartyData[id][Amount_In_Party]; player++) {
        user = Players[player]
        num_to_str(user, Poss, charsmax(Poss))
        menu_additem(iMenu, g_PartyData[user][UserName], Poss)
    }
    
    menu_setprop(iMenu, MPROP_EXITNAME, "Salir")
    
    menu_display(id, iMenu)
}
public show_party_invite_menu(id2, MasterId) 
{    
    new MenuTitle[128], iMenu, Str_MasterId[3]
    
    set_player_party_name(MasterId)
    set_player_party_name(id2)
    
    client_print(MasterId, print_chat, "%s Solicitud enviada a %s", TAG, g_PartyData[id2][UserName])
    
    formatex(MenuTitle, charsmax(MenuTitle), "\r[Party] \y%s \wte mando una invitacion para \y%s Party", g_PartyData[MasterId][UserName], g_PartyData[MasterId][In_Party] ? "unirte al" : "crear un")
    
    new UserTaskArgs[3]
    
    UserTaskArgs[0] = iMenu = menu_create(MenuTitle , "party_invite_menu")
    UserTaskArgs[1] = MasterId
    
    num_to_str(MasterId, Str_MasterId, charsmax(Str_MasterId))
    
    menu_additem( iMenu , "\yAceptar", Str_MasterId)
    menu_additem( iMenu , "\yRechazar", Str_MasterId)
    
    if(is_user_bot(id2) && get_pcvar_num(cvar_allow_bots)) {
        party_invite_menu(id2, iMenu, 0)
        return
    }
    
    menu_setprop(iMenu, MPROP_EXIT, MEXIT_NEVER)
    
    menu_display(id2, iMenu)
    
    remove_task_acept(id2)
    
    set_task(get_pcvar_float(cvar_time_acept), "Time_Acept", id2+TASK_ACEPT, UserTaskArgs, 2)
}
public party_menu(id, menu, item) 
{    
    if(item == MENU_EXIT) {
        menu_destroy(menu)
        return
    }
    
    if(item) {
        g_PartyData[id][Block_Party] = g_PartyData[id][Block_Party] ? false : true
        show_party_menu(id)
    }
    else
        show_party_add_menu(id)
    
    menu_destroy(menu)
    
}
public party_create_menu(id, menu, item) 
{
    
    if(item == MENU_EXIT) {
        menu_destroy(menu)
        return
    }
    
    new iKey[6], iAccess, iCallback, id2
    
    menu_item_getinfo(menu, item, iAccess, iKey, charsmax(iKey), _, _, iCallback)
    
    id2 = str_to_num(iKey)
    
    if(!is_available_to_party(id2))
        return
    
    show_party_invite_menu(id2, id)
    
    menu_destroy(menu)
}
public party_invite_menu(id, menu, item) 
{
    
    if(item == MENU_EXIT) 
    {
        menu_destroy(menu)
        remove_task_acept(id)
        return
    }
    
    new iKey[6], iAccess, iCallback, id_master
    
    menu_item_getinfo(menu, item, iAccess, iKey, charsmax(iKey), _, _, iCallback)
    
    id_master = str_to_num(iKey)
    
    switch(item) 
    {
        case 0: 
        {
                        
            if(!g_PartyData[id_master][In_Party]) 
            {
                create_party(id_master, id)
                set_task_party_hud(id_master)
                set_task_party_hud(id)
            }
            else 
            {
                if(g_PartyData[id_master][Amount_In_Party] == get_pcvar_num(cvar_max_players)) 
                {
                
                    client_print(id, print_chat, "%s Ya se alcanzo el numero maximo de integrantes en el party", TAG)
                    client_print(id_master, print_chat, "%s Ya alcanzaste el numero maximo de integrantes en el party", TAG)
                
                    remove_task_acept(id)
    
                    menu_destroy(menu)
                    return
                }
                
                add_party_user(id_master, id)
                set_task_party_hud(id)
            }
            
            client_print(id_master, print_chat, "%s %s fue agregado al Party", TAG, g_PartyData[id][UserName])
        }
        case 1: client_print(id_master, print_chat, "%s %s cancelo la invitacion de Party", TAG, g_PartyData[id][UserName])
    }
    
    remove_task_acept(id)
    
    menu_destroy(menu)
}
public party_kick_menu(id, menu, item) 
{    
    if(item == MENU_EXIT) 
    {
        menu_destroy(menu)
        return
    }
    
    new iKey[6], iAccess, iCallback, id2
    
    menu_item_getinfo(menu, item, iAccess, iKey, charsmax(iKey), _, _, iCallback)
    
    id2 = str_to_num(iKey)
    
    if(is_user_connected(id2))
        g_PartyData[id][Amount_In_Party] == 2 ? destoy_party(id) : remove_party_user(id2)
    
    menu_destroy(menu)
}

public party_info_menu(id, menu,item) 
{    
    if(item == MENU_EXIT) {
        menu_destroy(menu)
        return
    }
    
    switch(item) 
    {
        case 0: 
        {
            if(g_PartyData[id][Amount_In_Party] < get_pcvar_num(cvar_max_players))
                show_party_add_menu(id)
            else
                client_print(id, print_chat, "%s Ya alcanzaste el numero maximo de integrantes en el party", TAG)
        }
        case 1: show_party_kick_menu(id)
        case 2: destoy_party(id)
        case 3: remove_party_user(id)
    }
    
    menu_destroy(menu)
}
public PartyHud(taskid) 
{    
    static id
    id = ID_HUD
    
    if(!is_user_connected(id)) {
        remove_task(taskid)
        return
    }
    
    static CountParty, PartyMsg[256], Players[32], id2
    
    CountParty = 0
    PartyMsg[0] = 0

    get_party_index(id, Players)
    for(new i; i < g_PartyData[id][Amount_In_Party]; i++) {
        
        id2 = Players[i]
        
        if(CountParty)
            add(PartyMsg, charsmax(PartyMsg), "^n")
        
        format(PartyMsg, charsmax(PartyMsg), "%s%s", strlen(PartyMsg) ? PartyMsg : "^t^t^tMiembros del Party^n", g_PartyData[id2][UserName])
        CountParty++
    }
        
    set_hudmessage(255, 255, 255, 0.75, 0.34, 0, 6.0, 1.0);
    show_hudmessage(id, PartyMsg)
}
public Time_Acept(UserTaskArgs[], taskid) 
{    
    taskid -= TASK_ACEPT;
    
    if(!g_PartyData[taskid][In_Party]) 
    {
        
        client_print(UserTaskArgs[1], print_chat, "%s %s cancelo la invitacion de party", TAG, g_PartyData[taskid][UserName])
        menu_destroy(UserTaskArgs[0])
        show_menu(taskid, 0, "^n", 1)
    }
}  

stock create_party(master, guest) 
{    
    set_party_member(master, master)
    set_party_member(master, guest)
    set_party_member(guest, master)
    set_party_member(guest, guest)
    
    set_party_vars(master, Start_Amount)
    set_party_vars(guest, ++g_PartyData[master][Amount_In_Party])
}
stock add_party_user(master, guest) 
{    
    new Players[32], member, amount = g_PartyData[master][Amount_In_Party]
        
    get_party_index(master, Players)
    
    for(new i; i < amount; i++) {
        
        member = Players[i]
        
        set_party_member(guest, member)
        set_party_member(member, guest)
        g_PartyData[member][Amount_In_Party]++
        
    }
    
    set_party_member(guest, guest)
    set_party_vars(guest, amount+1)    
}
stock set_party_member(id, id2)
    ArrayPushCell(Party_Ids[id], id2)

stock set_party_vars(id, amount) 
{
    g_PartyData[id][In_Party] = true
    g_PartyData[id][Position] = amount-1
    g_PartyData[id][Amount_In_Party] = amount
    
}
stock destoy_party(id)
{
    new Players[32], id2, Amount = g_PartyData[id][Amount_In_Party]
    get_party_index(id, Players)
    
    for(new i; i < Amount; i++) 
    {
        id2 = Players[i]
        clear_party_user(id2)
        client_print(id2, print_chat, "%s La party fue destruida", TAG)
        
    }
}
stock remove_party_user(user) 
{    
    new Players[32], id, Amount = g_PartyData[user][Amount_In_Party]
    
    get_party_index(user, Players)
    
    clear_party_user(user)
    
    for(new i; i < Amount; i++) {
    
        id = Players[i]
        
        if(id != user) {
            
            ArrayClear(Party_Ids[id])
            
            for(new z; z < Amount; z++)                    
                if(Players[z] != user)
                    set_party_member(id, Players[z])
                
            g_PartyData[id][Position] = i
            g_PartyData[id][Amount_In_Party] = Amount-1
            client_print(id, print_chat, "%s %s salio del party", TAG, g_PartyData[user][UserName])
        }
    }
}
stock clear_party_user(id)
{
    ArrayClear(Party_Ids[id])
    g_PartyData[id][In_Party] = false
    g_PartyData[id][Position] = NONE
    g_PartyData[id][Amount_In_Party] = NONE
    remove_task_party_hud(id)
}

stock set_task_party_hud(id)
    set_task(1.0, "PartyHud", id+TASK_HUD, _, _, "b")
    
stock remove_task_party_hud(id)
    remove_task(id+TASK_HUD)

stock remove_task_acept(id)
    if(task_exists(id+TASK_ACEPT))
        remove_task(id+TASK_ACEPT)
    

stock set_player_party_name(id) 
{
    if(g_PartyData[id][UserName][0])
        return 0
    
    get_user_name(id, g_PartyData[id][UserName], charsmax(g_PartyData[][UserName]))
    
    return 1
}

stock is_available_to_party(id) 
{
    if(!is_user_connected(id) || g_PartyData[id][In_Party] || g_PartyData[id][Block_Party])
        return false
    
    return true
}        
    
stock get_party_index(id, players[]) 
{
    for(new i; i < g_PartyData[id][Amount_In_Party]; i++)
        players[i] = ArrayGetCell(Party_Ids[id], i)
    
    return players[0] ? 1 : 0
}

public check_master(id)
    return g_PartyData[id][Position] ? ITEM_DISABLED : ITEM_ENABLED
    
public check_user(id)
    return g_PartyData[id][Position] ? ITEM_ENABLED : ITEM_DISABLED 

public grenade(id)
{
	if (g_grenades[id] == 0)
	{
		give_item(id, "weapon_hegrenade")
		give_item(id, "weapon_flashbang")
		give_item(id, "weapon_smokegrenade")
	}
	if (g_grenades[id] == 1)
	{
		give_item(id, "weapon_hegrenade")
		give_item(id, "weapon_flashbang")
		give_item(id, "weapon_flashbang")
		give_item(id, "weapon_smokegrenade")
		cs_set_user_bpammo(id, CSW_FLASHBANG, 2)
	}
	if (g_grenades[id] == 2)
	{
		give_item(id, "weapon_hegrenade")
		give_item(id, "weapon_hegrenade")
		give_item(id, "weapon_flashbang")
		give_item(id, "weapon_flashbang")
		give_item(id, "weapon_smokegrenade")
		cs_set_user_bpammo(id, CSW_HEGRENADE, 2)
		cs_set_user_bpammo(id, CSW_FLASHBANG, 2)
	}
	if (g_grenades[id] == 3)
	{
		give_item(id, "weapon_hegrenade")
		give_item(id, "weapon_hegrenade")
		give_item(id, "weapon_flashbang")
		give_item(id, "weapon_flashbang")
		give_item(id, "weapon_smokegrenade")
		give_item(id, "weapon_smokegrenade")
		cs_set_user_bpammo(id, CSW_HEGRENADE, 2)
		cs_set_user_bpammo(id, CSW_FLASHBANG, 2)
		cs_set_user_bpammo(id, CSW_SMOKEGRENADE, 2)
	}
	if (g_grenades[id] == 4)
	{
		give_item(id, "weapon_hegrenade")
		give_item(id, "weapon_hegrenade")
		give_item(id, "weapon_flashbang")
		give_item(id, "weapon_flashbang")
		give_item(id, "weapon_flashbang")
		give_item(id, "weapon_smokegrenade")
		give_item(id, "weapon_smokegrenade")
		cs_set_user_bpammo(id, CSW_HEGRENADE, 2)
		cs_set_user_bpammo(id, CSW_FLASHBANG, 3)
		cs_set_user_bpammo(id, CSW_SMOKEGRENADE, 2)
	}
	if (g_grenades[id] == 5)
	{
		give_item(id, "weapon_hegrenade")
		give_item(id, "weapon_hegrenade")
		give_item(id, "weapon_hegrenade")
		give_item(id, "weapon_flashbang")
		give_item(id, "weapon_flashbang")
		give_item(id, "weapon_flashbang")
		give_item(id, "weapon_smokegrenade")
		give_item(id, "weapon_smokegrenade")
		cs_set_user_bpammo(id, CSW_HEGRENADE, 3)
		cs_set_user_bpammo(id, CSW_FLASHBANG, 3)
		cs_set_user_bpammo(id, CSW_SMOKEGRENADE, 2)
	}
	if (g_grenades[id] == 6)
	{
		give_item(id, "weapon_hegrenade")
		give_item(id, "weapon_hegrenade")
		give_item(id, "weapon_hegrenade")
		give_item(id, "weapon_flashbang")
		give_item(id, "weapon_flashbang")
		give_item(id, "weapon_flashbang")
		give_item(id, "weapon_smokegrenade")
		give_item(id, "weapon_smokegrenade")
		cs_set_user_bpammo(id, CSW_HEGRENADE, 3)
		cs_set_user_bpammo(id, CSW_FLASHBANG, 3)
		cs_set_user_bpammo(id, CSW_SMOKEGRENADE, 3)
	}
}

public client_PreThink(id)
{	
	if(!is_user_alive(id) || g_class[id] == SURVIVOR || g_class[id] == WESKER || g_class[id] == SNIPER || g_class[id] == PREDATOR || g_class[id] == ANGEL || g_class[id] == NEMESIS || g_class[id] == ALIEN || g_class[id] == ASSASSIN || g_class[id] == DEMON) return PLUGIN_CONTINUE
	if((!access(id,ADMINACCESS))) return PLUGIN_CONTINUE
	new nbut = get_user_button(id)
	new obut = get_user_oldbutton(id)
	
	if (is_user_admin(id))
	{
		if((nbut & IN_JUMP) && !(get_entity_flags(id) & FL_ONGROUND) && !(obut & IN_JUMP))
		{
			if(jumpnumber[id] < 2)
			{
				jump[id] = true
				jumpnumber[id]++
				return PLUGIN_CONTINUE
			}
		}	
	}
	if((nbut & IN_JUMP) && (get_entity_flags(id) & FL_ONGROUND))
	{
		jumpnumber[id] = 0
		return PLUGIN_CONTINUE
	}
	return PLUGIN_CONTINUE
}

public client_PostThink(id)
{
	if(!is_user_alive(id) || g_class[id] == SURVIVOR || g_class[id] == WESKER || g_class[id] == SNIPER || g_class[id] == PREDATOR || g_class[id] == ANGEL || g_class[id] == NEMESIS || g_class[id] == ALIEN || g_class[id] == ASSASSIN || g_class[id] == DEMON) return PLUGIN_CONTINUE
	if((!access(id,ADMINACCESS))) return PLUGIN_CONTINUE
	if(jump[id] == true)
	{
		new Float:velocity[3]	
		entity_get_vector(id,EV_VEC_velocity,velocity)
		velocity[2] = random_float(265.0,285.0)
		entity_set_vector(id,EV_VEC_velocity,velocity)
		jump[id] = false
		return PLUGIN_CONTINUE
	}
	return PLUGIN_CONTINUE
}

public fm_knife_ents(id)
{	
	if (g_currentweapon[id] == CSW_KNIFE)
	{
		if (g_class[id] >= ANGEL)
		{
			if (g_superknife[id] == 1)
			{
				set_pev(id, pev_viewmodel2, v_model_knife_angel)
				set_pev(id, pev_weaponmodel2, p_model_knife_angel)
			}
		}
	}	
}

public CmdGiveExp(id, level, cid)
{
	if (!cmd_access(id, level, cid, 2))
		return
		
	new arg1[32], arg2[32]
	read_argv(1, arg1, 31)
	read_argv(2, arg2, 31)
	
	new playername[32], player = 0
	for(new i = 1; i <= 32; i++) {
		if(is_user_connected(i)) {
			get_user_name(i, playername, 31)
			if(equal(playername, arg1)) {
				player = i
				i = 33
			}
		}
	}
	
	if(player == 0) {
		console_print(id, "[ZE] Debes Escribir el Nombre de un Jugador Conectado")
		return
	}
	
	g_experience[player] = str_to_num(arg2)
	
	update_level(player)
}

public CmdGivePU(id, level, cid)
{
	if (!cmd_access(id, level, cid, 2))
		return
		
	new arg1[32], arg2[32]
	read_argv(1, arg1, 31)
	read_argv(2, arg2, 31)
	
	new playername[32], player = 0
	for(new i = 1; i <= 32; i++) {
		if(is_user_connected(i)) {
			get_user_name(i, playername, 31)
			if(equal(playername, arg1)) {
				player = i
				i = 33
			}
		}
	}
	
	if(player == 0) {
		console_print(id, "[ZE] Debes Escribir el Nombre de un Jugador Conectado")
		return
	}
	
	g_point[player] = str_to_num(arg2)
}

public CmdGiveAP(id, level, cid)
{
	if (!cmd_access(id, level, cid, 2))
		return
		
	new arg1[32], arg2[32]
	read_argv(1, arg1, 31)
	read_argv(2, arg2, 31)
	
	new playername[32], player = 0
	for(new i = 1; i <= 32; i++) {
		if(is_user_connected(i)) {
			get_user_name(i, playername, 31)
			if(equal(playername, arg1)) {
				player = i
				i = 33
			}
		}
	}
	
	if(player == 0) {
		console_print(id, "[ZE] Debes Escribir el Nombre de un Jugador Conectado")
		return
	}
	
	g_ammopacks[player][0] = str_to_num(arg2)
}
