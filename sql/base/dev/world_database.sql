-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.13-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table classic_tc_world.access_requirement
DROP TABLE IF EXISTS `access_requirement`;
CREATE TABLE IF NOT EXISTS `access_requirement` (
  `mapId` mediumint(8) unsigned NOT NULL,
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `level_min` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `level_max` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `item` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `item2` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `quest_done_A` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `quest_done_H` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `completed_achievement` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `quest_failed_text` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`mapId`,`difficulty`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Access Requirements';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.achievement_dbc
DROP TABLE IF EXISTS `achievement_dbc`;
CREATE TABLE IF NOT EXISTS `achievement_dbc` (
  `ID` int(10) unsigned NOT NULL,
  `requiredFaction` int(11) NOT NULL DEFAULT -1,
  `mapID` int(11) NOT NULL DEFAULT -1,
  `points` int(10) unsigned NOT NULL DEFAULT 0,
  `flags` int(10) unsigned NOT NULL DEFAULT 0,
  `count` int(10) unsigned NOT NULL DEFAULT 0,
  `refAchievement` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.achievement_reward
DROP TABLE IF EXISTS `achievement_reward`;
CREATE TABLE IF NOT EXISTS `achievement_reward` (
  `ID` int(10) unsigned NOT NULL DEFAULT 0,
  `TitleA` int(10) unsigned NOT NULL DEFAULT 0,
  `TitleH` int(10) unsigned NOT NULL DEFAULT 0,
  `ItemID` int(10) unsigned NOT NULL DEFAULT 0,
  `Sender` int(10) unsigned NOT NULL DEFAULT 0,
  `Subject` varchar(255) DEFAULT NULL,
  `Body` text DEFAULT NULL,
  `MailTemplateID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.achievement_reward_locale
DROP TABLE IF EXISTS `achievement_reward_locale`;
CREATE TABLE IF NOT EXISTS `achievement_reward_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT 0,
  `Locale` varchar(4) NOT NULL,
  `Subject` text DEFAULT NULL,
  `Body` text DEFAULT NULL,
  PRIMARY KEY (`ID`,`Locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.areatrigger_involvedrelation
DROP TABLE IF EXISTS `areatrigger_involvedrelation`;
CREATE TABLE IF NOT EXISTS `areatrigger_involvedrelation` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Identifier',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Trigger System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.areatrigger_scripts
DROP TABLE IF EXISTS `areatrigger_scripts`;
CREATE TABLE IF NOT EXISTS `areatrigger_scripts` (
  `entry` mediumint(8) NOT NULL,
  `ScriptName` char(64) NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.areatrigger_tavern
DROP TABLE IF EXISTS `areatrigger_tavern`;
CREATE TABLE IF NOT EXISTS `areatrigger_tavern` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Identifier',
  `name` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Trigger System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.areatrigger_teleport
DROP TABLE IF EXISTS `areatrigger_teleport`;
CREATE TABLE IF NOT EXISTS `areatrigger_teleport` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `PortLocID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Name` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  FULLTEXT KEY `name` (`Name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Trigger System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.areatrigger_template
DROP TABLE IF EXISTS `areatrigger_template`;
CREATE TABLE IF NOT EXISTS `areatrigger_template` (
  `Id` int(10) unsigned NOT NULL,
  `Type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `Flags` int(10) unsigned NOT NULL DEFAULT 0,
  `Data0` float NOT NULL DEFAULT 0,
  `Data1` float NOT NULL DEFAULT 0,
  `Data2` float NOT NULL DEFAULT 0,
  `Data3` float NOT NULL DEFAULT 0,
  `Data4` float NOT NULL DEFAULT 0,
  `Data5` float NOT NULL DEFAULT 0,
  `ScriptName` char(64) NOT NULL DEFAULT '',
  `VerifiedBuild` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.areatrigger_template_actions
DROP TABLE IF EXISTS `areatrigger_template_actions`;
CREATE TABLE IF NOT EXISTS `areatrigger_template_actions` (
  `AreaTriggerId` int(10) unsigned NOT NULL,
  `ActionType` int(10) unsigned NOT NULL,
  `ActionParam` int(10) unsigned NOT NULL,
  `TargetType` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`AreaTriggerId`,`ActionType`,`ActionParam`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.areatrigger_template_polygon_vertices
DROP TABLE IF EXISTS `areatrigger_template_polygon_vertices`;
CREATE TABLE IF NOT EXISTS `areatrigger_template_polygon_vertices` (
  `AreaTriggerId` int(10) unsigned NOT NULL,
  `Idx` int(10) unsigned NOT NULL,
  `VerticeX` float NOT NULL DEFAULT 0,
  `VerticeY` float NOT NULL DEFAULT 0,
  `VerticeTargetX` float DEFAULT NULL,
  `VerticeTargetY` float DEFAULT NULL,
  `VerifiedBuild` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`AreaTriggerId`,`Idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.battleground_template
DROP TABLE IF EXISTS `battleground_template`;
CREATE TABLE IF NOT EXISTS `battleground_template` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `MinPlayersPerTeam` smallint(5) unsigned NOT NULL DEFAULT 0,
  `MaxPlayersPerTeam` smallint(5) unsigned NOT NULL DEFAULT 0,
  `MinLvl` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `MaxLvl` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `AllianceStartLoc` mediumint(8) unsigned NOT NULL,
  `HordeStartLoc` mediumint(8) unsigned NOT NULL,
  `StartMaxDist` float NOT NULL DEFAULT 0,
  `Weight` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `ScriptName` char(64) NOT NULL DEFAULT '',
  `Comment` char(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.battlemaster_entry
DROP TABLE IF EXISTS `battlemaster_entry`;
CREATE TABLE IF NOT EXISTS `battlemaster_entry` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Entry of a creature',
  `bg_template` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Battleground template id',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.battle_pet_breeds
DROP TABLE IF EXISTS `battle_pet_breeds`;
CREATE TABLE IF NOT EXISTS `battle_pet_breeds` (
  `speciesId` int(10) unsigned NOT NULL DEFAULT 0,
  `breedId` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`speciesId`,`breedId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.battle_pet_quality
DROP TABLE IF EXISTS `battle_pet_quality`;
CREATE TABLE IF NOT EXISTS `battle_pet_quality` (
  `speciesId` int(10) unsigned NOT NULL DEFAULT 0,
  `quality` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`speciesId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.blackmarket_template
DROP TABLE IF EXISTS `blackmarket_template`;
CREATE TABLE IF NOT EXISTS `blackmarket_template` (
  `marketId` int(10) NOT NULL DEFAULT 0,
  `sellerNpc` mediumint(8) NOT NULL DEFAULT 0,
  `itemEntry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `quantity` int(10) NOT NULL DEFAULT 1,
  `minBid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `duration` int(10) NOT NULL DEFAULT 0,
  `chance` float NOT NULL DEFAULT 0,
  `bonusListIDs` text DEFAULT NULL,
  PRIMARY KEY (`marketId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.character_template
DROP TABLE IF EXISTS `character_template`;
CREATE TABLE IF NOT EXISTS `character_template` (
  `Id` int(10) unsigned NOT NULL,
  `Name` varchar(70) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Level` tinyint(3) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.character_template_class
DROP TABLE IF EXISTS `character_template_class`;
CREATE TABLE IF NOT EXISTS `character_template_class` (
  `TemplateId` int(10) unsigned NOT NULL,
  `FactionGroup` tinyint(3) unsigned NOT NULL COMMENT '3 - Alliance, 5 - Horde',
  `Class` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`TemplateId`,`FactionGroup`,`Class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.class_expansion_requirement
DROP TABLE IF EXISTS `class_expansion_requirement`;
CREATE TABLE IF NOT EXISTS `class_expansion_requirement` (
  `classID` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `expansion` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`classID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.command
DROP TABLE IF EXISTS `command`;
CREATE TABLE IF NOT EXISTS `command` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `permission` smallint(5) unsigned NOT NULL DEFAULT 0,
  `help` longtext DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Chat System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.conditions
DROP TABLE IF EXISTS `conditions`;
CREATE TABLE IF NOT EXISTS `conditions` (
  `SourceTypeOrReferenceId` mediumint(8) NOT NULL DEFAULT 0,
  `SourceGroup` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `SourceEntry` mediumint(8) NOT NULL DEFAULT 0,
  `SourceId` int(11) NOT NULL DEFAULT 0,
  `ElseGroup` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `ConditionTypeOrReference` mediumint(8) NOT NULL DEFAULT 0,
  `ConditionTarget` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `ConditionValue1` int(10) unsigned NOT NULL DEFAULT 0,
  `ConditionValue2` int(10) unsigned NOT NULL DEFAULT 0,
  `ConditionValue3` int(10) unsigned NOT NULL DEFAULT 0,
  `NegativeCondition` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `ErrorType` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `ErrorTextId` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `ScriptName` char(64) NOT NULL DEFAULT '',
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Condition System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.conversation_actors
DROP TABLE IF EXISTS `conversation_actors`;
CREATE TABLE IF NOT EXISTS `conversation_actors` (
  `ConversationId` int(10) unsigned NOT NULL,
  `ConversationActorId` int(10) unsigned NOT NULL DEFAULT 0,
  `ConversationActorGuid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `Idx` smallint(5) unsigned NOT NULL DEFAULT 0,
  `VerifiedBuild` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ConversationId`,`Idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.conversation_actor_template
DROP TABLE IF EXISTS `conversation_actor_template`;
CREATE TABLE IF NOT EXISTS `conversation_actor_template` (
  `Id` int(10) unsigned NOT NULL,
  `CreatureId` int(10) unsigned NOT NULL DEFAULT 0,
  `CreatureModelId` int(10) unsigned NOT NULL DEFAULT 0,
  `VerifiedBuild` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.conversation_line_template
DROP TABLE IF EXISTS `conversation_line_template`;
CREATE TABLE IF NOT EXISTS `conversation_line_template` (
  `Id` int(10) unsigned NOT NULL,
  `StartTime` int(10) unsigned NOT NULL DEFAULT 0,
  `UiCameraID` int(10) unsigned NOT NULL DEFAULT 0,
  `ActorIdx` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `VerifiedBuild` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.conversation_template
DROP TABLE IF EXISTS `conversation_template`;
CREATE TABLE IF NOT EXISTS `conversation_template` (
  `Id` int(10) unsigned NOT NULL,
  `FirstLineId` int(10) unsigned NOT NULL,
  `LastLineEndTime` int(10) unsigned NOT NULL,
  `TextureKitId` int(10) unsigned NOT NULL DEFAULT 0,
  `ScriptName` varchar(64) NOT NULL DEFAULT '',
  `VerifiedBuild` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.creature
DROP TABLE IF EXISTS `creature`;
CREATE TABLE IF NOT EXISTS `creature` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `id` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Creature Identifier',
  `map` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `zoneId` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Zone Identifier',
  `areaId` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Area Identifier',
  `spawnDifficulties` varchar(100) NOT NULL DEFAULT '0',
  `phaseUseFlags` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `PhaseId` int(10) DEFAULT 0,
  `PhaseGroup` int(10) DEFAULT 0,
  `terrainSwapMap` int(11) NOT NULL DEFAULT -1,
  `modelid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `equipment_id` tinyint(3) NOT NULL DEFAULT 0,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  `spawntimesecs` int(10) unsigned NOT NULL DEFAULT 120,
  `spawndist` float NOT NULL DEFAULT 0,
  `currentwaypoint` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `curhealth` int(10) unsigned NOT NULL DEFAULT 1,
  `curmana` int(10) unsigned NOT NULL DEFAULT 0,
  `MovementType` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `npcflag` bigint(20) unsigned NOT NULL DEFAULT 0,
  `unit_flags` int(10) unsigned NOT NULL DEFAULT 0,
  `unit_flags2` int(10) unsigned NOT NULL DEFAULT 0,
  `unit_flags3` int(10) unsigned NOT NULL DEFAULT 0,
  `dynamicflags` int(10) unsigned NOT NULL DEFAULT 0,
  `ScriptName` char(64) DEFAULT '',
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`guid`),
  KEY `idx_map` (`map`),
  KEY `idx_id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Creature System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.creature_addon
DROP TABLE IF EXISTS `creature_addon`;
CREATE TABLE IF NOT EXISTS `creature_addon` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `path_id` int(10) unsigned NOT NULL DEFAULT 0,
  `mount` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `bytes1` int(10) unsigned NOT NULL DEFAULT 0,
  `bytes2` int(10) unsigned NOT NULL DEFAULT 0,
  `emote` int(10) unsigned NOT NULL DEFAULT 0,
  `aiAnimKit` smallint(6) NOT NULL DEFAULT 0,
  `movementAnimKit` smallint(6) NOT NULL DEFAULT 0,
  `meleeAnimKit` smallint(6) NOT NULL DEFAULT 0,
  `visibilityDistanceType` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `auras` text DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.creature_classlevelstats
DROP TABLE IF EXISTS `creature_classlevelstats`;
CREATE TABLE IF NOT EXISTS `creature_classlevelstats` (
  `level` tinyint(4) NOT NULL,
  `class` tinyint(4) NOT NULL,
  `basemana` mediumint(8) unsigned NOT NULL DEFAULT 1,
  `basearmor` mediumint(8) unsigned NOT NULL DEFAULT 1,
  `attackpower` smallint(6) NOT NULL DEFAULT 0,
  `rangedattackpower` smallint(6) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`level`,`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.creature_default_trainer
DROP TABLE IF EXISTS `creature_default_trainer`;
CREATE TABLE IF NOT EXISTS `creature_default_trainer` (
  `CreatureId` int(11) unsigned NOT NULL,
  `TrainerId` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`CreatureId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.creature_equip_template
DROP TABLE IF EXISTS `creature_equip_template`;
CREATE TABLE IF NOT EXISTS `creature_equip_template` (
  `CreatureID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `ID` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `ItemID1` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `AppearanceModID1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `ItemVisual1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `ItemID2` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `AppearanceModID2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `ItemVisual2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `ItemID3` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `AppearanceModID3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `ItemVisual3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`CreatureID`,`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.creature_formations
DROP TABLE IF EXISTS `creature_formations`;
CREATE TABLE IF NOT EXISTS `creature_formations` (
  `leaderGUID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `memberGUID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `dist` float unsigned NOT NULL,
  `angle` float unsigned NOT NULL,
  `groupAI` int(10) unsigned NOT NULL,
  `point_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `point_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`memberGUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.creature_loot_template
DROP TABLE IF EXISTS `creature_loot_template`;
CREATE TABLE IF NOT EXISTS `creature_loot_template` (
  `Entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Item` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Reference` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint(5) unsigned NOT NULL DEFAULT 1,
  `GroupId` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `MinCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `MaxCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Entry`,`Item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Loot System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.creature_model_info
DROP TABLE IF EXISTS `creature_model_info`;
CREATE TABLE IF NOT EXISTS `creature_model_info` (
  `DisplayID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `BoundingRadius` float NOT NULL DEFAULT 0,
  `CombatReach` float NOT NULL DEFAULT 0,
  `DisplayID_Other_Gender` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`DisplayID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Creature System (Model related info)';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.creature_onkill_reputation
DROP TABLE IF EXISTS `creature_onkill_reputation`;
CREATE TABLE IF NOT EXISTS `creature_onkill_reputation` (
  `creature_id` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Creature Identifier',
  `RewOnKillRepFaction1` smallint(6) NOT NULL DEFAULT 0,
  `RewOnKillRepFaction2` smallint(6) NOT NULL DEFAULT 0,
  `MaxStanding1` tinyint(4) NOT NULL DEFAULT 0,
  `IsTeamAward1` tinyint(4) NOT NULL DEFAULT 0,
  `RewOnKillRepValue1` mediumint(8) NOT NULL DEFAULT 0,
  `MaxStanding2` tinyint(4) NOT NULL DEFAULT 0,
  `IsTeamAward2` tinyint(4) NOT NULL DEFAULT 0,
  `RewOnKillRepValue2` mediumint(9) NOT NULL DEFAULT 0,
  `TeamDependent` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`creature_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Creature OnKill Reputation gain';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.creature_questender
DROP TABLE IF EXISTS `creature_questender`;
CREATE TABLE IF NOT EXISTS `creature_questender` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Identifier',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.creature_questitem
DROP TABLE IF EXISTS `creature_questitem`;
CREATE TABLE IF NOT EXISTS `creature_questitem` (
  `CreatureEntry` int(10) unsigned NOT NULL DEFAULT 0,
  `Idx` int(10) unsigned NOT NULL DEFAULT 0,
  `ItemId` int(10) unsigned NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (`CreatureEntry`,`Idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.creature_queststarter
DROP TABLE IF EXISTS `creature_queststarter`;
CREATE TABLE IF NOT EXISTS `creature_queststarter` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Identifier',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.creature_summon_groups
DROP TABLE IF EXISTS `creature_summon_groups`;
CREATE TABLE IF NOT EXISTS `creature_summon_groups` (
  `summonerId` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `summonerType` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `groupId` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  `summonType` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `summonTime` int(10) unsigned NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.creature_template
DROP TABLE IF EXISTS `creature_template`;
CREATE TABLE IF NOT EXISTS `creature_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `difficulty_entry_1` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `difficulty_entry_2` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `difficulty_entry_3` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `KillCredit1` int(10) unsigned NOT NULL DEFAULT 0,
  `KillCredit2` int(10) unsigned NOT NULL DEFAULT 0,
  `name` text DEFAULT NULL,
  `femaleName` text DEFAULT NULL,
  `subname` text DEFAULT NULL,
  `TitleAlt` text DEFAULT NULL,
  `IconName` varchar(64) DEFAULT NULL,
  `gossip_menu_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `minlevel` smallint(5) NOT NULL DEFAULT 1,
  `maxlevel` smallint(5) NOT NULL DEFAULT 1,
  `HealthScalingExpansion` mediumint(5) NOT NULL DEFAULT 0,
  `RequiredExpansion` mediumint(5) NOT NULL DEFAULT 0,
  `VignetteID` mediumint(5) NOT NULL DEFAULT 0,
  `faction` smallint(5) unsigned NOT NULL DEFAULT 0,
  `npcflag` bigint(20) unsigned NOT NULL DEFAULT 0,
  `speed_walk` float NOT NULL DEFAULT 1 COMMENT 'Result of 2.5/2.5, most common value',
  `speed_run` float NOT NULL DEFAULT 1.14286 COMMENT 'Result of 8.0/7.0, most common value',
  `scale` float NOT NULL DEFAULT 1,
  `rank` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `dmgschool` tinyint(4) NOT NULL DEFAULT 0,
  `BaseAttackTime` int(10) unsigned NOT NULL DEFAULT 0,
  `RangeAttackTime` int(10) unsigned NOT NULL DEFAULT 0,
  `BaseVariance` float NOT NULL DEFAULT 1,
  `RangeVariance` float NOT NULL DEFAULT 1,
  `unit_class` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `unit_flags` int(10) unsigned NOT NULL DEFAULT 0,
  `unit_flags2` int(10) unsigned NOT NULL DEFAULT 0,
  `unit_flags3` int(10) unsigned NOT NULL DEFAULT 0,
  `dynamicflags` int(10) unsigned NOT NULL DEFAULT 0,
  `family` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `trainer_class` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `type_flags` int(10) unsigned NOT NULL DEFAULT 0,
  `type_flags2` int(10) unsigned NOT NULL DEFAULT 0,
  `lootid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `pickpocketloot` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `skinloot` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `resistance1` smallint(6) NOT NULL DEFAULT 0,
  `resistance2` smallint(6) NOT NULL DEFAULT 0,
  `resistance3` smallint(6) NOT NULL DEFAULT 0,
  `resistance4` smallint(6) NOT NULL DEFAULT 0,
  `resistance5` smallint(6) NOT NULL DEFAULT 0,
  `resistance6` smallint(6) NOT NULL DEFAULT 0,
  `spell1` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `spell2` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `spell3` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `spell4` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `spell5` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `spell6` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `spell7` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `spell8` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `VehicleId` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `mingold` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `maxgold` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `AIName` varchar(64) NOT NULL DEFAULT '',
  `MovementType` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `InhabitType` tinyint(3) unsigned NOT NULL DEFAULT 3,
  `HoverHeight` float NOT NULL DEFAULT 1,
  `HealthModifier` float NOT NULL DEFAULT 1,
  `HealthModifierExtra` float NOT NULL DEFAULT 1,
  `ManaModifier` float NOT NULL DEFAULT 1,
  `ManaModifierExtra` float NOT NULL DEFAULT 1,
  `ArmorModifier` float NOT NULL DEFAULT 1,
  `DamageModifier` float NOT NULL DEFAULT 1,
  `ExperienceModifier` float NOT NULL DEFAULT 1,
  `RacialLeader` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `movementId` int(11) unsigned NOT NULL DEFAULT 0,
  `RegenHealth` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `mechanic_immune_mask` int(10) unsigned NOT NULL DEFAULT 0,
  `flags_extra` int(10) unsigned NOT NULL DEFAULT 0,
  `ScriptName` varchar(64) NOT NULL DEFAULT '',
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.creature_template_addon
DROP TABLE IF EXISTS `creature_template_addon`;
CREATE TABLE IF NOT EXISTS `creature_template_addon` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `path_id` int(10) unsigned NOT NULL DEFAULT 0,
  `mount` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `bytes1` int(10) unsigned NOT NULL DEFAULT 0,
  `bytes2` int(10) unsigned NOT NULL DEFAULT 0,
  `emote` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `aiAnimKit` smallint(6) NOT NULL DEFAULT 0,
  `movementAnimKit` smallint(6) NOT NULL DEFAULT 0,
  `meleeAnimKit` smallint(6) NOT NULL DEFAULT 0,
  `visibilityDistanceType` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `auras` text DEFAULT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.creature_template_locale
DROP TABLE IF EXISTS `creature_template_locale`;
CREATE TABLE IF NOT EXISTS `creature_template_locale` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `locale` varchar(4) NOT NULL,
  `Name` text DEFAULT NULL,
  `NameAlt` text DEFAULT NULL,
  `Title` text DEFAULT NULL,
  `TitleAlt` text DEFAULT NULL,
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`entry`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.creature_template_model
DROP TABLE IF EXISTS `creature_template_model`;
CREATE TABLE IF NOT EXISTS `creature_template_model` (
  `CreatureID` int(10) unsigned NOT NULL,
  `Idx` int(10) unsigned NOT NULL DEFAULT 0,
  `CreatureDisplayID` int(10) unsigned NOT NULL,
  `DisplayScale` float NOT NULL DEFAULT 1,
  `Probability` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`CreatureID`,`CreatureDisplayID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.creature_template_scaling
DROP TABLE IF EXISTS `creature_template_scaling`;
CREATE TABLE IF NOT EXISTS `creature_template_scaling` (
  `Entry` mediumint(8) unsigned NOT NULL,
  `LevelScalingMin` smallint(5) unsigned NOT NULL DEFAULT 0,
  `LevelScalingMax` smallint(5) unsigned NOT NULL DEFAULT 0,
  `LevelScalingDeltaMin` smallint(5) NOT NULL DEFAULT 0,
  `LevelScalingDeltaMax` smallint(5) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`Entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.creature_text
DROP TABLE IF EXISTS `creature_text`;
CREATE TABLE IF NOT EXISTS `creature_text` (
  `CreatureID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `GroupID` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `ID` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `Text` longtext DEFAULT NULL,
  `Type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `Language` tinyint(3) NOT NULL DEFAULT 0,
  `Probability` float unsigned NOT NULL DEFAULT 0,
  `Emote` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Duration` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Sound` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `BroadcastTextId` mediumint(6) NOT NULL DEFAULT 0,
  `TextRange` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `comment` varchar(255) DEFAULT '',
  PRIMARY KEY (`CreatureID`,`GroupID`,`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.creature_text_locale
DROP TABLE IF EXISTS `creature_text_locale`;
CREATE TABLE IF NOT EXISTS `creature_text_locale` (
  `CreatureID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `GroupID` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `ID` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `Locale` varchar(4) NOT NULL,
  `Text` text DEFAULT NULL,
  PRIMARY KEY (`CreatureID`,`GroupID`,`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.criteria_data
DROP TABLE IF EXISTS `criteria_data`;
CREATE TABLE IF NOT EXISTS `criteria_data` (
  `criteria_id` mediumint(8) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `value1` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `value2` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `ScriptName` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`criteria_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Achievment system';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.disables
DROP TABLE IF EXISTS `disables`;
CREATE TABLE IF NOT EXISTS `disables` (
  `sourceType` int(10) unsigned NOT NULL,
  `entry` int(10) unsigned NOT NULL,
  `flags` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `params_0` varchar(255) NOT NULL DEFAULT '',
  `params_1` varchar(255) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`sourceType`,`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.disenchant_loot_template
DROP TABLE IF EXISTS `disenchant_loot_template`;
CREATE TABLE IF NOT EXISTS `disenchant_loot_template` (
  `Entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Item` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Reference` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint(5) unsigned NOT NULL DEFAULT 1,
  `GroupId` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `MinCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `MaxCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Entry`,`Item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.event_scripts
DROP TABLE IF EXISTS `event_scripts`;
CREATE TABLE IF NOT EXISTS `event_scripts` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `delay` int(10) unsigned NOT NULL DEFAULT 0,
  `command` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `datalong` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `datalong2` int(10) unsigned NOT NULL DEFAULT 0,
  `dataint` int(11) NOT NULL DEFAULT 0,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `z` float NOT NULL DEFAULT 0,
  `o` float NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.exploration_basexp
DROP TABLE IF EXISTS `exploration_basexp`;
CREATE TABLE IF NOT EXISTS `exploration_basexp` (
  `level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `basexp` mediumint(8) NOT NULL DEFAULT 0,
  PRIMARY KEY (`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Exploration System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.fishing_loot_template
DROP TABLE IF EXISTS `fishing_loot_template`;
CREATE TABLE IF NOT EXISTS `fishing_loot_template` (
  `Entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Item` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Reference` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint(5) unsigned NOT NULL DEFAULT 1,
  `GroupId` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `MinCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `MaxCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Entry`,`Item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Loot System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.gameobject
DROP TABLE IF EXISTS `gameobject`;
CREATE TABLE IF NOT EXISTS `gameobject` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `id` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Gameobject Identifier',
  `map` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `zoneId` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Zone Identifier',
  `areaId` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Area Identifier',
  `spawnDifficulties` varchar(100) NOT NULL DEFAULT '0',
  `phaseUseFlags` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `PhaseId` int(10) DEFAULT 0,
  `PhaseGroup` int(10) DEFAULT 0,
  `terrainSwapMap` int(11) NOT NULL DEFAULT -1,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  `rotation0` float NOT NULL DEFAULT 0,
  `rotation1` float NOT NULL DEFAULT 0,
  `rotation2` float NOT NULL DEFAULT 0,
  `rotation3` float NOT NULL DEFAULT 0,
  `spawntimesecs` int(11) NOT NULL DEFAULT 0,
  `animprogress` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `state` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `ScriptName` char(64) DEFAULT '',
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Gameobject System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.gameobject_addon
DROP TABLE IF EXISTS `gameobject_addon`;
CREATE TABLE IF NOT EXISTS `gameobject_addon` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `parent_rotation0` float NOT NULL DEFAULT 0,
  `parent_rotation1` float NOT NULL DEFAULT 0,
  `parent_rotation2` float NOT NULL DEFAULT 0,
  `parent_rotation3` float NOT NULL DEFAULT 1,
  `invisibilityType` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `invisibilityValue` int(10) unsigned NOT NULL DEFAULT 0,
  `WorldEffectID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.gameobject_loot_template
DROP TABLE IF EXISTS `gameobject_loot_template`;
CREATE TABLE IF NOT EXISTS `gameobject_loot_template` (
  `Entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Item` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Reference` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint(5) unsigned NOT NULL DEFAULT 1,
  `GroupId` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `MinCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `MaxCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Entry`,`Item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Loot System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.gameobject_questender
DROP TABLE IF EXISTS `gameobject_questender`;
CREATE TABLE IF NOT EXISTS `gameobject_questender` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `quest` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.gameobject_questitem
DROP TABLE IF EXISTS `gameobject_questitem`;
CREATE TABLE IF NOT EXISTS `gameobject_questitem` (
  `GameObjectEntry` int(10) unsigned NOT NULL DEFAULT 0,
  `Idx` int(10) unsigned NOT NULL DEFAULT 0,
  `ItemId` int(10) unsigned NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (`GameObjectEntry`,`Idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.gameobject_queststarter
DROP TABLE IF EXISTS `gameobject_queststarter`;
CREATE TABLE IF NOT EXISTS `gameobject_queststarter` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `quest` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.gameobject_template
DROP TABLE IF EXISTS `gameobject_template`;
CREATE TABLE IF NOT EXISTS `gameobject_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `displayId` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `name` varchar(100) NOT NULL DEFAULT '',
  `IconName` varchar(100) NOT NULL DEFAULT '',
  `castBarCaption` varchar(100) NOT NULL DEFAULT '',
  `unk1` varchar(100) NOT NULL DEFAULT '',
  `size` float NOT NULL DEFAULT 1,
  `Data0` int(10) NOT NULL DEFAULT 0,
  `Data1` int(10) NOT NULL DEFAULT 0,
  `Data2` int(10) NOT NULL DEFAULT 0,
  `Data3` int(10) NOT NULL DEFAULT 0,
  `Data4` int(10) NOT NULL DEFAULT 0,
  `Data5` int(10) NOT NULL DEFAULT 0,
  `Data6` int(10) NOT NULL DEFAULT 0,
  `Data7` int(10) NOT NULL DEFAULT 0,
  `Data8` int(10) NOT NULL DEFAULT 0,
  `Data9` int(10) NOT NULL DEFAULT 0,
  `Data10` int(10) NOT NULL DEFAULT 0,
  `Data11` int(10) NOT NULL DEFAULT 0,
  `Data12` int(10) NOT NULL DEFAULT 0,
  `Data13` int(10) NOT NULL DEFAULT 0,
  `Data14` int(10) NOT NULL DEFAULT 0,
  `Data15` int(10) NOT NULL DEFAULT 0,
  `Data16` int(10) NOT NULL DEFAULT 0,
  `Data17` int(10) NOT NULL DEFAULT 0,
  `Data18` int(10) NOT NULL DEFAULT 0,
  `Data19` int(10) NOT NULL DEFAULT 0,
  `Data20` int(10) NOT NULL DEFAULT 0,
  `Data21` int(10) NOT NULL DEFAULT 0,
  `Data22` int(10) NOT NULL DEFAULT 0,
  `Data23` int(10) NOT NULL DEFAULT 0,
  `Data24` int(10) NOT NULL DEFAULT 0,
  `Data25` int(10) NOT NULL DEFAULT 0,
  `Data26` int(10) NOT NULL DEFAULT 0,
  `Data27` int(10) NOT NULL DEFAULT 0,
  `Data28` int(10) NOT NULL DEFAULT 0,
  `Data29` int(10) NOT NULL DEFAULT 0,
  `Data30` int(10) NOT NULL DEFAULT 0,
  `Data31` int(10) NOT NULL DEFAULT 0,
  `Data32` int(10) NOT NULL DEFAULT 0,
  `Data33` int(11) NOT NULL DEFAULT 0,
  `RequiredLevel` int(10) NOT NULL DEFAULT 0,
  `AIName` char(64) NOT NULL DEFAULT '',
  `ScriptName` varchar(64) NOT NULL DEFAULT '',
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`entry`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Gameobject System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.gameobject_template_addon
DROP TABLE IF EXISTS `gameobject_template_addon`;
CREATE TABLE IF NOT EXISTS `gameobject_template_addon` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `faction` smallint(5) unsigned NOT NULL DEFAULT 0,
  `flags` int(10) unsigned NOT NULL DEFAULT 0,
  `mingold` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `maxgold` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `WorldEffectID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.gameobject_template_locale
DROP TABLE IF EXISTS `gameobject_template_locale`;
CREATE TABLE IF NOT EXISTS `gameobject_template_locale` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `locale` varchar(4) NOT NULL,
  `name` text DEFAULT NULL,
  `castBarCaption` text DEFAULT NULL,
  `unk1` text DEFAULT NULL,
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`entry`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.game_event
DROP TABLE IF EXISTS `game_event`;
CREATE TABLE IF NOT EXISTS `game_event` (
  `eventEntry` tinyint(3) unsigned NOT NULL COMMENT 'Entry of the game event',
  `start_time` timestamp NULL DEFAULT NULL COMMENT 'Absolute start date, the event will never start before',
  `end_time` timestamp NULL DEFAULT NULL COMMENT 'Absolute end date, the event will never start after',
  `occurence` bigint(20) unsigned NOT NULL DEFAULT 5184000 COMMENT 'Delay in minutes between occurences of the event',
  `length` bigint(20) unsigned NOT NULL DEFAULT 2592000 COMMENT 'Length in minutes of the event',
  `holiday` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Client side holiday id',
  `description` varchar(255) DEFAULT NULL COMMENT 'Description of the event displayed in console',
  `world_event` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0 if normal event, 1 if world event',
  `announce` tinyint(3) unsigned DEFAULT 2 COMMENT '0 dont announce, 1 announce, 2 value from config',
  PRIMARY KEY (`eventEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.game_event_arena_seasons
DROP TABLE IF EXISTS `game_event_arena_seasons`;
CREATE TABLE IF NOT EXISTS `game_event_arena_seasons` (
  `eventEntry` tinyint(3) unsigned NOT NULL COMMENT 'Entry of the game event',
  `season` tinyint(3) unsigned NOT NULL COMMENT 'Arena season number',
  UNIQUE KEY `season` (`season`,`eventEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.game_event_battleground_holiday
DROP TABLE IF EXISTS `game_event_battleground_holiday`;
CREATE TABLE IF NOT EXISTS `game_event_battleground_holiday` (
  `eventEntry` tinyint(3) unsigned NOT NULL COMMENT 'Entry of the game event',
  `bgflag` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`eventEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.game_event_condition
DROP TABLE IF EXISTS `game_event_condition`;
CREATE TABLE IF NOT EXISTS `game_event_condition` (
  `eventEntry` tinyint(3) unsigned NOT NULL COMMENT 'Entry of the game event',
  `condition_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `req_num` float DEFAULT 0,
  `max_world_state_field` smallint(5) unsigned NOT NULL DEFAULT 0,
  `done_world_state_field` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`eventEntry`,`condition_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.game_event_creature
DROP TABLE IF EXISTS `game_event_creature`;
CREATE TABLE IF NOT EXISTS `game_event_creature` (
  `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.',
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`eventEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.game_event_creature_quest
DROP TABLE IF EXISTS `game_event_creature_quest`;
CREATE TABLE IF NOT EXISTS `game_event_creature_quest` (
  `eventEntry` tinyint(3) unsigned NOT NULL COMMENT 'Entry of the game event.',
  `id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `quest` mediumint(8) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.game_event_gameobject
DROP TABLE IF EXISTS `game_event_gameobject`;
CREATE TABLE IF NOT EXISTS `game_event_gameobject` (
  `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.',
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`eventEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.game_event_gameobject_quest
DROP TABLE IF EXISTS `game_event_gameobject_quest`;
CREATE TABLE IF NOT EXISTS `game_event_gameobject_quest` (
  `eventEntry` tinyint(3) unsigned NOT NULL COMMENT 'Entry of the game event',
  `id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `quest` mediumint(8) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`,`quest`,`eventEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.game_event_model_equip
DROP TABLE IF EXISTS `game_event_model_equip`;
CREATE TABLE IF NOT EXISTS `game_event_model_equip` (
  `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event.',
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `modelid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `equipment_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.game_event_npcflag
DROP TABLE IF EXISTS `game_event_npcflag`;
CREATE TABLE IF NOT EXISTS `game_event_npcflag` (
  `eventEntry` tinyint(3) unsigned NOT NULL COMMENT 'Entry of the game event',
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `npcflag` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`eventEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.game_event_npc_vendor
DROP TABLE IF EXISTS `game_event_npc_vendor`;
CREATE TABLE IF NOT EXISTS `game_event_npc_vendor` (
  `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event.',
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `slot` smallint(6) NOT NULL DEFAULT 0,
  `item` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `maxcount` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `incrtime` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `ExtendedCost` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `type` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `BonusListIDs` text DEFAULT NULL,
  `PlayerConditionID` int(10) unsigned NOT NULL DEFAULT 0,
  `IgnoreFiltering` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`item`,`ExtendedCost`,`type`),
  KEY `slot` (`slot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.game_event_pool
DROP TABLE IF EXISTS `game_event_pool`;
CREATE TABLE IF NOT EXISTS `game_event_pool` (
  `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.',
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Id of the pool',
  PRIMARY KEY (`pool_entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.game_event_prerequisite
DROP TABLE IF EXISTS `game_event_prerequisite`;
CREATE TABLE IF NOT EXISTS `game_event_prerequisite` (
  `eventEntry` tinyint(3) unsigned NOT NULL COMMENT 'Entry of the game event',
  `prerequisite_event` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`eventEntry`,`prerequisite_event`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.game_event_quest_condition
DROP TABLE IF EXISTS `game_event_quest_condition`;
CREATE TABLE IF NOT EXISTS `game_event_quest_condition` (
  `eventEntry` tinyint(3) unsigned NOT NULL COMMENT 'Entry of the game event.',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `condition_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `num` float DEFAULT 0,
  PRIMARY KEY (`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.game_event_seasonal_questrelation
DROP TABLE IF EXISTS `game_event_seasonal_questrelation`;
CREATE TABLE IF NOT EXISTS `game_event_seasonal_questrelation` (
  `questId` int(10) unsigned NOT NULL COMMENT 'Quest Identifier',
  `eventEntry` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Entry of the game event',
  PRIMARY KEY (`questId`,`eventEntry`),
  KEY `idx_quest` (`questId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.game_tele
DROP TABLE IF EXISTS `game_tele`;
CREATE TABLE IF NOT EXISTS `game_tele` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  `map` smallint(5) unsigned NOT NULL DEFAULT 0,
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tele Command';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.game_weather
DROP TABLE IF EXISTS `game_weather`;
CREATE TABLE IF NOT EXISTS `game_weather` (
  `zone` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `spring_rain_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `spring_snow_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `spring_storm_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `summer_rain_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `summer_snow_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `summer_storm_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `fall_rain_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `fall_snow_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `fall_storm_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `winter_rain_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `winter_snow_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `winter_storm_chance` tinyint(3) unsigned NOT NULL DEFAULT 25,
  `ScriptName` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`zone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Weather System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.garrison_follower_class_spec_abilities
DROP TABLE IF EXISTS `garrison_follower_class_spec_abilities`;
CREATE TABLE IF NOT EXISTS `garrison_follower_class_spec_abilities` (
  `classSpecId` int(10) unsigned NOT NULL DEFAULT 0,
  `abilityId` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`classSpecId`,`abilityId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.garrison_plot_finalize_info
DROP TABLE IF EXISTS `garrison_plot_finalize_info`;
CREATE TABLE IF NOT EXISTS `garrison_plot_finalize_info` (
  `garrPlotInstanceId` int(10) unsigned NOT NULL,
  `hordeGameObjectId` int(10) unsigned NOT NULL DEFAULT 0,
  `hordeX` float NOT NULL DEFAULT 0,
  `hordeY` float NOT NULL DEFAULT 0,
  `hordeZ` float NOT NULL DEFAULT 0,
  `hordeO` float NOT NULL DEFAULT 0,
  `hordeAnimKitId` smallint(5) unsigned NOT NULL DEFAULT 0,
  `allianceGameObjectId` int(10) unsigned NOT NULL DEFAULT 0,
  `allianceX` float NOT NULL DEFAULT 0,
  `allianceY` float NOT NULL DEFAULT 0,
  `allianceZ` float NOT NULL DEFAULT 0,
  `allianceO` float NOT NULL DEFAULT 0,
  `allianceAnimKitId` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`garrPlotInstanceId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.gossip_menu
DROP TABLE IF EXISTS `gossip_menu`;
CREATE TABLE IF NOT EXISTS `gossip_menu` (
  `MenuId` int(10) unsigned NOT NULL DEFAULT 0,
  `TextId` int(10) unsigned NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (`MenuId`,`TextId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.gossip_menu_option
DROP TABLE IF EXISTS `gossip_menu_option`;
CREATE TABLE IF NOT EXISTS `gossip_menu_option` (
  `MenuId` int(10) unsigned NOT NULL DEFAULT 0,
  `OptionIndex` int(10) unsigned NOT NULL DEFAULT 0,
  `OptionIcon` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `OptionText` text DEFAULT NULL,
  `OptionBroadcastTextId` int(11) unsigned NOT NULL DEFAULT 0,
  `OptionType` int(11) unsigned NOT NULL DEFAULT 0,
  `OptionNpcFlag` bigint(20) unsigned NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (`MenuId`,`OptionIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.gossip_menu_option_action
DROP TABLE IF EXISTS `gossip_menu_option_action`;
CREATE TABLE IF NOT EXISTS `gossip_menu_option_action` (
  `MenuId` int(10) unsigned NOT NULL DEFAULT 0,
  `OptionIndex` int(10) unsigned NOT NULL DEFAULT 0,
  `ActionMenuId` int(11) unsigned NOT NULL DEFAULT 0,
  `ActionPoiId` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`MenuId`,`OptionIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.gossip_menu_option_box
DROP TABLE IF EXISTS `gossip_menu_option_box`;
CREATE TABLE IF NOT EXISTS `gossip_menu_option_box` (
  `MenuId` int(10) unsigned NOT NULL DEFAULT 0,
  `OptionIndex` int(10) unsigned NOT NULL DEFAULT 0,
  `BoxCoded` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `BoxMoney` int(11) unsigned NOT NULL DEFAULT 0,
  `BoxText` text DEFAULT NULL,
  `BoxBroadcastTextId` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`MenuId`,`OptionIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.gossip_menu_option_locale
DROP TABLE IF EXISTS `gossip_menu_option_locale`;
CREATE TABLE IF NOT EXISTS `gossip_menu_option_locale` (
  `MenuId` int(10) unsigned NOT NULL DEFAULT 0,
  `OptionIndex` int(10) unsigned NOT NULL DEFAULT 0,
  `Locale` varchar(4) NOT NULL,
  `OptionText` text DEFAULT NULL,
  `BoxText` text DEFAULT NULL,
  PRIMARY KEY (`MenuId`,`OptionIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.gossip_menu_option_trainer
DROP TABLE IF EXISTS `gossip_menu_option_trainer`;
CREATE TABLE IF NOT EXISTS `gossip_menu_option_trainer` (
  `MenuId` int(10) unsigned NOT NULL DEFAULT 0,
  `OptionIndex` int(10) unsigned NOT NULL DEFAULT 0,
  `TrainerId` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`MenuId`,`OptionIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.graveyard_zone
DROP TABLE IF EXISTS `graveyard_zone`;
CREATE TABLE IF NOT EXISTS `graveyard_zone` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `GhostZone` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Faction` smallint(5) unsigned NOT NULL DEFAULT 0,
  `Comment` text DEFAULT NULL,
  PRIMARY KEY (`ID`,`GhostZone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Trigger System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.guild_rewards
DROP TABLE IF EXISTS `guild_rewards`;
CREATE TABLE IF NOT EXISTS `guild_rewards` (
  `ItemID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `MinGuildRep` tinyint(3) unsigned DEFAULT 0,
  `RaceMask` bigint(20) unsigned DEFAULT 0,
  `Cost` bigint(20) unsigned DEFAULT 0,
  PRIMARY KEY (`ItemID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.guild_rewards_req_achievements
DROP TABLE IF EXISTS `guild_rewards_req_achievements`;
CREATE TABLE IF NOT EXISTS `guild_rewards_req_achievements` (
  `ItemID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `AchievementRequired` mediumint(8) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ItemID`,`AchievementRequired`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.instance_encounters
DROP TABLE IF EXISTS `instance_encounters`;
CREATE TABLE IF NOT EXISTS `instance_encounters` (
  `entry` int(10) unsigned NOT NULL COMMENT 'Unique entry from DungeonEncounter.dbc',
  `creditType` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `creditEntry` int(10) unsigned NOT NULL DEFAULT 0,
  `lastEncounterDungeon` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'If not 0, LfgDungeon.dbc entry for the instance it is last encounter in',
  `comment` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.instance_template
DROP TABLE IF EXISTS `instance_template`;
CREATE TABLE IF NOT EXISTS `instance_template` (
  `map` smallint(5) unsigned NOT NULL,
  `parent` smallint(5) unsigned NOT NULL,
  `script` varchar(128) NOT NULL DEFAULT '',
  `allowMount` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`map`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.item_enchantment_template
DROP TABLE IF EXISTS `item_enchantment_template`;
CREATE TABLE IF NOT EXISTS `item_enchantment_template` (
  `entry` int(10) unsigned NOT NULL DEFAULT 0,
  `type` tinyint(3) unsigned NOT NULL,
  `ench` int(10) unsigned NOT NULL DEFAULT 0,
  `chance` float unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`,`type`,`ench`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Item Random Enchantment System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.item_loot_template
DROP TABLE IF EXISTS `item_loot_template`;
CREATE TABLE IF NOT EXISTS `item_loot_template` (
  `Entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Item` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Reference` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint(5) unsigned NOT NULL DEFAULT 1,
  `GroupId` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `MinCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `MaxCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Entry`,`Item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.item_script_names
DROP TABLE IF EXISTS `item_script_names`;
CREATE TABLE IF NOT EXISTS `item_script_names` (
  `Id` int(10) unsigned NOT NULL,
  `ScriptName` varchar(64) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.item_template_addon
DROP TABLE IF EXISTS `item_template_addon`;
CREATE TABLE IF NOT EXISTS `item_template_addon` (
  `Id` int(10) unsigned NOT NULL,
  `FlagsCu` int(10) unsigned NOT NULL DEFAULT 0,
  `FoodType` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `MinMoneyLoot` int(10) unsigned NOT NULL DEFAULT 0,
  `MaxMoneyLoot` int(10) unsigned NOT NULL DEFAULT 0,
  `SpellPPMChance` float unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.lfg_dungeon_rewards
DROP TABLE IF EXISTS `lfg_dungeon_rewards`;
CREATE TABLE IF NOT EXISTS `lfg_dungeon_rewards` (
  `dungeonId` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Dungeon entry from dbc',
  `maxLevel` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Max level at which this reward is rewarded',
  `firstQuestId` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Quest id with rewards for first dungeon this day',
  `otherQuestId` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Quest id with rewards for Nth dungeon this day',
  PRIMARY KEY (`dungeonId`,`maxLevel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.lfg_dungeon_template
DROP TABLE IF EXISTS `lfg_dungeon_template`;
CREATE TABLE IF NOT EXISTS `lfg_dungeon_template` (
  `dungeonId` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Unique id from LFGDungeons.dbc',
  `name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  `requiredItemLevel` smallint(5) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`dungeonId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.linked_respawn
DROP TABLE IF EXISTS `linked_respawn`;
CREATE TABLE IF NOT EXISTS `linked_respawn` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `linkedGuid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `linkType` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`linkType`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Creature Respawn Link System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.mail_level_reward
DROP TABLE IF EXISTS `mail_level_reward`;
CREATE TABLE IF NOT EXISTS `mail_level_reward` (
  `level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `raceMask` bigint(20) unsigned NOT NULL,
  `mailTemplateId` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `senderEntry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`level`,`raceMask`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Mail System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.mail_loot_template
DROP TABLE IF EXISTS `mail_loot_template`;
CREATE TABLE IF NOT EXISTS `mail_loot_template` (
  `Entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Item` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Reference` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint(5) unsigned NOT NULL DEFAULT 1,
  `GroupId` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `MinCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `MaxCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Entry`,`Item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.milling_loot_template
DROP TABLE IF EXISTS `milling_loot_template`;
CREATE TABLE IF NOT EXISTS `milling_loot_template` (
  `Entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Item` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Reference` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint(5) unsigned NOT NULL DEFAULT 1,
  `GroupId` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `MinCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `MaxCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Entry`,`Item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.mount_definitions
DROP TABLE IF EXISTS `mount_definitions`;
CREATE TABLE IF NOT EXISTS `mount_definitions` (
  `spellId` int(10) unsigned NOT NULL,
  `otherFactionSpellId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`spellId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.npc_spellclick_spells
DROP TABLE IF EXISTS `npc_spellclick_spells`;
CREATE TABLE IF NOT EXISTS `npc_spellclick_spells` (
  `npc_entry` int(10) unsigned NOT NULL COMMENT 'reference to creature_template',
  `spell_id` int(10) unsigned NOT NULL COMMENT 'spell which should be casted ',
  `cast_flags` tinyint(3) unsigned NOT NULL COMMENT 'first bit defines caster: 1=player, 0=creature; second bit defines target, same mapping as caster bit',
  `user_type` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'relation with summoner: 0-no 1-friendly 2-raid 3-party player can click',
  PRIMARY KEY (`npc_entry`,`spell_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.npc_text
DROP TABLE IF EXISTS `npc_text`;
CREATE TABLE IF NOT EXISTS `npc_text` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Probability0` float NOT NULL DEFAULT 0,
  `Probability1` float NOT NULL DEFAULT 0,
  `Probability2` float NOT NULL DEFAULT 0,
  `Probability3` float NOT NULL DEFAULT 0,
  `Probability4` float NOT NULL DEFAULT 0,
  `Probability5` float NOT NULL DEFAULT 0,
  `Probability6` float NOT NULL DEFAULT 0,
  `Probability7` float NOT NULL DEFAULT 0,
  `BroadcastTextID0` mediumint(6) unsigned NOT NULL DEFAULT 0,
  `BroadcastTextID1` mediumint(6) unsigned NOT NULL DEFAULT 0,
  `BroadcastTextID2` mediumint(6) unsigned NOT NULL DEFAULT 0,
  `BroadcastTextID3` mediumint(6) unsigned NOT NULL DEFAULT 0,
  `BroadcastTextID4` mediumint(6) unsigned NOT NULL DEFAULT 0,
  `BroadcastTextID5` mediumint(6) unsigned NOT NULL DEFAULT 0,
  `BroadcastTextID6` mediumint(6) unsigned NOT NULL DEFAULT 0,
  `BroadcastTextID7` mediumint(6) unsigned NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.npc_vendor
DROP TABLE IF EXISTS `npc_vendor`;
CREATE TABLE IF NOT EXISTS `npc_vendor` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `slot` smallint(6) NOT NULL DEFAULT 0,
  `item` mediumint(8) NOT NULL DEFAULT 0,
  `maxcount` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `incrtime` int(10) unsigned NOT NULL DEFAULT 0,
  `ExtendedCost` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `type` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `BonusListIDs` text DEFAULT NULL,
  `PlayerConditionID` int(10) unsigned NOT NULL DEFAULT 0,
  `IgnoreFiltering` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`entry`,`item`,`ExtendedCost`,`type`),
  KEY `slot` (`slot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Npc System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.outdoorpvp_template
DROP TABLE IF EXISTS `outdoorpvp_template`;
CREATE TABLE IF NOT EXISTS `outdoorpvp_template` (
  `TypeId` tinyint(3) unsigned NOT NULL,
  `ScriptName` char(64) NOT NULL DEFAULT '',
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`TypeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='OutdoorPvP Templates';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.page_text
DROP TABLE IF EXISTS `page_text`;
CREATE TABLE IF NOT EXISTS `page_text` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Text` longtext DEFAULT NULL,
  `NextPageID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Item System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.page_text_locale
DROP TABLE IF EXISTS `page_text_locale`;
CREATE TABLE IF NOT EXISTS `page_text_locale` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `locale` varchar(4) NOT NULL,
  `Text` text DEFAULT NULL,
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.pet_levelstats
DROP TABLE IF EXISTS `pet_levelstats`;
CREATE TABLE IF NOT EXISTS `pet_levelstats` (
  `creature_entry` mediumint(8) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `hp` smallint(5) unsigned NOT NULL,
  `mana` smallint(5) unsigned NOT NULL,
  `armor` int(10) unsigned NOT NULL DEFAULT 0,
  `str` smallint(5) unsigned NOT NULL,
  `agi` smallint(5) unsigned NOT NULL,
  `sta` smallint(5) unsigned NOT NULL,
  `inte` smallint(5) unsigned NOT NULL,
  `spi` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`creature_entry`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0 COMMENT='Stores pet levels stats.';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.pet_name_generation
DROP TABLE IF EXISTS `pet_name_generation`;
CREATE TABLE IF NOT EXISTS `pet_name_generation` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word` tinytext NOT NULL,
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `half` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.phase_area
DROP TABLE IF EXISTS `phase_area`;
CREATE TABLE IF NOT EXISTS `phase_area` (
  `AreaId` int(10) unsigned NOT NULL,
  `PhaseId` int(10) unsigned NOT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`AreaId`,`PhaseId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.pickpocketing_loot_template
DROP TABLE IF EXISTS `pickpocketing_loot_template`;
CREATE TABLE IF NOT EXISTS `pickpocketing_loot_template` (
  `Entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Item` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Reference` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint(5) unsigned NOT NULL DEFAULT 1,
  `GroupId` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `MinCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `MaxCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Entry`,`Item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.playerchoice
DROP TABLE IF EXISTS `playerchoice`;
CREATE TABLE IF NOT EXISTS `playerchoice` (
  `ChoiceId` int(11) NOT NULL,
  `UiTextureKitId` int(11) NOT NULL DEFAULT 0,
  `Question` varchar(255) DEFAULT NULL,
  `HideWarboardHeader` tinyint(1) NOT NULL DEFAULT 0,
  `KeepOpenAfterChoice` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ChoiceId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.playerchoice_locale
DROP TABLE IF EXISTS `playerchoice_locale`;
CREATE TABLE IF NOT EXISTS `playerchoice_locale` (
  `ChoiceId` int(11) NOT NULL,
  `locale` varchar(4) NOT NULL,
  `Question` varchar(255) DEFAULT NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ChoiceId`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.playerchoice_response
DROP TABLE IF EXISTS `playerchoice_response`;
CREATE TABLE IF NOT EXISTS `playerchoice_response` (
  `ChoiceId` int(11) NOT NULL,
  `ResponseId` int(11) NOT NULL,
  `Index` int(10) unsigned NOT NULL,
  `ChoiceArtFileId` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `WidgetSetID` int(10) unsigned NOT NULL DEFAULT 0,
  `GroupID` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `Header` varchar(511) NOT NULL,
  `Answer` varchar(511) NOT NULL,
  `Description` varchar(2047) NOT NULL,
  `Confirmation` varchar(127) NOT NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ChoiceId`,`ResponseId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.playerchoice_response_locale
DROP TABLE IF EXISTS `playerchoice_response_locale`;
CREATE TABLE IF NOT EXISTS `playerchoice_response_locale` (
  `ChoiceId` int(11) NOT NULL,
  `ResponseId` int(11) NOT NULL,
  `locale` varchar(4) NOT NULL,
  `Header` varchar(511) NOT NULL DEFAULT '',
  `Answer` varchar(511) NOT NULL DEFAULT '',
  `Description` varchar(2047) NOT NULL DEFAULT '',
  `Confirmation` varchar(127) NOT NULL DEFAULT '',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ChoiceId`,`ResponseId`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.playerchoice_response_reward
DROP TABLE IF EXISTS `playerchoice_response_reward`;
CREATE TABLE IF NOT EXISTS `playerchoice_response_reward` (
  `ChoiceId` int(11) NOT NULL,
  `ResponseId` int(11) NOT NULL,
  `TitleId` int(11) NOT NULL DEFAULT 0,
  `PackageId` int(11) NOT NULL DEFAULT 0,
  `SkillLineId` int(10) unsigned NOT NULL DEFAULT 0,
  `SkillPointCount` int(10) unsigned NOT NULL DEFAULT 0,
  `ArenaPointCount` int(10) unsigned NOT NULL DEFAULT 0,
  `HonorPointCount` int(10) unsigned NOT NULL DEFAULT 0,
  `Money` bigint(20) unsigned NOT NULL DEFAULT 0,
  `Xp` int(10) unsigned NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ChoiceId`,`ResponseId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.playerchoice_response_reward_currency
DROP TABLE IF EXISTS `playerchoice_response_reward_currency`;
CREATE TABLE IF NOT EXISTS `playerchoice_response_reward_currency` (
  `ChoiceId` int(11) NOT NULL,
  `ResponseId` int(11) NOT NULL,
  `Index` int(10) unsigned NOT NULL,
  `CurrencyId` int(10) unsigned NOT NULL DEFAULT 0,
  `Quantity` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ChoiceId`,`ResponseId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.playerchoice_response_reward_faction
DROP TABLE IF EXISTS `playerchoice_response_reward_faction`;
CREATE TABLE IF NOT EXISTS `playerchoice_response_reward_faction` (
  `ChoiceId` int(11) NOT NULL,
  `ResponseId` int(11) NOT NULL,
  `Index` int(10) unsigned NOT NULL,
  `FactionId` int(10) unsigned NOT NULL DEFAULT 0,
  `Quantity` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ChoiceId`,`ResponseId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.playerchoice_response_reward_item
DROP TABLE IF EXISTS `playerchoice_response_reward_item`;
CREATE TABLE IF NOT EXISTS `playerchoice_response_reward_item` (
  `ChoiceId` int(11) NOT NULL,
  `ResponseId` int(11) NOT NULL,
  `Index` int(10) unsigned NOT NULL,
  `ItemId` int(10) unsigned NOT NULL DEFAULT 0,
  `BonusListIDs` text DEFAULT NULL,
  `Quantity` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ChoiceId`,`ResponseId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.playercreateinfo
DROP TABLE IF EXISTS `playercreateinfo`;
CREATE TABLE IF NOT EXISTS `playercreateinfo` (
  `race` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `class` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `map` smallint(5) unsigned NOT NULL DEFAULT 0,
  `zone` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`race`,`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.playercreateinfo_action
DROP TABLE IF EXISTS `playercreateinfo_action`;
CREATE TABLE IF NOT EXISTS `playercreateinfo_action` (
  `race` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `class` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `button` smallint(5) unsigned NOT NULL DEFAULT 0,
  `action` int(10) unsigned NOT NULL DEFAULT 0,
  `type` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`race`,`class`,`button`),
  KEY `playercreateinfo_race_class_index` (`race`,`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.playercreateinfo_cast_spell
DROP TABLE IF EXISTS `playercreateinfo_cast_spell`;
CREATE TABLE IF NOT EXISTS `playercreateinfo_cast_spell` (
  `raceMask` bigint(20) unsigned NOT NULL,
  `classMask` int(10) unsigned NOT NULL DEFAULT 0,
  `spell` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`raceMask`,`classMask`,`spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.playercreateinfo_item
DROP TABLE IF EXISTS `playercreateinfo_item`;
CREATE TABLE IF NOT EXISTS `playercreateinfo_item` (
  `race` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `class` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `itemid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `amount` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`race`,`class`,`itemid`),
  KEY `playercreateinfo_race_class_index` (`race`,`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.playercreateinfo_spell_custom
DROP TABLE IF EXISTS `playercreateinfo_spell_custom`;
CREATE TABLE IF NOT EXISTS `playercreateinfo_spell_custom` (
  `racemask` bigint(20) unsigned NOT NULL,
  `classmask` int(10) unsigned NOT NULL DEFAULT 0,
  `Spell` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`racemask`,`classmask`,`Spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.player_factionchange_achievement
DROP TABLE IF EXISTS `player_factionchange_achievement`;
CREATE TABLE IF NOT EXISTS `player_factionchange_achievement` (
  `alliance_id` int(10) unsigned NOT NULL,
  `horde_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.player_factionchange_items
DROP TABLE IF EXISTS `player_factionchange_items`;
CREATE TABLE IF NOT EXISTS `player_factionchange_items` (
  `race_A` int(10) unsigned NOT NULL,
  `alliance_id` int(10) unsigned NOT NULL,
  `commentA` text DEFAULT NULL,
  `race_H` int(10) unsigned NOT NULL,
  `horde_id` int(10) unsigned NOT NULL,
  `commentH` text DEFAULT NULL,
  PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.player_factionchange_quests
DROP TABLE IF EXISTS `player_factionchange_quests`;
CREATE TABLE IF NOT EXISTS `player_factionchange_quests` (
  `alliance_id` int(10) unsigned NOT NULL,
  `horde_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`alliance_id`,`horde_id`),
  UNIQUE KEY `alliance_uniq` (`alliance_id`),
  UNIQUE KEY `horde_uniq` (`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.player_factionchange_reputations
DROP TABLE IF EXISTS `player_factionchange_reputations`;
CREATE TABLE IF NOT EXISTS `player_factionchange_reputations` (
  `alliance_id` int(10) unsigned NOT NULL,
  `horde_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.player_factionchange_spells
DROP TABLE IF EXISTS `player_factionchange_spells`;
CREATE TABLE IF NOT EXISTS `player_factionchange_spells` (
  `alliance_id` int(10) unsigned NOT NULL,
  `horde_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.player_factionchange_titles
DROP TABLE IF EXISTS `player_factionchange_titles`;
CREATE TABLE IF NOT EXISTS `player_factionchange_titles` (
  `alliance_id` int(8) NOT NULL,
  `horde_id` int(8) NOT NULL,
  PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.player_levelstats
DROP TABLE IF EXISTS `player_levelstats`;
CREATE TABLE IF NOT EXISTS `player_levelstats` (
  `race` tinyint(3) unsigned NOT NULL,
  `class` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `str` smallint(6) unsigned NOT NULL COMMENT 'strength',
  `agi` smallint(6) unsigned NOT NULL COMMENT 'agility',
  `sta` smallint(6) unsigned NOT NULL COMMENT 'stamina',
  `inte` smallint(6) unsigned NOT NULL COMMENT 'intellect',
  PRIMARY KEY (`race`,`class`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0 COMMENT='Stores levels stats.';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.player_xp_for_level
DROP TABLE IF EXISTS `player_xp_for_level`;
CREATE TABLE IF NOT EXISTS `player_xp_for_level` (
  `Level` tinyint(3) unsigned NOT NULL,
  `Experience` float unsigned NOT NULL,
  PRIMARY KEY (`Level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.points_of_interest
DROP TABLE IF EXISTS `points_of_interest`;
CREATE TABLE IF NOT EXISTS `points_of_interest` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `PositionX` float NOT NULL DEFAULT 0,
  `PositionY` float NOT NULL DEFAULT 0,
  `Icon` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Flags` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Importance` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Name` text DEFAULT NULL,
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.points_of_interest_locale
DROP TABLE IF EXISTS `points_of_interest_locale`;
CREATE TABLE IF NOT EXISTS `points_of_interest_locale` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `locale` varchar(4) NOT NULL,
  `Name` text DEFAULT NULL,
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.pool_creature
DROP TABLE IF EXISTS `pool_creature`;
CREATE TABLE IF NOT EXISTS `pool_creature` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `chance` float unsigned NOT NULL DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guid`),
  KEY `idx_guid` (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.pool_gameobject
DROP TABLE IF EXISTS `pool_gameobject`;
CREATE TABLE IF NOT EXISTS `pool_gameobject` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `chance` float unsigned NOT NULL DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guid`),
  KEY `idx_guid` (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.pool_pool
DROP TABLE IF EXISTS `pool_pool`;
CREATE TABLE IF NOT EXISTS `pool_pool` (
  `pool_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `mother_pool` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `chance` float NOT NULL DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pool_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.pool_quest
DROP TABLE IF EXISTS `pool_quest`;
CREATE TABLE IF NOT EXISTS `pool_quest` (
  `entry` int(10) unsigned NOT NULL DEFAULT 0,
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entry`),
  KEY `idx_guid` (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.pool_template
DROP TABLE IF EXISTS `pool_template`;
CREATE TABLE IF NOT EXISTS `pool_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Pool entry',
  `max_limit` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Max number of objects (0) is no limit',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.prospecting_loot_template
DROP TABLE IF EXISTS `prospecting_loot_template`;
CREATE TABLE IF NOT EXISTS `prospecting_loot_template` (
  `Entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Item` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Reference` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint(5) unsigned NOT NULL DEFAULT 1,
  `GroupId` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `MinCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `MaxCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Entry`,`Item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.quest_details
DROP TABLE IF EXISTS `quest_details`;
CREATE TABLE IF NOT EXISTS `quest_details` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Emote1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `Emote2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `Emote3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `Emote4` smallint(5) unsigned NOT NULL DEFAULT 0,
  `EmoteDelay1` int(10) unsigned NOT NULL DEFAULT 0,
  `EmoteDelay2` int(10) unsigned NOT NULL DEFAULT 0,
  `EmoteDelay3` int(10) unsigned NOT NULL DEFAULT 0,
  `EmoteDelay4` int(10) unsigned NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.quest_greeting
DROP TABLE IF EXISTS `quest_greeting`;
CREATE TABLE IF NOT EXISTS `quest_greeting` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `GreetEmoteType` smallint(5) unsigned NOT NULL DEFAULT 0,
  `GreetEmoteDelay` int(10) unsigned NOT NULL DEFAULT 0,
  `Greeting` text DEFAULT NULL,
  `VerifiedBuild` smallint(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`,`Type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.quest_greeting_locale
DROP TABLE IF EXISTS `quest_greeting_locale`;
CREATE TABLE IF NOT EXISTS `quest_greeting_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT 0,
  `type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `locale` varchar(4) NOT NULL,
  `Greeting` text DEFAULT NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`,`type`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.quest_mail_sender
DROP TABLE IF EXISTS `quest_mail_sender`;
CREATE TABLE IF NOT EXISTS `quest_mail_sender` (
  `QuestId` int(5) unsigned NOT NULL DEFAULT 0,
  `RewardMailSenderEntry` int(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`QuestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.quest_objectives
DROP TABLE IF EXISTS `quest_objectives`;
CREATE TABLE IF NOT EXISTS `quest_objectives` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `QuestID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `Order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `StorageIndex` tinyint(3) NOT NULL DEFAULT 0,
  `ObjectID` int(10) NOT NULL DEFAULT 0,
  `Amount` int(10) NOT NULL DEFAULT 0,
  `Flags` int(10) unsigned NOT NULL DEFAULT 0,
  `Flags2` int(10) unsigned NOT NULL DEFAULT 0,
  `ProgressBarWeight` float NOT NULL DEFAULT 0,
  `Description` text DEFAULT NULL,
  `VerifiedBuild` smallint(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.quest_objectives_locale
DROP TABLE IF EXISTS `quest_objectives_locale`;
CREATE TABLE IF NOT EXISTS `quest_objectives_locale` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `locale` varchar(4) NOT NULL,
  `QuestId` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `StorageIndex` tinyint(3) NOT NULL DEFAULT 0,
  `Description` text DEFAULT NULL,
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.quest_offer_reward
DROP TABLE IF EXISTS `quest_offer_reward`;
CREATE TABLE IF NOT EXISTS `quest_offer_reward` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Emote1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `Emote2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `Emote3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `Emote4` smallint(5) unsigned NOT NULL DEFAULT 0,
  `EmoteDelay1` int(10) unsigned NOT NULL DEFAULT 0,
  `EmoteDelay2` int(10) unsigned NOT NULL DEFAULT 0,
  `EmoteDelay3` int(10) unsigned NOT NULL DEFAULT 0,
  `EmoteDelay4` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardText` text DEFAULT NULL,
  `VerifiedBuild` smallint(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.quest_offer_reward_locale
DROP TABLE IF EXISTS `quest_offer_reward_locale`;
CREATE TABLE IF NOT EXISTS `quest_offer_reward_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT 0,
  `locale` varchar(4) NOT NULL,
  `RewardText` text DEFAULT NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.quest_poi
DROP TABLE IF EXISTS `quest_poi`;
CREATE TABLE IF NOT EXISTS `quest_poi` (
  `QuestID` int(11) NOT NULL DEFAULT 0,
  `BlobIndex` int(11) NOT NULL DEFAULT 0,
  `Idx1` int(11) NOT NULL DEFAULT 0,
  `ObjectiveIndex` int(11) NOT NULL DEFAULT 0,
  `QuestObjectiveID` int(11) NOT NULL DEFAULT 0,
  `QuestObjectID` int(11) NOT NULL DEFAULT 0,
  `MapID` int(11) NOT NULL DEFAULT 0,
  `UiMapID` int(11) NOT NULL DEFAULT 0,
  `Priority` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `WorldEffectID` int(11) NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `SpawnTrackingID` int(11) NOT NULL DEFAULT 0,
  `AlwaysAllowMergingBlobs` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`QuestID`,`BlobIndex`,`Idx1`),
  KEY `idx` (`QuestID`,`BlobIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.quest_poi_points
DROP TABLE IF EXISTS `quest_poi_points`;
CREATE TABLE IF NOT EXISTS `quest_poi_points` (
  `QuestID` int(11) NOT NULL DEFAULT 0,
  `Idx1` int(11) NOT NULL DEFAULT 0,
  `Idx2` int(11) NOT NULL DEFAULT 0,
  `X` int(11) NOT NULL DEFAULT 0,
  `Y` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`QuestID`,`Idx1`,`Idx2`),
  KEY `questId_id` (`QuestID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.quest_request_items
DROP TABLE IF EXISTS `quest_request_items`;
CREATE TABLE IF NOT EXISTS `quest_request_items` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `EmoteOnComplete` smallint(5) unsigned NOT NULL DEFAULT 0,
  `EmoteOnIncomplete` smallint(5) unsigned NOT NULL DEFAULT 0,
  `EmoteOnCompleteDelay` int(10) unsigned NOT NULL DEFAULT 0,
  `EmoteOnIncompleteDelay` int(10) unsigned NOT NULL DEFAULT 0,
  `CompletionText` text DEFAULT NULL,
  `VerifiedBuild` smallint(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.quest_request_items_locale
DROP TABLE IF EXISTS `quest_request_items_locale`;
CREATE TABLE IF NOT EXISTS `quest_request_items_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT 0,
  `locale` varchar(4) NOT NULL,
  `CompletionText` text DEFAULT NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.quest_template
DROP TABLE IF EXISTS `quest_template`;
CREATE TABLE IF NOT EXISTS `quest_template` (
  `ID` int(10) unsigned NOT NULL DEFAULT 0,
  `QuestType` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `QuestLevel` int(11) NOT NULL DEFAULT -1,
  `ScalingFactionGroup` int(11) NOT NULL DEFAULT 0,
  `MaxScalingLevel` int(11) NOT NULL DEFAULT 255,
  `QuestPackageID` int(10) unsigned NOT NULL DEFAULT 0,
  `MinLevel` int(11) NOT NULL DEFAULT 0,
  `QuestSortID` smallint(6) NOT NULL DEFAULT 0,
  `QuestInfoID` smallint(5) unsigned NOT NULL DEFAULT 0,
  `SuggestedGroupNum` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `RewardNextQuest` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardXPDifficulty` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardXPMultiplier` float NOT NULL DEFAULT 1,
  `RewardMoney` int(11) NOT NULL DEFAULT 0,
  `RewardMoneyDifficulty` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardMoneyMultiplier` float NOT NULL DEFAULT 1,
  `RewardBonusMoney` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardDisplaySpell1` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardDisplaySpell2` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardDisplaySpell3` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardSpell` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardHonor` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardKillHonor` int(10) unsigned NOT NULL DEFAULT 0,
  `StartItem` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardArtifactXPDifficulty` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardArtifactXPMultiplier` float NOT NULL DEFAULT 1,
  `RewardArtifactCategoryID` int(10) unsigned NOT NULL DEFAULT 0,
  `Flags` int(10) unsigned NOT NULL DEFAULT 0,
  `FlagsEx` int(10) unsigned NOT NULL DEFAULT 0,
  `FlagsEx2` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardItem1` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardAmount1` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardItem2` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardAmount2` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardItem3` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardAmount3` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardItem4` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardAmount4` int(10) unsigned NOT NULL DEFAULT 0,
  `ItemDrop1` int(10) unsigned NOT NULL DEFAULT 0,
  `ItemDropQuantity1` int(10) unsigned NOT NULL DEFAULT 0,
  `ItemDrop2` int(10) unsigned NOT NULL DEFAULT 0,
  `ItemDropQuantity2` int(10) unsigned NOT NULL DEFAULT 0,
  `ItemDrop3` int(10) unsigned NOT NULL DEFAULT 0,
  `ItemDropQuantity3` int(10) unsigned NOT NULL DEFAULT 0,
  `ItemDrop4` int(10) unsigned NOT NULL DEFAULT 0,
  `ItemDropQuantity4` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardChoiceItemID1` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardChoiceItemQuantity1` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardChoiceItemDisplayID1` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardChoiceItemID2` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardChoiceItemQuantity2` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardChoiceItemDisplayID2` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardChoiceItemID3` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardChoiceItemQuantity3` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardChoiceItemDisplayID3` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardChoiceItemID4` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardChoiceItemQuantity4` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardChoiceItemDisplayID4` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardChoiceItemID5` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardChoiceItemQuantity5` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardChoiceItemDisplayID5` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardChoiceItemID6` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardChoiceItemQuantity6` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardChoiceItemDisplayID6` int(10) unsigned NOT NULL DEFAULT 0,
  `POIContinent` int(10) unsigned NOT NULL DEFAULT 0,
  `POIx` float NOT NULL DEFAULT 0,
  `POIy` float NOT NULL DEFAULT 0,
  `POIPriority` int(11) NOT NULL DEFAULT 0,
  `RewardTitle` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardArenaPoints` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardSkillLineID` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardNumSkillUps` int(10) unsigned NOT NULL DEFAULT 0,
  `PortraitGiver` int(10) unsigned NOT NULL DEFAULT 0,
  `PortraitGiverMount` int(11) NOT NULL DEFAULT 0,
  `PortraitTurnIn` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardFactionID1` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardFactionValue1` int(11) NOT NULL DEFAULT 0,
  `RewardFactionOverride1` int(11) NOT NULL DEFAULT 0,
  `RewardFactionCapIn1` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardFactionID2` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardFactionValue2` int(11) NOT NULL DEFAULT 0,
  `RewardFactionOverride2` int(11) NOT NULL DEFAULT 0,
  `RewardFactionCapIn2` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardFactionID3` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardFactionValue3` int(11) NOT NULL DEFAULT 0,
  `RewardFactionOverride3` int(11) NOT NULL DEFAULT 0,
  `RewardFactionCapIn3` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardFactionID4` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardFactionValue4` int(11) NOT NULL DEFAULT 0,
  `RewardFactionOverride4` int(11) NOT NULL DEFAULT 0,
  `RewardFactionCapIn4` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardFactionID5` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardFactionValue5` int(11) NOT NULL DEFAULT 0,
  `RewardFactionOverride5` int(11) NOT NULL DEFAULT 0,
  `RewardFactionCapIn5` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardFactionFlags` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardCurrencyID1` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardCurrencyQty1` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardCurrencyID2` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardCurrencyQty2` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardCurrencyID3` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardCurrencyQty3` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardCurrencyID4` int(10) unsigned NOT NULL DEFAULT 0,
  `RewardCurrencyQty4` int(10) unsigned NOT NULL DEFAULT 0,
  `AcceptedSoundKitID` int(10) unsigned NOT NULL DEFAULT 0,
  `CompleteSoundKitID` int(10) unsigned NOT NULL DEFAULT 0,
  `AreaGroupID` int(10) unsigned NOT NULL DEFAULT 0,
  `TimeAllowed` int(10) unsigned NOT NULL DEFAULT 0,
  `AllowableRaces` bigint(20) unsigned DEFAULT 0,
  `TreasurePickerID` int(11) NOT NULL DEFAULT 0,
  `Expansion` int(11) NOT NULL DEFAULT 0,
  `LogTitle` text DEFAULT NULL,
  `LogDescription` text DEFAULT NULL,
  `QuestDescription` text DEFAULT NULL,
  `AreaDescription` text DEFAULT NULL,
  `PortraitGiverText` text DEFAULT NULL,
  `PortraitGiverName` text DEFAULT NULL,
  `PortraitTurnInText` text DEFAULT NULL,
  `PortraitTurnInName` text DEFAULT NULL,
  `QuestCompletionLog` text DEFAULT NULL,
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Quest System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.quest_template_addon
DROP TABLE IF EXISTS `quest_template_addon`;
CREATE TABLE IF NOT EXISTS `quest_template_addon` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `MaxLevel` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `AllowableClasses` int(10) unsigned NOT NULL DEFAULT 0,
  `SourceSpellID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `PrevQuestID` mediumint(8) NOT NULL DEFAULT 0,
  `NextQuestID` mediumint(8) NOT NULL DEFAULT 0,
  `ExclusiveGroup` mediumint(8) NOT NULL DEFAULT 0,
  `RewardMailTemplateID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `RewardMailDelay` int(10) unsigned NOT NULL DEFAULT 0,
  `RequiredSkillID` smallint(5) unsigned NOT NULL DEFAULT 0,
  `RequiredSkillPoints` smallint(5) unsigned NOT NULL DEFAULT 0,
  `RequiredMinRepFaction` smallint(5) unsigned NOT NULL DEFAULT 0,
  `RequiredMaxRepFaction` smallint(5) unsigned NOT NULL DEFAULT 0,
  `RequiredMinRepValue` mediumint(8) NOT NULL DEFAULT 0,
  `RequiredMaxRepValue` mediumint(8) NOT NULL DEFAULT 0,
  `ProvidedItemCount` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `SpecialFlags` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `ScriptName` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.quest_template_locale
DROP TABLE IF EXISTS `quest_template_locale`;
CREATE TABLE IF NOT EXISTS `quest_template_locale` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `locale` varchar(4) NOT NULL,
  `LogTitle` text DEFAULT NULL,
  `LogDescription` text DEFAULT NULL,
  `QuestDescription` text DEFAULT NULL,
  `AreaDescription` text DEFAULT NULL,
  `PortraitGiverText` text DEFAULT NULL,
  `PortraitGiverName` text DEFAULT NULL,
  `PortraitTurnInText` text DEFAULT NULL,
  `PortraitTurnInName` text DEFAULT NULL,
  `QuestCompletionLog` text DEFAULT NULL,
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.quest_visual_effect
DROP TABLE IF EXISTS `quest_visual_effect`;
CREATE TABLE IF NOT EXISTS `quest_visual_effect` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Index` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `VisualEffect` mediumint(8) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`,`Index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.race_unlock_requirement
DROP TABLE IF EXISTS `race_unlock_requirement`;
CREATE TABLE IF NOT EXISTS `race_unlock_requirement` (
  `raceID` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `expansion` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `achievementId` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`raceID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.reference_loot_template
DROP TABLE IF EXISTS `reference_loot_template`;
CREATE TABLE IF NOT EXISTS `reference_loot_template` (
  `Entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Item` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Reference` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint(5) unsigned NOT NULL DEFAULT 1,
  `GroupId` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `MinCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `MaxCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Entry`,`Item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.reputation_reward_rate
DROP TABLE IF EXISTS `reputation_reward_rate`;
CREATE TABLE IF NOT EXISTS `reputation_reward_rate` (
  `faction` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `quest_rate` float NOT NULL DEFAULT 1,
  `quest_daily_rate` float NOT NULL DEFAULT 1,
  `quest_weekly_rate` float NOT NULL DEFAULT 1,
  `quest_monthly_rate` float NOT NULL DEFAULT 1,
  `quest_repeatable_rate` float NOT NULL DEFAULT 1,
  `creature_rate` float NOT NULL DEFAULT 1,
  `spell_rate` float NOT NULL DEFAULT 1,
  PRIMARY KEY (`faction`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.reputation_spillover_template
DROP TABLE IF EXISTS `reputation_spillover_template`;
CREATE TABLE IF NOT EXISTS `reputation_spillover_template` (
  `faction` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'faction entry',
  `faction1` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'faction to give spillover for',
  `rate_1` float NOT NULL DEFAULT 0 COMMENT 'the given rep points * rate',
  `rank_1` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'max rank,above this will not give any spillover',
  `faction2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rate_2` float NOT NULL DEFAULT 0,
  `rank_2` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `faction3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rate_3` float NOT NULL DEFAULT 0,
  `rank_3` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `faction4` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rate_4` float NOT NULL DEFAULT 0,
  `rank_4` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `faction5` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rate_5` float NOT NULL DEFAULT 0,
  `rank_5` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`faction`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Reputation spillover reputation gain';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.scenarios
DROP TABLE IF EXISTS `scenarios`;
CREATE TABLE IF NOT EXISTS `scenarios` (
  `map` int(10) unsigned NOT NULL DEFAULT 0,
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `scenario_A` int(10) unsigned NOT NULL DEFAULT 0,
  `scenario_H` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`map`,`difficulty`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.scenario_poi
DROP TABLE IF EXISTS `scenario_poi`;
CREATE TABLE IF NOT EXISTS `scenario_poi` (
  `CriteriaTreeID` int(11) NOT NULL DEFAULT 0,
  `BlobIndex` int(11) NOT NULL DEFAULT 0,
  `Idx1` int(11) NOT NULL DEFAULT 0,
  `MapID` int(11) NOT NULL DEFAULT 0,
  `UiMapID` int(11) NOT NULL DEFAULT 0,
  `Priority` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `WorldEffectID` int(11) NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`CriteriaTreeID`,`BlobIndex`,`Idx1`),
  KEY `idx` (`CriteriaTreeID`,`BlobIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.scenario_poi_points
DROP TABLE IF EXISTS `scenario_poi_points`;
CREATE TABLE IF NOT EXISTS `scenario_poi_points` (
  `CriteriaTreeID` int(11) NOT NULL DEFAULT 0,
  `Idx1` int(11) NOT NULL DEFAULT 0,
  `Idx2` int(11) NOT NULL DEFAULT 0,
  `X` int(11) NOT NULL DEFAULT 0,
  `Y` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`CriteriaTreeID`,`Idx1`,`Idx2`),
  KEY `questId_id` (`CriteriaTreeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.scene_template
DROP TABLE IF EXISTS `scene_template`;
CREATE TABLE IF NOT EXISTS `scene_template` (
  `SceneId` int(10) unsigned NOT NULL,
  `Flags` int(10) unsigned NOT NULL DEFAULT 0,
  `ScriptPackageID` int(10) unsigned NOT NULL DEFAULT 0,
  `ScriptName` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`SceneId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.script_spline_chain_meta
DROP TABLE IF EXISTS `script_spline_chain_meta`;
CREATE TABLE IF NOT EXISTS `script_spline_chain_meta` (
  `entry` int(10) unsigned NOT NULL,
  `chainId` smallint(5) unsigned NOT NULL,
  `splineId` tinyint(3) unsigned NOT NULL,
  `expectedDuration` int(10) unsigned NOT NULL,
  `msUntilNext` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entry`,`chainId`,`splineId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.script_spline_chain_waypoints
DROP TABLE IF EXISTS `script_spline_chain_waypoints`;
CREATE TABLE IF NOT EXISTS `script_spline_chain_waypoints` (
  `entry` int(10) unsigned NOT NULL,
  `chainId` smallint(5) unsigned NOT NULL,
  `splineId` tinyint(3) unsigned NOT NULL,
  `wpId` tinyint(3) unsigned NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  PRIMARY KEY (`entry`,`chainId`,`splineId`,`wpId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.script_waypoint
DROP TABLE IF EXISTS `script_waypoint`;
CREATE TABLE IF NOT EXISTS `script_waypoint` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'creature_template entry',
  `pointid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `location_x` float NOT NULL DEFAULT 0,
  `location_y` float NOT NULL DEFAULT 0,
  `location_z` float NOT NULL DEFAULT 0,
  `waittime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'waittime in millisecs',
  `point_comment` text DEFAULT NULL,
  PRIMARY KEY (`entry`,`pointid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Script Creature waypoints';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.skill_discovery_template
DROP TABLE IF EXISTS `skill_discovery_template`;
CREATE TABLE IF NOT EXISTS `skill_discovery_template` (
  `spellId` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'SpellId of the discoverable spell',
  `reqSpell` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'spell requirement',
  `reqSkillValue` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'skill points requirement',
  `chance` float NOT NULL DEFAULT 0 COMMENT 'chance to discover',
  PRIMARY KEY (`spellId`,`reqSpell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Skill Discovery System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.skill_extra_item_template
DROP TABLE IF EXISTS `skill_extra_item_template`;
CREATE TABLE IF NOT EXISTS `skill_extra_item_template` (
  `spellId` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'SpellId of the item creation spell',
  `requiredSpecialization` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Specialization spell id',
  `additionalCreateChance` float NOT NULL DEFAULT 0 COMMENT 'chance to create add',
  `additionalMaxNum` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'max num of adds',
  PRIMARY KEY (`spellId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Skill Specialization System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.skill_fishing_base_level
DROP TABLE IF EXISTS `skill_fishing_base_level`;
CREATE TABLE IF NOT EXISTS `skill_fishing_base_level` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Area identifier',
  `skill` smallint(6) NOT NULL DEFAULT 0 COMMENT 'Base skill level requirement',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Fishing system';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.skill_perfect_item_template
DROP TABLE IF EXISTS `skill_perfect_item_template`;
CREATE TABLE IF NOT EXISTS `skill_perfect_item_template` (
  `spellId` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'SpellId of the item creation spell',
  `requiredSpecialization` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Specialization spell id',
  `perfectCreateChance` float NOT NULL DEFAULT 0 COMMENT 'chance to create the perfect item instead',
  `perfectItemType` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'perfect item type to create instead',
  PRIMARY KEY (`spellId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Crafting Perfection System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.skill_tiers
DROP TABLE IF EXISTS `skill_tiers`;
CREATE TABLE IF NOT EXISTS `skill_tiers` (
  `ID` int(10) unsigned NOT NULL DEFAULT 0,
  `Value1` int(10) unsigned NOT NULL DEFAULT 0,
  `Value2` int(10) unsigned NOT NULL DEFAULT 0,
  `Value3` int(10) unsigned NOT NULL DEFAULT 0,
  `Value4` int(10) unsigned NOT NULL DEFAULT 0,
  `Value5` int(10) unsigned NOT NULL DEFAULT 0,
  `Value6` int(10) unsigned NOT NULL DEFAULT 0,
  `Value7` int(10) unsigned NOT NULL DEFAULT 0,
  `Value8` int(10) unsigned NOT NULL DEFAULT 0,
  `Value9` int(10) unsigned NOT NULL DEFAULT 0,
  `Value10` int(10) unsigned NOT NULL DEFAULT 0,
  `Value11` int(10) unsigned NOT NULL DEFAULT 0,
  `Value12` int(10) unsigned NOT NULL DEFAULT 0,
  `Value13` int(10) unsigned NOT NULL DEFAULT 0,
  `Value14` int(10) unsigned NOT NULL DEFAULT 0,
  `Value15` int(10) unsigned NOT NULL DEFAULT 0,
  `Value16` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.skinning_loot_template
DROP TABLE IF EXISTS `skinning_loot_template`;
CREATE TABLE IF NOT EXISTS `skinning_loot_template` (
  `Entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Item` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Reference` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint(5) unsigned NOT NULL DEFAULT 1,
  `GroupId` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `MinCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `MaxCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Entry`,`Item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.smart_scripts
DROP TABLE IF EXISTS `smart_scripts`;
CREATE TABLE IF NOT EXISTS `smart_scripts` (
  `entryorguid` bigint(20) NOT NULL DEFAULT 0,
  `source_type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `id` smallint(5) unsigned NOT NULL DEFAULT 0,
  `link` smallint(5) unsigned NOT NULL DEFAULT 0,
  `event_type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `event_phase_mask` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `event_chance` tinyint(3) unsigned NOT NULL DEFAULT 100,
  `event_flags` smallint(3) unsigned NOT NULL DEFAULT 0,
  `event_param1` int(10) unsigned NOT NULL DEFAULT 0,
  `event_param2` int(10) unsigned NOT NULL DEFAULT 0,
  `event_param3` int(10) unsigned NOT NULL DEFAULT 0,
  `event_param4` int(10) unsigned NOT NULL DEFAULT 0,
  `event_param5` int(10) unsigned NOT NULL DEFAULT 0,
  `event_param_string` varchar(255) NOT NULL DEFAULT '',
  `action_type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `action_param1` int(10) unsigned NOT NULL DEFAULT 0,
  `action_param2` int(10) unsigned NOT NULL DEFAULT 0,
  `action_param3` int(10) unsigned NOT NULL DEFAULT 0,
  `action_param4` int(10) unsigned NOT NULL DEFAULT 0,
  `action_param5` int(10) unsigned NOT NULL DEFAULT 0,
  `action_param6` int(10) unsigned NOT NULL DEFAULT 0,
  `target_type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `target_param1` int(10) unsigned NOT NULL DEFAULT 0,
  `target_param2` int(10) unsigned NOT NULL DEFAULT 0,
  `target_param3` int(10) unsigned NOT NULL DEFAULT 0,
  `target_x` float NOT NULL DEFAULT 0,
  `target_y` float NOT NULL DEFAULT 0,
  `target_z` float NOT NULL DEFAULT 0,
  `target_o` float NOT NULL DEFAULT 0,
  `comment` text NOT NULL COMMENT 'Event Comment',
  PRIMARY KEY (`entryorguid`,`source_type`,`id`,`link`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.spelleffect_dbc
DROP TABLE IF EXISTS `spelleffect_dbc`;
CREATE TABLE IF NOT EXISTS `spelleffect_dbc` (
  `Id` int(10) unsigned NOT NULL,
  `Effect` int(10) unsigned NOT NULL DEFAULT 0,
  `EffectValueMultiplier` float unsigned NOT NULL DEFAULT 0,
  `EffectApplyAuraName` int(10) unsigned NOT NULL DEFAULT 0,
  `EffectAmplitude` int(10) unsigned NOT NULL DEFAULT 0,
  `EffectBasePoints` int(10) NOT NULL DEFAULT 0,
  `EffectBonusMultiplier` float unsigned NOT NULL DEFAULT 0,
  `EffectDamageMultiplier` float unsigned NOT NULL DEFAULT 0,
  `EffectChainTarget` int(10) unsigned NOT NULL DEFAULT 0,
  `EffectDieSides` int(10) NOT NULL DEFAULT 0,
  `EffectItemType` int(10) unsigned NOT NULL DEFAULT 0,
  `EffectMechanic` int(10) unsigned NOT NULL DEFAULT 0,
  `EffectMiscValue` int(10) NOT NULL DEFAULT 0,
  `EffectMiscValueB` int(10) NOT NULL DEFAULT 0,
  `EffectRadiusIndex` int(10) unsigned NOT NULL DEFAULT 0,
  `EffectRadiusIndexMax` int(10) unsigned NOT NULL DEFAULT 0,
  `EffectRealPointsPerLevel` float unsigned NOT NULL DEFAULT 0,
  `EffectSpellClassMaskA` int(10) unsigned NOT NULL DEFAULT 0,
  `EffectSpellClassMaskB` int(10) unsigned NOT NULL DEFAULT 0,
  `EffectSpellClassMaskC` int(10) unsigned NOT NULL DEFAULT 0,
  `EffectTriggerSpell` int(10) unsigned NOT NULL DEFAULT 0,
  `EffectImplicitTargetA` int(10) unsigned NOT NULL DEFAULT 0,
  `EffectImplicitTargetB` int(10) unsigned NOT NULL DEFAULT 0,
  `EffectSpellId` int(10) unsigned NOT NULL,
  `EffectIndex` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.spell_area
DROP TABLE IF EXISTS `spell_area`;
CREATE TABLE IF NOT EXISTS `spell_area` (
  `spell` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `area` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `quest_start` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `quest_end` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `aura_spell` mediumint(8) NOT NULL DEFAULT 0,
  `racemask` bigint(20) unsigned NOT NULL,
  `gender` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `flags` tinyint(3) unsigned NOT NULL DEFAULT 3,
  `quest_start_status` int(11) NOT NULL DEFAULT 64,
  `quest_end_status` int(11) NOT NULL DEFAULT 11,
  PRIMARY KEY (`spell`,`area`,`quest_start`,`aura_spell`,`racemask`,`gender`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.spell_areatrigger
DROP TABLE IF EXISTS `spell_areatrigger`;
CREATE TABLE IF NOT EXISTS `spell_areatrigger` (
  `SpellMiscId` int(10) unsigned NOT NULL,
  `AreaTriggerId` int(10) unsigned NOT NULL,
  `MoveCurveId` int(10) unsigned NOT NULL DEFAULT 0,
  `ScaleCurveId` int(10) unsigned NOT NULL DEFAULT 0,
  `MorphCurveId` int(10) unsigned NOT NULL DEFAULT 0,
  `FacingCurveId` int(10) unsigned NOT NULL DEFAULT 0,
  `AnimId` int(11) NOT NULL DEFAULT 0,
  `AnimKitId` int(11) NOT NULL DEFAULT 0,
  `DecalPropertiesId` int(10) unsigned NOT NULL DEFAULT 0,
  `TimeToTarget` int(10) unsigned NOT NULL DEFAULT 0,
  `TimeToTargetScale` int(10) unsigned NOT NULL DEFAULT 0,
  `VerifiedBuild` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`SpellMiscId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.spell_areatrigger_circular
DROP TABLE IF EXISTS `spell_areatrigger_circular`;
CREATE TABLE IF NOT EXISTS `spell_areatrigger_circular` (
  `SpellMiscId` int(10) unsigned NOT NULL,
  `StartDelay` int(10) unsigned NOT NULL DEFAULT 0,
  `CircleRadius` float NOT NULL DEFAULT 0,
  `BlendFromRadius` float NOT NULL DEFAULT 0,
  `InitialAngle` float NOT NULL DEFAULT 0,
  `ZOffset` float NOT NULL DEFAULT 0,
  `CounterClockwise` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `CanLoop` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `VerifiedBuild` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`SpellMiscId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.spell_areatrigger_splines
DROP TABLE IF EXISTS `spell_areatrigger_splines`;
CREATE TABLE IF NOT EXISTS `spell_areatrigger_splines` (
  `SpellMiscId` int(10) unsigned NOT NULL,
  `Idx` int(10) unsigned NOT NULL,
  `X` float NOT NULL DEFAULT 0,
  `Y` float NOT NULL DEFAULT 0,
  `Z` float NOT NULL DEFAULT 0,
  `VerifiedBuild` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`SpellMiscId`,`Idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.spell_custom_attr
DROP TABLE IF EXISTS `spell_custom_attr`;
CREATE TABLE IF NOT EXISTS `spell_custom_attr` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'spell id',
  `attributes` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'SpellCustomAttributes',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SpellInfo custom attributes';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.spell_dbc
DROP TABLE IF EXISTS `spell_dbc`;
CREATE TABLE IF NOT EXISTS `spell_dbc` (
  `Id` int(10) unsigned NOT NULL,
  `Attributes` int(10) unsigned NOT NULL DEFAULT 0,
  `AttributesEx` int(10) unsigned NOT NULL DEFAULT 0,
  `AttributesEx2` int(10) unsigned NOT NULL DEFAULT 0,
  `AttributesEx3` int(10) unsigned NOT NULL DEFAULT 0,
  `AttributesEx4` int(10) unsigned NOT NULL DEFAULT 0,
  `AttributesEx5` int(10) unsigned NOT NULL DEFAULT 0,
  `AttributesEx6` int(10) unsigned NOT NULL DEFAULT 0,
  `AttributesEx7` int(10) unsigned NOT NULL DEFAULT 0,
  `AttributesEx8` int(10) unsigned NOT NULL DEFAULT 0,
  `AttributesEx9` int(10) unsigned NOT NULL DEFAULT 0,
  `AttributesEx10` int(10) unsigned NOT NULL DEFAULT 0,
  `CastingTimeIndex` int(10) unsigned NOT NULL DEFAULT 1,
  `DurationIndex` int(10) unsigned NOT NULL DEFAULT 0,
  `RangeIndex` int(10) unsigned NOT NULL DEFAULT 1,
  `SchoolMask` int(10) unsigned NOT NULL DEFAULT 0,
  `SpellAuraOptionsId` int(10) unsigned NOT NULL DEFAULT 0,
  `SpellCastingRequirementsId` int(10) unsigned NOT NULL DEFAULT 0,
  `SpellCategoriesId` int(10) unsigned NOT NULL DEFAULT 0,
  `SpellClassOptionsId` int(10) unsigned NOT NULL DEFAULT 0,
  `SpellEquippedItemsId` int(10) unsigned NOT NULL DEFAULT 0,
  `SpellLevelsId` int(10) unsigned NOT NULL DEFAULT 0,
  `SpellTargetRestrictionsId` int(10) unsigned NOT NULL DEFAULT 0,
  `SpellInterruptsId` int(10) unsigned NOT NULL DEFAULT 0,
  `Comment` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Custom spell.dbc entries';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.spell_enchant_proc_data
DROP TABLE IF EXISTS `spell_enchant_proc_data`;
CREATE TABLE IF NOT EXISTS `spell_enchant_proc_data` (
  `entry` int(10) unsigned NOT NULL,
  `customChance` int(10) unsigned NOT NULL DEFAULT 0,
  `PPMChance` float unsigned NOT NULL DEFAULT 0,
  `procEx` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Spell enchant proc data';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.spell_group
DROP TABLE IF EXISTS `spell_group`;
CREATE TABLE IF NOT EXISTS `spell_group` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `spell_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`,`spell_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.spell_group_stack_rules
DROP TABLE IF EXISTS `spell_group_stack_rules`;
CREATE TABLE IF NOT EXISTS `spell_group_stack_rules` (
  `group_id` int(11) unsigned NOT NULL DEFAULT 0,
  `stack_rule` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.spell_learn_spell
DROP TABLE IF EXISTS `spell_learn_spell`;
CREATE TABLE IF NOT EXISTS `spell_learn_spell` (
  `entry` int(10) unsigned NOT NULL DEFAULT 0,
  `SpellID` int(10) unsigned NOT NULL DEFAULT 0,
  `Active` tinyint(3) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`entry`,`SpellID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Item System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.spell_linked_spell
DROP TABLE IF EXISTS `spell_linked_spell`;
CREATE TABLE IF NOT EXISTS `spell_linked_spell` (
  `spell_trigger` mediumint(8) NOT NULL,
  `spell_effect` mediumint(8) NOT NULL DEFAULT 0,
  `type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  UNIQUE KEY `trigger_effect_type` (`spell_trigger`,`spell_effect`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Spell System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.spell_loot_template
DROP TABLE IF EXISTS `spell_loot_template`;
CREATE TABLE IF NOT EXISTS `spell_loot_template` (
  `Entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Item` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Reference` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint(5) unsigned NOT NULL DEFAULT 1,
  `GroupId` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `MinCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `MaxCount` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Entry`,`Item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.spell_pet_auras
DROP TABLE IF EXISTS `spell_pet_auras`;
CREATE TABLE IF NOT EXISTS `spell_pet_auras` (
  `spell` mediumint(8) unsigned NOT NULL COMMENT 'dummy spell id',
  `effectId` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `pet` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'pet id; 0 = all',
  `aura` mediumint(8) unsigned NOT NULL COMMENT 'pet aura id',
  PRIMARY KEY (`spell`,`effectId`,`pet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.spell_proc
DROP TABLE IF EXISTS `spell_proc`;
CREATE TABLE IF NOT EXISTS `spell_proc` (
  `SpellId` int(11) NOT NULL DEFAULT 0,
  `SchoolMask` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `SpellFamilyName` smallint(5) unsigned NOT NULL DEFAULT 0,
  `SpellFamilyMask0` int(10) unsigned NOT NULL DEFAULT 0,
  `SpellFamilyMask1` int(10) unsigned NOT NULL DEFAULT 0,
  `SpellFamilyMask2` int(10) unsigned NOT NULL DEFAULT 0,
  `SpellFamilyMask3` int(10) unsigned NOT NULL DEFAULT 0,
  `ProcFlags` int(10) unsigned NOT NULL DEFAULT 0,
  `SpellTypeMask` int(10) unsigned NOT NULL DEFAULT 0,
  `SpellPhaseMask` int(10) unsigned NOT NULL DEFAULT 0,
  `HitMask` int(10) unsigned NOT NULL DEFAULT 0,
  `AttributesMask` int(10) unsigned NOT NULL DEFAULT 0,
  `ProcsPerMinute` float NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 0,
  `Cooldown` int(10) unsigned NOT NULL DEFAULT 0,
  `Charges` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`SpellId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.spell_required
DROP TABLE IF EXISTS `spell_required`;
CREATE TABLE IF NOT EXISTS `spell_required` (
  `spell_id` mediumint(8) NOT NULL DEFAULT 0,
  `req_spell` mediumint(8) NOT NULL DEFAULT 0,
  PRIMARY KEY (`spell_id`,`req_spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell Additinal Data';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.spell_scripts
DROP TABLE IF EXISTS `spell_scripts`;
CREATE TABLE IF NOT EXISTS `spell_scripts` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `effIndex` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `delay` int(10) unsigned NOT NULL DEFAULT 0,
  `command` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `datalong` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `datalong2` int(10) unsigned NOT NULL DEFAULT 0,
  `dataint` int(11) NOT NULL DEFAULT 0,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `z` float NOT NULL DEFAULT 0,
  `o` float NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.spell_script_names
DROP TABLE IF EXISTS `spell_script_names`;
CREATE TABLE IF NOT EXISTS `spell_script_names` (
  `spell_id` int(11) NOT NULL,
  `ScriptName` char(64) NOT NULL,
  UNIQUE KEY `spell_id` (`spell_id`,`ScriptName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.spell_target_position
DROP TABLE IF EXISTS `spell_target_position`;
CREATE TABLE IF NOT EXISTS `spell_target_position` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `EffectIndex` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `MapID` smallint(3) unsigned NOT NULL DEFAULT 0,
  `PositionX` float NOT NULL DEFAULT 0,
  `PositionY` float NOT NULL DEFAULT 0,
  `PositionZ` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`ID`,`EffectIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell System';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.spell_threat
DROP TABLE IF EXISTS `spell_threat`;
CREATE TABLE IF NOT EXISTS `spell_threat` (
  `entry` mediumint(8) unsigned NOT NULL,
  `flatMod` int(11) DEFAULT NULL,
  `pctMod` float NOT NULL DEFAULT 1 COMMENT 'threat multiplier for damage/healing',
  `apPctMod` float NOT NULL DEFAULT 0 COMMENT 'additional threat bonus from attack power',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.spell_totem_model
DROP TABLE IF EXISTS `spell_totem_model`;
CREATE TABLE IF NOT EXISTS `spell_totem_model` (
  `SpellID` int(10) unsigned NOT NULL,
  `RaceID` tinyint(3) unsigned NOT NULL,
  `DisplayID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`SpellID`,`RaceID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.terrain_swap_defaults
DROP TABLE IF EXISTS `terrain_swap_defaults`;
CREATE TABLE IF NOT EXISTS `terrain_swap_defaults` (
  `MapId` int(10) unsigned NOT NULL,
  `TerrainSwapMap` int(10) unsigned NOT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MapId`,`TerrainSwapMap`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.terrain_worldmap
DROP TABLE IF EXISTS `terrain_worldmap`;
CREATE TABLE IF NOT EXISTS `terrain_worldmap` (
  `TerrainSwapMap` int(10) unsigned NOT NULL,
  `UiMapPhaseId` int(10) unsigned NOT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TerrainSwapMap`,`UiMapPhaseId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.trainer
DROP TABLE IF EXISTS `trainer`;
CREATE TABLE IF NOT EXISTS `trainer` (
  `Id` int(10) unsigned NOT NULL DEFAULT 0,
  `Type` tinyint(2) unsigned NOT NULL DEFAULT 2,
  `Greeting` text DEFAULT NULL,
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.trainer_locale
DROP TABLE IF EXISTS `trainer_locale`;
CREATE TABLE IF NOT EXISTS `trainer_locale` (
  `Id` int(10) unsigned NOT NULL DEFAULT 0,
  `locale` varchar(4) NOT NULL,
  `Greeting_lang` text DEFAULT NULL,
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`Id`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.trainer_spell
DROP TABLE IF EXISTS `trainer_spell`;
CREATE TABLE IF NOT EXISTS `trainer_spell` (
  `TrainerId` int(10) unsigned NOT NULL DEFAULT 0,
  `SpellId` int(10) unsigned NOT NULL DEFAULT 0,
  `MoneyCost` int(10) unsigned NOT NULL DEFAULT 0,
  `ReqSkillLine` int(10) unsigned NOT NULL DEFAULT 0,
  `ReqSkillRank` int(10) unsigned NOT NULL DEFAULT 0,
  `ReqAbility1` int(10) unsigned NOT NULL DEFAULT 0,
  `ReqAbility2` int(10) unsigned NOT NULL DEFAULT 0,
  `ReqAbility3` int(10) unsigned NOT NULL DEFAULT 0,
  `ReqLevel` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(5) DEFAULT 0,
  PRIMARY KEY (`TrainerId`,`SpellId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.transports
DROP TABLE IF EXISTS `transports`;
CREATE TABLE IF NOT EXISTS `transports` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `name` text DEFAULT NULL,
  `phaseUseFlags` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `phaseid` int(10) NOT NULL DEFAULT 0,
  `phasegroup` int(10) NOT NULL DEFAULT 0,
  `ScriptName` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`guid`),
  UNIQUE KEY `idx_entry` (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Transports';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.trinity_string
DROP TABLE IF EXISTS `trinity_string`;
CREATE TABLE IF NOT EXISTS `trinity_string` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `content_default` text NOT NULL,
  `content_loc1` text DEFAULT NULL,
  `content_loc2` text DEFAULT NULL,
  `content_loc3` text DEFAULT NULL,
  `content_loc4` text DEFAULT NULL,
  `content_loc5` text DEFAULT NULL,
  `content_loc6` text DEFAULT NULL,
  `content_loc7` text DEFAULT NULL,
  `content_loc8` text DEFAULT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `trinity_string` WRITE;
/*!40000 ALTER TABLE `trinity_string` DISABLE KEYS */;
INSERT INTO `trinity_string` VALUES (1,'You should select a character or a creature.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'You should select a creature.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'[SERVER] %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'|cffff0000[Event Message]: %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'There is no help for that command',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'There is no such command',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'There is no such subcommand',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'The command %s uses the following subcommands:%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Commands available to you:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Incorrect syntax.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Your account level is: %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Active connections: %u (max: %u) Queued connections: %u (max: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Server uptime: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Player saved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'All players saved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'The following GMs are active on this server:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'There are no GMs currently logged in on this server.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Cannot do that while flying.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'Time left until shutdown/restart: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'Update time diff: %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'%s\'s flying command failed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'You are not mounted so you can\'t dismount.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Cannot do that while fighting.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'You used it recently.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'Password not changed (unknown error)!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'The password was changed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'The old password is wrong',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'Your account is now locked.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'Your account is now unlocked.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,', rank ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,' [known]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,' [learn]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,' [passive]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,' [talent]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,' [active]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,' [complete]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,' (offline)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'on',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'off',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'You are: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'visible',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'invisible',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'done',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'You',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,' <unknown> ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,'<error>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'<non-existing character>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1190,'Ticket system is disabled. You can\'t change its status.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'You must be at least level %u to enter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'You must be at least level %u and have item %s to enter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,'Hello! Ready for some training?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'Invaid item count (%u) for item %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'Mail can\'t have more %u item stacks',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,'The new passwords do not match',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,'Your password can\'t be longer than 16 characters (client limit), password not changed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,'Current Message of the day: \r\n%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,'Using World DB: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,'Using script library: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,'Using creature EventAI: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,'Online players: %u (max: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,'Up to %i expansions are allowed now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,'Global notify: ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(101,'Map: %u (%s) Zone: %u (%s) Area: %u (%s)\nPhases: %s\nX: %f Y: %f Z: %f Orientation: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(185,'grid[%u,%u]cell[%u,%u] InstanceID: %u\n ZoneX: %f ZoneY: %f\nGroundZ: %f FloorZ: %f Have height data (Map: %u VMap: %u MMap: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(102,'%s is already being teleported.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(103,'You can summon a player to your instance only if he is in your party with you as leader.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(104,'You cannot go to the player\'s instance because you are in a party now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(105,'You can go to the player\'s instance while not being in his party only if your GM mode is on.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(106,'You can not go to player %s from instance to instance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(107,'You can not summon player %s from instance to instance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(108,'You are summoning %s%s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(109,'You are being summoned by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(110,'You are teleporting %s%s to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(111,'You are being teleported by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(112,'Player (%s) does not exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(113,'Appearing at %s\'s location.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(114,'%s is appearing at your location.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(115,'Incorrect values.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(116,'No character selected.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(117,'%s is not in a group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(118,'You changed HP of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(119,'%s changed your HP to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(120,'You changed MANA of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(121,'%s changed your MANA to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(122,'You changed ENERGY of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(123,'%s changed your ENERGY to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(124,'Current energy: %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(125,'You changed rage of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(126,'%s changed your rage to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(127,'You changed level of %s to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(128,'GUID %s, faction is %u, flags is %u, npcflag is %s, dynflag is %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(129,'Wrong faction: %u (not found in factiontemplate.dbc).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(130,'You changed GUID=%s\'s Faction to %u, flags to %u, npcflag to %s, dynflag to %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(131,'You changed the spellflatid=%i, val= %i, mark =%i to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(132,'%s changed your spellflatid=%i, val= %i, mark =%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(133,'%s has access to all taxi nodes now (until logout).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(134,'%s has no more access to all taxi nodes now (only visited accessible).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(135,'%s has given you access to all taxi nodes (until logout).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(136,'%s has removed access to all taxi nodes (only visited still accessible).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(137,'You set all speeds of %s from normal to %2.2f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(138,'%s set all your speeds from normal to %2.2f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(139,'You set the speed of %s from normal to %2.2f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(140,'%s set your speed from normal to %2.2f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(141,'You set the swim speed of %s from normal to %2.2f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(142,'%s set your swim speed from normal to %2.2f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(143,'You set the backwards run speed of %s from normal to %2.2f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(144,'%s set your backwards run speed from normal to %2.2f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(145,'You set the fly speed of %s from normal to %2.2f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(146,'%s set your fly speed from normal to %2.2f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(147,'You set the size of %s to %2.2f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(148,'%s set your size to %2.2f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(149,'There is no such mount.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(150,'You give a mount to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(151,'%s gave you a mount.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(152,'USER1: %s, ADD: %s, DIF: %s\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(153,'You take all the copper from %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(154,'%s took you all of your copper.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(155,'You take %s copper from %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(156,'%s took %s copper from you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(157,'You give %s copper to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(158,'%s gave you %s copper.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(159,'You play the sound %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(160,'USER2: %s, ADD: %s, RESULT: %s\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(161,'Removed bit %u in field %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(162,'Set bit %u in field %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(163,'Teleport location table is empty!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(164,'Teleport location not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(165,'Requires search parameter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(166,'There are no teleport locations matching your request.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(168,'The following locations were found:\n%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(169,'Mail sent to %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(170,'You tried to play the sound %u, but it does not exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(171,'You can\'t teleport yourself to yourself!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(172,'server console command',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(173,'You changed the runic power of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(174,'%s changed your runic power to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(175,'Liquid level: %f, ground: %f, type: %u, flags %u, status: %d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(200,'No selection.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(201,'Object %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(202,'The name was too long by %i characters.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(203,'Error, a name can only contain the characters A-Z and a-z.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(204,'The subname was too long by %i characters.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(205,'Not yet implemented',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(206,'Item \'%u\' \'%s\' added to list with maxcount \'%u\' and incrtime \'%u\' and extendedcost \'%u\'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(207,'Item \'%u\' (type %u) not found in database.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(208,'Item \'%u\' \'%s\' deleted from vendor list',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(209,'Item \'%u\' not found in vendor list.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(211,'Spells of %s reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(212,'Spells of %s will reset at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(213,'Talents of %s reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(214,'Talents of %s will reset at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(215,'Your spells have been reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(216,'Your talents have been reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(217,'Unknown case \'%s\' for .resetall command. Type full correct case name.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(218,'Spells will be reset for all players at login. Relogging is strongly recommended!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(219,'Talents will be reset for all players at login. Relogging is strongly recommended!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(220,'Creature (GUID: %u) No waypoint found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(221,'Creature (GUID: %u) Last waypoint not found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(222,'Creature (%s) No waypoint found - used \'wpguid\'. Now trying to find it by its position...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(223,'Creature (%s) No waypoints found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(224,'Selected creature is ignored - provided GUID is used',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(225,'Creature (GUID: %u) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(226,'You must select a visual waypoint.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(227,'No visual waypoints found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(228,'Could not create visual waypoint with creatureID: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(229,'All visual waypoints removed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(230,'Could not create waypoint-creature with ID: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(231,'No GUID provided.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(232,'No waypoint number provided.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(233,'Argument required for \'%s\'.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(234,'Waypoint %i added to GUID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(235,'Waypoint %d added.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(236,'Waypoint changed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(237,'Waypoint %s modified.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(238,'WP export successfull.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(239,'No waypoints found in the database.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(240,'File imported.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(241,'Waypoint removed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(242,'Warning: Could not delete WP with ID: %s from the world',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(243,'This happens if the waypoint is too far away from your char.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(244,'The WP is deleted from the database, but not from the world here.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(245,'They will disappear after a server restart.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(246,'Waypoint %d: Info for creature: %s, GUID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(247,'Waittime: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(248,'Model %d: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(249,'Emote: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(250,'Spell: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(251,'Text%d (ID: %i): %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(252,'AIScript: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(253,'Forced rename for player %s will be requested at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(254,'Forced rename for player %s (%s) will be requested at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(255,'Waypoint-Creature (GUID: %u) Not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(256,'Could not find NPC...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(257,'Creature movement type set to \'%s\', waypoints removed (if any).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(258,'Creature movement type set to \'%s\', waypoints were not removed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(259,'Incorrect value, use on or off',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(260,'Value saved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(261,'Value saved, you may need to rejoin or clean your client cache.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(262,'Areatrigger ID %u not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(263,'Invalid target map or coordinates (X: %f Y: %f MapId: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(264,'Invalid zone coordinates (X: %f Y: %f AreaId: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(265,'Zone %u (%s) is part of instanceable map %u (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(266,'Nothing found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(267,'Object not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(268,'Creature not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(269,'Warning: Mob found more than once - you will be teleported to the first one found in DB.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(270,'Creature Removed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(271,'Creature moved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(272,'Creature (GUID:%s) must be on the same map as player!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(273,'Game Object (GUID: %s) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(274,'Game Object (GUID: %s) has a nonexistent owner %s, can\'t be deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(275,'Game Object (%s) removed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(276,'Game Object |cffffffff|Hgameobject:%s|h[%s]|h|r (%s) turned to %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(277,'Game Object |cffffffff|Hgameobject:%s|h[%s]|h|r (%s) moved',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(278,'You must select a vendor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(279,'You must send id for item',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(280,'Vendor has too many items (max 128)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(281,'You can\'t kick yourself, log out instead.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(282,'Player %s kicked.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(284,'Accepting Whisper: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(285,'Accepting Whisper: ON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(286,'Accepting Whisper: OFF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(287,'Creature (GUID: %s) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(288,'Tickets count: %i show new tickets: %s\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(289,'New ticket from %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(290,'Ticket of %s (Last updated: %s):\n%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(291,'Show new ticket: ON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(292,'Show new ticket: OFF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(293,'Ticket %i doesn\'t exist',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(294,'All tickets deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(295,'Character %s ticket deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(296,'Ticket deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(297,'Spawn distance changed to: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(298,'Spawn time changed to: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(299,'%s\'s honor points were set to %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(301,'You have disabled %s\'s chat for %u minutes. Reason: %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(302,'Player\'s chat is already enabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(303,'Your chat has been enabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(304,'You have enabled %s\'s chat.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(305,'Faction %s (%u) reputation of %s was set to %5d!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(306,'The arena points of %s was set to %u!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(307,'No faction found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(308,'Faction %u unknown!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(309,'Invalid parameter %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(310,'delta must be between 0 and %d (inclusive)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(311,'%d - |cffffffff|Hfaction:%d|h[%s]|h|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(312,' [visible]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(313,' [at war]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(314,' [peace forced]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(315,' [hidden]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(316,' [invisible forced]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(317,' [inactive]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(318,'Hated',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(319,'Hostile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(320,'Unfriendly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(321,'Neutral',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(322,'Friendly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(323,'Honored',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(324,'Revered',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(325,'Exalted',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(326,'Faction %s (%u) can\'t have reputation.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(327,' [no reputation]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(328,'Characters at account %s (Id: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(329,'  %s (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(330,'No players found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(331,'Extended item cost %u does not exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(332,'GM mode is ON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(333,'GM mode is OFF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(334,'GM Chat Badge is ON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(335,'GM Chat Badge is OFF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(336,'You repair all of %s\'s items.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(337,'All your items were repaired by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(338,'You set waterwalk mode %s for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(339,'Your waterwalk mode %s by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(340,'%s is now following you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(341,'%s is not following you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(342,'%s is now not following you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(343,'Creature (Entry: %u) cannot be tamed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(344,'You already have a pet.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(345,'Customization for Player %s will be requested at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(346,'Customization for Player %s (%s) will be requested at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(347,'TaxiNode ID %u not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(348,'Game Object (Entry: %u) contains invalid data and can\'t be spawned.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(400,'|cffff0000[System Message]:|rScripts reloaded',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(401,'Security level of account %s changed to %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(402,'%s changed your security level to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(403,'Your security level is too low for this action.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(404,'Creature movement disabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(405,'Creature movement enabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(406,'Weather can\'t be changed for this zone.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(407,'Weather system disabled at server.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(408,'%s is banned for %s. Reason: %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(409,'%s is banned permanently for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(410,'%s %s not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(411,'%s unbanned.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(412,'There was an error removing the ban on %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(413,'Account %s does not exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(414,'There is no such character.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(415,'There is no such IP in banlist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(416,'Account %s has never been banned.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(417,'Ban history for account %s:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(418,'Ban Date: %s Bantime: %s Still active: %s  Reason: %s Set by: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(419,'Inf.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(420,'Never',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(421,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(422,'No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(423,'IP: %s\nBan Date: %s\nUnban Date: %s\nRemaining: %s\nReason: %s\nSet by: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(424,'There is no matching IPban.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(425,'There is no matching account.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(426,'There is no banned account owning a character matching this part.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(427,'The following IPs match your pattern:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(428,'The following accounts match your query:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(429,'You learned many spells/skills.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(430,'You learned all spells for class.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(431,'You learned all talents for class.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(432,'You learned all languages.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(433,'You learned all crafts, skills and recipes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(434,'Could not find \'%s\'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(435,'Invalid item id: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(436,'No items found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(437,'Invalid gameobject id: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(438,'Found items %u: %u ( inventory %u mail %u auction %u guild %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(439,'Found gameobjects %u: %u ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(440,'Invalid creature id: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(441,'Found creatures %u: %u ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(442,'No area found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(443,'No item sets found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(444,'No skills found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(445,'No spells found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(446,'No quests found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(447,'No creatures found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(448,'No gameobjects found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(449,'Graveyard #%u doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(450,'Graveyard #%u is already linked to zone #%u (current).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(451,'Graveyard #%u linked to zone #%u (current).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(452,'Graveyard #%u can not be linked to subzone or nonexistent zone #%u (internal error).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(454,'No faction found in Graveyard with id= #%u, please update your database.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(455,'Invalid team, please update your database.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(456,'any',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(457,'alliance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(458,'horde',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(459,'Graveyard #%u (faction: %s) is nearest from linked to zone #%u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(460,'Zone #%u doesn\'t have linked graveyards.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(461,'Zone #%u doesn\'t have linked graveyards for faction: %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(462,'Teleport location already exists!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(463,'Teleport location added.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(464,'Teleport location NOT added: database error.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(465,'Teleport location deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(466,'No taxinodes found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(467,'Target unit has %s auras:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(468,'id: %u %s effmask: %u charges: %d stack: %d slot %d duration: %d maxduration: %d %s %s caster: %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(469,'Target unit has %s auras of type %u:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(470,'id: %u eff: %u amount: %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(471,'Quest %u not found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(472,'Quest %u is started from an item. Add the item to your inventory and start the quest normally: .additem %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(473,'Quest removed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(474,' [rewarded]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(475,' [complete]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(476,' [active]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(477,'%s\'s Fly Mode %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(478,'Opcode %u sent to %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(479,'Character loaded successfully!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(480,'Failed to load the character!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(481,'Character dumped successfully!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(482,'Character dump failed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(483,'Spell %u broken and not allowed to cast or learn!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(484,'Skill %u (%s) for player %s set to %u and current maximum set to %u (without permanent (talent) bonuses).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(485,'Player %s must have the skill %u (%s) before using this command.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(486,'Invalid skill id (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(487,'You learned default GM spells/skills.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(488,'You already know that spell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(489,'Target(%s) already knows that spell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(490,'%s doesn\'t know that spell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(491,'You have already unlearnt that spell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(492,'All spell cooldowns removed for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(493,'Spell %u cooldown removed for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(494,'Command : Additem, itemId = %u, amount = %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(495,'Command : Additemset, itemsetId = %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(496,'Removed itemID = %u, amount = %i from %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(497,'Cannot create item \'%u\' (amount: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(498,'You need to provide a guild name!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(499,'Player not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(500,'That player is already in a guild.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(501,'The guild was NOT created. Check if that guild already exists.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(502,'No items from the itemset \'%u\' were found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(503,'The distance is: (3D) %f (2D) %f (Exact 3D) %f (Exact 2D) %f yards.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(504,'Item \'%i\' \'%s\' Item Slot %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(505,'Item \'%i\' doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(506,'Item \'%i\' \'%s\' added to slot %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(507,'Item save failed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(508,'%s - owner: %s (%s account: %u) %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(509,'%s - sender: %s (guid: %s account: %u) receiver: %s (guid: %s account: %u) %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(510,'%s - owner: %s (%s account: %u) %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(511,'Wrong link type!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(512,'%u - |cffffffff|Hitem:%u:0:0:0:0:0:0:0:0|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(513,'%u - |cffffffff|Hquest:%u:%i|h[%s]|h|r %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(514,'%u - |cffffffff|Hcreature_entry:%u|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(515,'%s - |cffffffff|Hcreature:%s|h[%s X:%f Y:%f Z:%f MapId:%u]|h|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(516,'%u - |cffffffff|Hgameobject_entry:%u|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(517,'%s (Entry: %u) - |cffffffff|Hgameobject:%s|h[%s X:%f Y:%f Z:%f MapId:%u]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(518,'%u - |cffffffff|Hitemset:%u|h[%s %s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(519,'|cffffffff|Htele:%s|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(520,'%d - |cffffffff|Hspell:%d|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(521,'%u - |cffffffff|Hskill:%u|h[%s %s]|h|r %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(522,'Game Object (Entry: %u) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(523,'>> Game Object %s (GUID: %u) at %f %f %f. Orientation %f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(524,'Selected object:\n|cffffffff|Hgameobject:%s|h[%s]|h|r GUID: %s ID: %u\nX: %f Y: %f Z: %f MapId: %u\nOrientation: %f\nPhaseId %u\nPhaseGroup %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(525,'>> Add Game Object \'%u\' (%s) (GUID: %s) added at \'%f %f %f\'.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(526,'%s (%s) movement generators stack:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(527,'   Idle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(528,'   Random',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(529,'   Waypoint',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(530,'   Animal random',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(531,'   Confused',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(532,'   Targeted to player %s (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(533,'   Targeted to creature %s (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(534,'   Targeted to <NULL>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(535,'   Home movement to (X:%f Y:%f Z:%f)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(536,'   Home movement used for player?!?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(537,'   Taxi flight',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(538,'   Unknown movement generator (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(539,'NPC currently selected by player: DB GUID: %s, %s. Faction: %u. npcFlags: %s. Entry: %u. DisplayID: %u (Native: %u).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(540,'Level: %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(541,'Health (base): %u. (max): %s. (current): %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(542,'Dynamic Flags: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(543,'Loot: %u Pickpocket: %u Skinning: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(544,'Position: %f %f %f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(545,'* is vendor (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(546,'* is trainer (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(547,'InstanceID: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(716,'│ Last Login: %s (Failed Logins: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(749,'│ OS: %s - Latency: %u ms',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(752,'│ Last IP: %s (Locked: %s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(551,'%s has explored all zones now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(552,'%s no longer has any explored zones.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(553,'%s has explored all zones for you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(554,'%s has hidden all zones from you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(555,'SetData performed on [%s, name: %s] Field: %u, Data: %u, with %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(557,'%s leveled you up to (%u).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(558,'%s leveled you down to (%u).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(559,'%s has reset your level progress.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(560,'The area has been set as explored.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(561,'The area has been set as not explored.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(562,'%s updateIndex: %u, value: %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(563,'You change %s UpdateIndex: %u value to %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(564,'The value index %u is too big for %s (count: %u).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(565,'Set %u uint32 Value:[OPCODE]:%u [VALUE]:%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(566,'You set %s field: %u to uint32 value: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(567,'Set %u float Value:[OPCODE]:%u [VALUE]:%f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(568,'You set %s field: %u to float value: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(569,'Get %u uint32 Value:[OPCODE]:%u [VALUE]:%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(570,'The uint32 value of %s in %u is: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(571,'Get %u float Value:[OPCODE]:%u [VALUE]:%f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(572,'The float of %s value in %u is: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(573,'.Set32Bit:[OPCODE]:%u [VALUE]:%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(574,'You set Bit of Field:%u to Value: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(575,'.Mod32Value:[OPCODE]:%u [VALUE]:%i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(576,'You modified the value of Field:%u to Value: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(577,'You are now invisible.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(578,'You are now visible.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(579,'The selected player or creature does not have a victim.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(580,'Player %s has learned all default spells for race/class and spell rewards from completed quests.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(581,'Found nearby gameobjects (distance %f): %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(582,'SpawnTime: Full:%s Remaining:%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(583,'%u - |cffffffff|Hgameevent:%u|h[%s]|h|r%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(584,'No event found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(585,'The event does not exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(586,'Event %u: %s%s\nStart: %s End: %s Occurence: %s Length: %s\nNext state change: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(587,'The event %u is already active.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(588,'The event %u is not active.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(589,'   Point movement to (X:%f Y:%f Z:%f)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(590,'   Fear movement',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(591,'   Distract movement',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(592,'You have learned all spells from the craft: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(593,'Currently Banned Accounts:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(594,'|    Account    |   BanDate    |   UnbanDate  |  Banned By    |   Ban Reason  |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(595,'Currently Banned IPs:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(596,'|      IP       |   BanDate    |   UnbanDate  |  Banned By    |   Ban Reason  |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(597,'Current gamemasters:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(598,'|    Account    |  GM  |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(599,'No gamemasters.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(705,'You must wait %s before speaking again.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(706,'Item(s) can not be equipped or stored in the inventory due to a problem.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(707,'%s does not wish to be disturbed: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(708,'%s is Away from Keyboard: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(709,'Do not Disturb',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(710,'Away from Keyboard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(711,'Queue status for %s (Lvl: %u to %u)\nQueued alliances: %u (Need at least %u more)\nQueued hordes: %u (Need at least %u more)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(712,'|cffff0000[BG Queue Announcer]:|r %s -- [%u-%u] A: %u/%u, H: %u/%u|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(713,'You must be level %u to join an arena team!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(715,'You don\'t meet Battleground level requirements',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(717,'|cffff0000[BG Queue Announcer]:|r %s -- [%u-%u] Started!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(718,'|cffff0000[Arena Queue Announcer]:|r %s -- Joined : %ux%u : %u|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(719,'|cffff0000[Arena Queue Announcer]:|r %s -- Exited : %ux%u : %u|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(720,'Your group is too large for this battleground. Please regroup to join.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(721,'Your group is too large for this arena. Please regroup to join.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(722,'Your group has members not in your arena team. Please regroup to join.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(723,'Your group does not have enough players to join this match.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(727,'Your group has an offline member. Please remove him before joining.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(728,'Your group has players from the opposing faction. You can\'t join the battleground as a group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(729,'Your group has players from different battleground brakets. You can\'t join as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(730,'Someone in your party is already in this battleground queue. (S)he must leave it before joining as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(731,'Someone in your party is Deserter. You can\'t join as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(732,'Someone in your party is already in three battleground queues. You cannot join as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(733,'You cannot teleport to a battleground or arena map.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(734,'You cannot summon players to a battleground or arena map.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(735,'You must be in GM mode to teleport to a player in a battleground.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(736,'You cannot teleport to a battleground from another battleground. Please leave the current battleground first.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(737,'Arenas are set to 1v1 for debugging. So, don\'t join as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(738,'Arenas are set to normal playercount.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(739,'Battlegrounds are set to 1v0 for debugging.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(740,'Battlegrounds are set to normal playercount.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(750,'Not enough players. This game will close in %u mins.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(751,'Not enough players. This game will close in %u seconds.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(356,'Current selected title for player %s is now reset to not known.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(355,'Title %u (%s) set as current selected title for player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(354,'Title %u (%s) removed from known titles list for player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(350,'%u (idx:%u) - [%s %s] %s %s ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(351,'No titles found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(352,'Invalid title id: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(353,'Title %u (%s) added to known titles list for player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(349,'%u (idx:%u) - |cffffffff|Htitle:%u|h[%s %s]|h|r %s %s ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(785,'Arena testing turned %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(786,'|cffff0000[Automatic]:|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(787,'|cffffff00[|c1f40af20Announce by|r |cffff0000%s|cffffff00]:|r %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(800,'Invalid name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(801,'You do not have enough gold',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(802,'You do not have enough free slots',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(803,'Your partner does not have enough free bag slots',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(804,'You do not have permission to perform that function',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(805,'Unknown language',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(806,'You don\'t know that language',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(807,'Please provide character name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(808,'Player %s not found or offline',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(809,'Account for character %s not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(811,'Guild Master',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(812,'Officer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(813,'Veteran',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(814,'Member',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(815,'Initiate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(816,'Warning: You\'ve entered a no-fly zone and are about to be dismounted!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1000,'Exiting daemon...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1001,'Account deleted: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1002,'The account %s was NOT deleted (the SQL file format was probably updated).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1003,'The account %s was NOT deleted (unknown error).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1004,'Account created: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1005,'An account name can NOT be longer than 16 characters (client limit). The account was NOT created.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1006,'An account with this name already exists!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1007,'The account %s was NOT created (the SQL file format was probably updated).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1008,'The account %s was NOT created (unknown error).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1009,'Player %s (%s) Account %s (Id: %u) deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1012,'-==================================================================-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1011,'|<Error>        | %20s |<Error>          |<Er>| <Error>   |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1010,'-[         Account][   Character][             IP][Map][Zone][Exp][GMLev]-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1014,'No online players.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1100,'The account %s (Id: %u) is allowed to use up to %u expansion(s) now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1101,'Message of the day changed to:\r\n%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1102,'Message sent to %s: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1103,'%u - %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1104,'%u - %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1105,'%u - %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1106,'%u - %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1107,'%u - %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1108,'%u - %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1109,'%u - %s %s %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1110,'%s - %s X:%f Y:%f Z:%f MapId:%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1111,'%s - %s X:%f Y:%f Z:%f MapId:%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1112,'Failed to open file: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1113,'The account %s (%u) has reached maximum amount of allowed characters (client limitation).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1114,'The dump file contains damaged data!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1115,'Invalid character name!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1116,'Invalid character guid!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1117,'The character guid %s is already in use!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1118,'%s - guild: %s (%s) %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1119,'You must use male or female as gender.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1120,'You changed the gender of %s to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1121,'Your gender was changed to %s by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1122,'(%u/%u +perm %u +temp %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1123,'No pet found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1124,'Wrong pet type.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1125,'Your pet has learned all talents.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1126,'Your pet talents have been reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1127,'The talents of %s\'s pet were reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1128,'%u - |cffffffff|Htaxinode:%u|h[%s %s]|h|r (Map:%u X:%f Y:%f Z:%f)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1129,'%u - %s %s (Map:%u X:%f Y:%f Z:%f)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1200,'You try to view cinematic %u but it doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1201,'You try to view movie %u but it doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2003,'|cff00ff00Closed by|r:|cff00ccff %s|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2004,'|cff00ff00Deleted by|r:|cff00ccff %s|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2005,'Ticket not found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2006,'Please close ticket before deleting it permanently.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2007,'Ticket %u is already assigned to someone else.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2009,'Showing list of open tickets.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2011,'Showing list of closed tickets.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2012,'Invalid name specified. The name must be a name of an online Game Master.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2013,'This ticket is already assigned to yourself. To unassign use .ticket unassign %u and then reassign.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2014,'Ticket %u is not assigned, you cannot unassign it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2015,'You cannot unassign tickets from staff members with a higher security level than yourself.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2016,'Cannot close ticket %u, it is assigned to another GM.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2023,'|cff00ff00GM Comment|r: [%s]|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2018,'|cff00ff00Created by|r:|cff00ccff %s|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2020,'|cff00ff00Assigned to|r:|cff00ccff %s|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2021,'|cff00ff00Unassigned by|r:|cff00ccff %s|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2022,'|cff00ff00Ticket Message|r: [%s]|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2017,'|cffaaffaaTicket|r:|cffaaccff %d.|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2025,'|cff00ff00Created|r:|cff00ccff %s ago|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5000,'You froze player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5001,'It might be amusing, but no... you cant freeze yourself.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5002,'Invalid input, check the name of the target.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5003,'You unfroze player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5004,'There are no frozen players.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5005,'Following players are frozen on the server:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5006,'| %s - Status: Permanently frozen',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11015,'This creature does not have an active CreatureAI assigned to it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5009,'Sound %u Played to server',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5010,'linkGUID: %u, Entry: %u (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5011,'You can\'t teleport yourself to yourself!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5012,'No maps found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5013,'[Continent]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5014,'[Instance]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5015,'[Battleground]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5016,'[Arena]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5017,'[Raid]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6613,'|cfff00000[GM Announcement]: %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6614,'Notification to GM\'s - ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6615,'|cffffff00[|c1f40af20GM Announce by|r |cffff0000%s|cffffff00]:|r %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6616,'Silence is ON for %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7523,'WORLD: Denying connections.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7524,'WORLD: Accepting connections.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10049,'The Horde has collected 200 silithyst!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10050,'The Alliance has collected 200 silithyst!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10051,'Take me to Northpass Tower.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10052,'Take me to Eastwall Tower.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10053,'Take me to Crown Guard Tower.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10054,'Give me the flag, I\'ll take it to the central beacon for the glory of the Alliance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10055,'Give me the flag, I\'ll take it to the central beacon for the glory of the Horde!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11000,'|cffffff00[|c00077766Autobroadcast|cffffff00]: |cFFF222FF%s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11001,'You have not chosen -1 or the current realmID that you are on.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5020,'PhaseID: %u, PhaseGroup: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5021,'Armor: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5022,'Granting ownership to first person that joins the channel \"%s\": Enabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5008,'This instance is closed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5024,'Entry: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5025,'Type: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5026,'DisplayID: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5027,'Name: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6604,'You cannot say, yell or emote until you become level %d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6605,'You cannot whisper until you become level %d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6606,'You cannot write to channels until you become level %d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6607,'You cannot use auction until you become level %d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6608,'You cannot write tickets until you become level %d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6609,'You cannot trade until you become level %d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6610,'You cannot trade with characters lower than level %d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6611,'You cannot send mail until you become level %d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6612,'You cannot send mail to characters lower than level %d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2024,'|cff00ccff%s|r |cff00ff00Added comment|r: [%s]|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1013,'-[%16s][%12s][%15s][%3d][%4d][%d][%d]-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1015,'-======================== Characters Online =======================-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(747,'This Battleground has been disabled. You can\'t join the queue.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(748,'Arenas have been disabled. You can\'t join the queue.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(210,'Item \'%u\' (with extended cost %u) is already in the vendor list.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(817,'Entry %u not found in creature_template table.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(818,'Entry %u not found in sCreatureStorage. Possible new line in creature_template, but you can not add new creatures without restarting. Only modifing is allowed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(879,'└ Registration Email: %s - Email: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(871,'│ Level: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11009,'Flags Extra: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1029,'Account name must contain the @ symbol.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11008,'InhabitType: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,'One or more parameters contain incorrect values.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1016,'| GUID       | Name                 | Account                      | Delete Date         |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1017,'| %80s | %20s | %15s (%10u) | %19s |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1018,'==========================================================================================',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1019,'No characters found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1020,'Restoring the following characters:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1021,'Deleting the following characters:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1022,'ERROR: You can only assign a new name if you have only selected a single character!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1023,'The character \'%s\' (GUID: %s Account %u) can NOT be restored: The account does not exist!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1024,'The character \'%s\' (GUID: %s Account %u) can NOT be restored: The account character list is full!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1025,'The character \'%s\' (GUID: %s Account %u) can NOT be restored: The name is already in use!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1026,'%s Name: %s Account: %s (%u) Date: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5028,'Lootid: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1130,'Unable to dump deleted characters, aborting.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5029,'Result limit reached (max results: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1131,'The following characters match your query:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1132,'Currently Banned Characters:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1133,'|   Character   |   BanDate    |   UnbanDate  |  Banned By    |   Ban Reason  |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1202,'Areatrigger debugging turned on.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1203,'Areatrigger debugging turned off.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1999,'You have left areatrigger %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(819,'City',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1134,'Sending tickets is allowed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1135,'Sending tickets is not allowed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1027,'SQL driver query logging enabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1028,'SQL driver query logging disabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5023,'Granting ownership to first person that joins the channel \"%s\": Disabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1204,'You have entered areatrigger %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(556,'Found nearby creatures (distance %f): %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(283,'You have disabled %s\'s chat for %u minutes, effective at the player\'s next login. Reason: %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(300,'Your chat has been disabled for %u minutes. By: %s ,Reason: %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1136,'Character %s has never been banned!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1137,'Dev mode is ON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1138,'Dev mode is OFF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2027,'There are pending open tickets, please close them first!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2028,'All closed tickets were deleted and counter is reseted to |cffff00ff 1|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5031,'AIName: %s ScriptName: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1139,'   Follow player %s (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1140,'   Follow creature %s (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1141,'   Follow <NULL>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1142,'   Effect movement',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1143,'Target\'s moveFlags: %u, moveFlagsExtra: %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1144,'Target\'s moveFlags set to: %u, moveFlagsExtra to: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5032,'No battleground found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5033,'No achievement criteria found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5034,'No outdoor PvP found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(357,'Cheat Command Status:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(358,'Godmode: %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(359,'Casttime: %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(360,'Cooldown: %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(361,'Power: %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(362,'Waterwalk: %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(177,'Gameobject %s (GUID: %s) damaged %i (actual health: %u).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(176,'Invalid gameobject type, must be a destructible building.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(178,'|cff0066FFPhaseMgr: Success (entry: %u) - added %s %u to the players phase.|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(179,'|cffFF0000PhaseMgr: Condition for phase %u (entry: %u, zoneId: %u) failed.|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(180,'|cffFF0000PhaseMgr: Condition for phase %u (entry: %u, zoneId: %u) has last phasemask flag. Skipped other definitions.|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(181,'|cff6699FFPhaseMgr: The player gets phasemask %u through definitions, %u through phasing auras, and phase %u through custom phase.|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(182,'|cff0099FFPhaseMgr: The player has phasemask %u (real: %u).|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9980,'Player name: %s, State: %s, Dungeons: %u (%s), Roles: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9981,'LfgGroup?: %u, State: %s, Dungeon: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9982,'Not in group',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9983,'Queues cleared',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9984,'Lfg options: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9985,'Lfg options changed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9986,'None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9987,'Role check',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9988,'Queued',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9989,'Proposal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9990,'Vote kick',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9991,'In dungeon',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9992,'Finished dungeon',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9993,'Raid browser',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9994,'Tank',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9995,'Healer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9996,'Dps',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9997,'Leader',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9998,'None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9999,'Error',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1145,'%s is already in a group!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1146,'%s joined %s\'s group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1147,'%s is not in a group!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1148,'Group is full!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1150,'Name: %s (%s), Zone: %s, Phases: [%s], %s, Flags: %s, Roles: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1149,'Group type: %s and consists of %s players.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(550,'├─ Muted: (Reason: %s, Time: %s, By: %s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,'Wrong parameter, id: %u does not exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,'Wrong parameter realmId: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11007,'Server: %s has banned %s permanetly, reason: %s','','','','','','','',''),(11006,'Server: %s has banned %s for %s, reason: %s','','','','','','','',''),(70,'Empty List',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,'- %u (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11005,'Server: %s has banned character %s permanetly, reason: %s','','','','','','','',''),(11004,'Server: %s has banned character %s for %s, reason: %s','','','','','','','',''),(11003,'Server: %s has muted %s for %u minutes, reason: %s','','','','','','','',''),(11002,'Server: %s has kicked %s, reason: %s','','','','','','','',''),(69,'Linked permissions:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,'Couldn\'t grant permission %u (%s) realmId %d. Account %u (%s) already has that permission',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(73,'Couldn\'t grant permission %u (%s) realmId %d. Account %u (%s) has that permission in deny list',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(74,'Granted permission %u (%s) realmId %d to account %u (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,'Couldn\'t deny permission %u (%s) realmId %d. Account %u (%s) already has that permission',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(76,'Couldn\'t deny permission %u (%s) realmId %d. Account %u (%s) has that permission in deny list',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,'Denied permission %u (%s) realmId %d to account %u (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(78,'Revoked permission %u (%s) realmId %d to account %u (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(79,'Couldn\'t revoke permission %u (%s) realmId %d. Account %u (%s) does not have that permission',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,'Account %u (%s) granted permissions:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,'Account %u (%s) denied permissions:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(92,'Account %u (%s) global permissions:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,'Account %u (%s) inherited permissions by sec level %u:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,'Permissions:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(714,'│ Account: %s (ID: %u), GMLevel: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5036,'EquipmentId: %u (Original: %i).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(820,'* has gossip (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(821,'* is quest giver (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(822,'* is class trainer (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(823,'* is profession trainer(%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(824,'* is ammo vendor (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(825,'* is food vendor(%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(826,'* is poison vendor (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(827,'* is reagent vendor (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(828,'* can repair (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(829,'* is flight master (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(830,'* is spirit healer (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(831,'* is spirit guide (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(832,'* is innkeeper (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(833,'* is banker (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(834,'* is petitioner (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(835,'* is tabard designer (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(836,'* is battle master (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(837,'* is auctioneer (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(838,'* is stable master (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(839,'* is guild banker (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(840,'* has spell click (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(841,'* is mailbox (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(842,'* is player vehicle (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(363,'Player %s cannot whisper you any longer.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1151,'Mail List Info: # of mails: %u, Player: %s (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1152,'Mail Id: %u Title: \"%s\" Money: %ug%us%uc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1153,'Sender: %s(%s), Receiver: %s(%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1154,'Time deliver: %s, Time expire: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1155,'Item: %s[Entry:%u Guid:%u Count:%u]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1156,'Mail List Info: No mail found for this character.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20071,'Guide me to the Sunken Ring Graveyard.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20072,'Guide me to the Broken Temple Graveyard.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20074,'Guide me to the Eastspark Graveyard.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20073,'Guide me to the Westspark Graveyard.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20070,'Guide me to the Fortress Graveyard.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20075,'Guide me back to the Horde landing camp.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20076,'Guide me back to the Alliance landing camp.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20077,'Queue for Wintergrasp.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(96,'The guild name \'%s\' is already taken',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(97,'Changed guild name \'%s\' to \'%s\'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(98,'\'%s\' already exists as character name, choose another one',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(99,'Player \'%s\' forced rename to \'%s\'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(167,'This name is reserved, choose another one',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(843,'│ Level: %u (%u/%u XP (%u XP left))',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(844,'│ Race: %s %s, %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(845,'│ Alive ?: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(846,'│ Phases: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(847,'│ Money: %ug%us%uc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(848,'│ Map: %s, Area: %s, Zone: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(849,'│ Guild: %s (ID: %s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(850,'├─ Rank: %s, ID: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(851,'├─ Note: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(852,'├─ O. Note: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(853,'│ Played time: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(855,'Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(856,'Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(183,'|cff0099FFPhaseMgr: Report for player: %s, zoneId: %u, level: %u, team: %u, phaseupdateflag: %u|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(184,'|cff663399PhaseMgr: There are no definitions defined for zoneId %u.|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(857,'Arena team [%u] not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(858,'There is already an arena team named \"%s\"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(859,'%s is already in an arena team of that size',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(860,'Arena Team In Combat',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(861,'Arena with name: \"%s\" or silmilar not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(862,'[%s] not member of the team \"%s\"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(863,'[%s] already capitan in the team \"%s\"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(864,'New ArenaTeam created [Name: \"%s\"][Id: %u][Type: %u][Captain: %s]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(865,'Arena team Name: \"%s\"[Id: %u] disbanded',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(866,'Arena team [Id: %u] change from \"%s\" to \"%s\"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(867,'Arena team Name: \"%s\"[Id: %u] change capitan from[%s] to [%s]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(868,'Arena team: \"%s\"[%u] - Rating: %u - Type: %ux%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(869,'Name:\"%s\"[%s] - PR: %u - %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(870,'|\"%s\"[ID:%u](%ux%u)|',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(854,'│ Mails: %d Read/%u Total',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5037,'MechanicImmuneMask: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5038,'Unit Flags: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(549,'├─ Banned: (Type: %s, Reason: %s, Time: %s, By: %s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(548,'│ GM Mode active, Phase: -1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(872,'Entered email is not equal to registration email, check input',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(873,'The new emails do not match',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(874,'The email was changed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(875,'Your email can\'t be longer than 64 characters, email not changed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(876,'Email not changed (unknown error)!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(877,'Email change unnecessary, new email is equal to old email',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(878,'Your email is: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(453,'│Player %s %s (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(880,'Security Level: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(881,'An email address is required to change your password.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1157,'All configs are reloaded from the configuration file(s).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1158,'==========================================================',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1159,'|--------------------------------------------------------|',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1160,'|            | Alliance |  Horde   | Neutral  |  Total   |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1161,'          Alliance/Horde/Neutral/Total',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1162,'| %-10s | %8u | %8u | %8u | %8u |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1163,'%-10s = %6u / %6u / %6u / %6u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1164,'Count',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1165,'Item Ratio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1166,'|            | Alliance |   Horde  | Neutral  |  Amount  |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1167,'          Alliance/Horde/Neutral/Amount',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1168,'Gray',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1169,'White',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1170,'Green',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1171,'Blue',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1172,'Purple',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1173,'Orange',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1174,'Yellow',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1175,'Amount of %s items is set to %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1176,'Items ratio for %s is set to %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1177,'Displaying Guild Details for %s (Id: %s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1178,'| Guild Master: %s (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1179,'| Guild Creation Date: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1180,'| Guild Members: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1181,'| Guild Bank: %s gold',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1182,'| Guild MOTD: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1183,'| Guild Information: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1184,'| Guild Level: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5030,'<unauthorized>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5035,'No reason given.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5039,'Console',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5040,'Character',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5041,'Permanently',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5042,'You are outdoors.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5043,'You are indoors.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5044,'no VMAP available for area info',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5045,'Map: %u | ID: %u | perm: %s | extended: %s | diff: %d | canReset: %s | TTR: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5046,'Player binds: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5047,'Group binds: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5048,'Unbinding map: %u inst: %u perm: %s diff: %d canReset: %s TTR: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5049,'Instances unbound: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5050,'Instances loaded: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5051,'Players in instances: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5052,'Instance saves: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5053,'Players bound: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5054,'Groups bound: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5055,'Map is not a dungeon.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5056,'Map has no instance data.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5019,'| %s - Status: %d seconds left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5057,'Boss id %u state is now set to %i (%s).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5059,'Mutes for account: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5060,'No mutes for account: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5061,'Mute Date: %20s Mutetime: %10u mins. Reason: %s Set by: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1185,'Battle.net account %s was linked with game account %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1186,'Battle.net account %s or game account %s does not exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1187,'Game account %s is already linked with a battle.net account.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1188,'Game account %s had its battle.net account link removed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1189,'Game account %s is not linked to any battle.net account.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(80,'BattleGround victories in the last 7 days\nAlliance: %d\nHorde: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,'BattleGround scores storing is disabled!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5058,'Boss id %u state is %i (%s).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(364,'Taxinodes: %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(186,'TransMapID: %i TransOffsetX: %f TransOffsetY: %f TransOffsetZ: %f TransOffsetO: %f (Transport ID: %u %s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5018,'It consist of PhaseIDs:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11010,'You didn\'t get kicked out of the instance even if Player::CheckInstanceLoginValid() returned false and without .gm on flag',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11014,'You are already locked to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11011,'VisualizeBoundary warning: No interior point of the creature\'s boundary could be found - check if you have mutually exclusive boundaries!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11012,'VisualizeBoundary error: Creature movement is unbounded',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11013,'VisualizeBoundary warning: Reached fail-safe flood boundary - check if your boundary is unbounded!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1030,'You are attempting to create a battle.net account with wrong command, use .bnetaccount create',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5007,'Uses invalid phaseID.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11016,'Select a player or player pet.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(82,'Nearest graveyard found: %u (%.3f %.3f %.3f)',NULL,NULL,NULL,NULL,NULL,'Cementerio mas cercano encontrado: %u (%.3f %.3f %.3f)','Cementerio mas cercano encontrado: %u (%.3f %.3f %.3f)',NULL),(83,'There are no graveyards near',NULL,NULL,NULL,NULL,NULL,'No se ha encontrado ningun cementerio cerca','No se ha encontrado ningun cementerio cerca',NULL),(5062,'Scene debugging turned on.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5063,'Scene debugging turned off.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5064,'Scene : started (instance : %u - package : %u - flags : %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5065,'Scene : triggered (instance : %u - event : \"%s\")',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5066,'Scene : canceled (instance : %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5067,'Scene : completed (instance : %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5068,'Player have %u active(s) scene(s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5069,'ScenePackageId : %u - SceneInstanceId : %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1032,'Battle.net account created: %s with game account %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1033,'Battle.net account created: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1034,'| Account Id |  Internal name   |   Display name   |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1035,'Battle.net account %s has no linked game accounts.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11017,'Server shutdown delayed to %d seconds as other users are still connected. Specify \'force\' to override.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11018,'Server shutdown scheduled for T+%d seconds was successfully cancelled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1031,'An account password can NOT be longer than 16 characters (client limit). The account was NOT created.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(84,'Size: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(85,'Faction: %u Flags: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(86,'Model dimensions from center: Max X %f Y %f Z %f Min X %f Y %f Z %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5070,'Unit Flags 2: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5071,'Unit Flags 3: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5072,'NPC Flags: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11019,'You changed %s of %s to %d/%d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11020,'%s changed your %s to %d/%d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11021,'Invalid power name.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `trinity_string` ENABLE KEYS */;
UNLOCK TABLES;


-- Dumping structure for table classic_tc_world.updates
DROP TABLE IF EXISTS `updates`;
CREATE TABLE IF NOT EXISTS `updates` (
  `name` varchar(200) NOT NULL COMMENT 'filename with extension of the update.',
  `hash` char(40) DEFAULT '' COMMENT 'sha1 hash of the sql file.',
  `state` enum('RELEASED','ARCHIVED') NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if an update is released or archived.',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'timestamp when the query was applied.',
  `speed` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'time the query takes to apply in ms.',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='List of all applied updates in this database.';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.updates_include
DROP TABLE IF EXISTS `updates_include`;
CREATE TABLE IF NOT EXISTS `updates_include` (
  `path` varchar(200) NOT NULL COMMENT 'directory to include. $ means relative to the source directory.',
  `state` enum('RELEASED','ARCHIVED') NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if the directory contains released or archived updates.',
  PRIMARY KEY (`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='List of directories where we want to include sql updates.';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.vehicle_accessory
DROP TABLE IF EXISTS `vehicle_accessory`;
CREATE TABLE IF NOT EXISTS `vehicle_accessory` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `accessory_entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `seat_id` tinyint(4) NOT NULL DEFAULT 0,
  `minion` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `summontype` tinyint(3) unsigned NOT NULL DEFAULT 6 COMMENT 'see enum TempSummonType',
  `summontimer` int(10) unsigned NOT NULL DEFAULT 30000 COMMENT 'timer, only relevant for certain summontypes',
  PRIMARY KEY (`guid`,`seat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.vehicle_template_accessory
DROP TABLE IF EXISTS `vehicle_template_accessory`;
CREATE TABLE IF NOT EXISTS `vehicle_template_accessory` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `accessory_entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `seat_id` tinyint(4) NOT NULL DEFAULT 0,
  `minion` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `summontype` tinyint(3) unsigned NOT NULL DEFAULT 6 COMMENT 'see enum TempSummonType',
  `summontimer` int(10) unsigned NOT NULL DEFAULT 30000 COMMENT 'timer, only relevant for certain summontypes',
  PRIMARY KEY (`entry`,`seat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.version
DROP TABLE IF EXISTS `version`;
CREATE TABLE IF NOT EXISTS `version` (
  `core_version` varchar(255) NOT NULL DEFAULT '' COMMENT 'Core revision dumped at startup.',
  `core_revision` varchar(120) DEFAULT NULL,
  `db_version` varchar(120) DEFAULT NULL COMMENT 'Version of world DB.',
  `cache_id` int(11) DEFAULT 0,
  `hotfix_cache_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`core_version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Version Notes';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.warden_checks
DROP TABLE IF EXISTS `warden_checks`;
CREATE TABLE IF NOT EXISTS `warden_checks` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `data` varchar(48) DEFAULT NULL,
  `str` varchar(20) DEFAULT NULL,
  `address` int(10) unsigned DEFAULT NULL,
  `length` tinyint(3) unsigned DEFAULT NULL,
  `result` varchar(24) DEFAULT NULL,
  `comment` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.waypoints
DROP TABLE IF EXISTS `waypoints`;
CREATE TABLE IF NOT EXISTS `waypoints` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `pointid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `point_comment` text DEFAULT NULL,
  PRIMARY KEY (`entry`,`pointid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature waypoints';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.waypoint_data
DROP TABLE IF EXISTS `waypoint_data`;
CREATE TABLE IF NOT EXISTS `waypoint_data` (
  `id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Creature GUID',
  `point` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  `delay` int(10) unsigned NOT NULL DEFAULT 0,
  `move_type` int(11) NOT NULL DEFAULT 0,
  `action` int(11) NOT NULL DEFAULT 0,
  `action_chance` smallint(6) NOT NULL DEFAULT 100,
  `wpguid` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`,`point`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_world.waypoint_scripts
DROP TABLE IF EXISTS `waypoint_scripts`;
CREATE TABLE IF NOT EXISTS `waypoint_scripts` (
  `id` int(11) unsigned NOT NULL DEFAULT 0,
  `delay` int(11) unsigned NOT NULL DEFAULT 0,
  `command` int(11) unsigned NOT NULL DEFAULT 0,
  `datalong` int(11) unsigned NOT NULL DEFAULT 0,
  `datalong2` int(11) unsigned NOT NULL DEFAULT 0,
  `dataint` int(11) unsigned NOT NULL DEFAULT 0,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `z` float NOT NULL DEFAULT 0,
  `o` float NOT NULL DEFAULT 0,
  `guid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
