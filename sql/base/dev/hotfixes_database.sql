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

-- Dumping structure for table classic_tc_hotfix.achievement_category
DROP TABLE IF EXISTS `achievement_category`;
CREATE TABLE IF NOT EXISTS `achievement_category` (
  `Name` mediumtext DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Parent` smallint(6) DEFAULT NULL,
  `UiOrder` tinyint(4) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.achievement_category_locale
DROP TABLE IF EXISTS `achievement_category_locale`;
CREATE TABLE IF NOT EXISTS `achievement_category_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.animationdata
DROP TABLE IF EXISTS `animationdata`;
CREATE TABLE IF NOT EXISTS `animationdata` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Fallback` smallint(6) unsigned DEFAULT NULL,
  `BehaviorTier` tinyint(4) unsigned DEFAULT NULL,
  `BehaviorID` int(11) DEFAULT NULL,
  `Flags1` int(11) DEFAULT NULL,
  `Flags2` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.animkit
DROP TABLE IF EXISTS `animkit`;
CREATE TABLE IF NOT EXISTS `animkit` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `OneShotDuration` int(11) unsigned DEFAULT NULL,
  `OneShotStopAnimKitID` smallint(6) unsigned DEFAULT NULL,
  `LowDefAnimKitID` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.animkitboneset
DROP TABLE IF EXISTS `animkitboneset`;
CREATE TABLE IF NOT EXISTS `animkitboneset` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `BoneDataID` tinyint(4) DEFAULT NULL,
  `ParentAnimKitBoneSetID` tinyint(4) DEFAULT NULL,
  `ExtraBoneCount` tinyint(4) unsigned DEFAULT NULL,
  `AltAnimKitBoneSetID` tinyint(4) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.animkitconfig
DROP TABLE IF EXISTS `animkitconfig`;
CREATE TABLE IF NOT EXISTS `animkitconfig` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ConfigFlags` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.animkitconfigboneset
DROP TABLE IF EXISTS `animkitconfigboneset`;
CREATE TABLE IF NOT EXISTS `animkitconfigboneset` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `AnimKitBoneSetID` tinyint(4) unsigned DEFAULT NULL,
  `AnimKitPriorityID` smallint(6) unsigned DEFAULT NULL,
  `ParentAnimKitConfigID` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.animkitpriority
DROP TABLE IF EXISTS `animkitpriority`;
CREATE TABLE IF NOT EXISTS `animkitpriority` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Priority` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.animkitsegment
DROP TABLE IF EXISTS `animkitsegment`;
CREATE TABLE IF NOT EXISTS `animkitsegment` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ParentAnimKitID` smallint(6) unsigned DEFAULT NULL,
  `OrderIndex` tinyint(4) unsigned DEFAULT NULL,
  `AnimID` smallint(6) unsigned DEFAULT NULL,
  `AnimStartTime` int(11) unsigned DEFAULT NULL,
  `AnimKitConfigID` smallint(6) unsigned DEFAULT NULL,
  `StartCondition` tinyint(4) unsigned DEFAULT NULL,
  `StartConditionParam` tinyint(4) unsigned DEFAULT NULL,
  `StartConditionDelay` int(11) unsigned DEFAULT NULL,
  `EndCondition` tinyint(4) unsigned DEFAULT NULL,
  `EndConditionParam` int(11) unsigned DEFAULT NULL,
  `EndConditionDelay` int(11) unsigned DEFAULT NULL,
  `Speed` float DEFAULT NULL,
  `SegmentFlags` smallint(6) unsigned DEFAULT NULL,
  `ForcedVariation` tinyint(4) unsigned DEFAULT NULL,
  `OverrideConfigFlags` int(11) DEFAULT NULL,
  `LoopToSegmentIndex` tinyint(4) DEFAULT NULL,
  `BlendInTimeMs` smallint(6) unsigned DEFAULT NULL,
  `BlendOutTimeMs` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.areagroupmember
DROP TABLE IF EXISTS `areagroupmember`;
CREATE TABLE IF NOT EXISTS `areagroupmember` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `AreaID` smallint(6) unsigned DEFAULT NULL,
  `AreaGroupID` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.areapoi
DROP TABLE IF EXISTS `areapoi`;
CREATE TABLE IF NOT EXISTS `areapoi` (
  `Name` mediumtext DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PosX` float DEFAULT NULL,
  `PosY` float DEFAULT NULL,
  `PosZ` float DEFAULT NULL,
  `PortLocID` int(11) DEFAULT NULL,
  `PlayerConditionID` int(11) unsigned DEFAULT NULL,
  `UiTextureAtlasMemberID` int(11) unsigned DEFAULT NULL,
  `Flags` int(11) unsigned DEFAULT NULL,
  `WMOGroupID` int(11) DEFAULT NULL,
  `PoiDataType` int(11) DEFAULT NULL,
  `PoiData` int(11) DEFAULT NULL,
  `ContinentID` smallint(6) unsigned DEFAULT NULL,
  `AreaID` smallint(6) DEFAULT NULL,
  `WorldStateID` smallint(6) unsigned DEFAULT NULL,
  `UiWidgetSetID` smallint(6) unsigned DEFAULT NULL,
  `Importance` tinyint(4) unsigned DEFAULT NULL,
  `Icon` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.areapoi_locale
DROP TABLE IF EXISTS `areapoi_locale`;
CREATE TABLE IF NOT EXISTS `areapoi_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  `Description_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.areatable
DROP TABLE IF EXISTS `areatable`;
CREATE TABLE IF NOT EXISTS `areatable` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ZoneName` mediumtext DEFAULT NULL,
  `AreaName` mediumtext DEFAULT NULL,
  `ContinentID` smallint(6) unsigned DEFAULT NULL,
  `ParentAreaID` smallint(6) unsigned DEFAULT NULL,
  `AreaBit` smallint(6) DEFAULT NULL,
  `SoundProviderPref` tinyint(4) unsigned DEFAULT NULL,
  `SoundProviderPrefUnderwater` tinyint(4) unsigned DEFAULT NULL,
  `AmbienceID` smallint(6) unsigned DEFAULT NULL,
  `UwAmbience` smallint(6) unsigned DEFAULT NULL,
  `ZoneMusic` smallint(6) unsigned DEFAULT NULL,
  `UwZoneMusic` smallint(6) unsigned DEFAULT NULL,
  `ExplorationLevel` tinyint(4) DEFAULT NULL,
  `IntroSound` smallint(6) unsigned DEFAULT NULL,
  `UwIntroSound` int(11) unsigned DEFAULT NULL,
  `FactionGroupMask` tinyint(4) unsigned DEFAULT NULL,
  `Ambient_multiplier` float DEFAULT NULL,
  `MountFlags` tinyint(4) unsigned DEFAULT NULL,
  `PvpCombatWorldStateID` smallint(6) DEFAULT NULL,
  `WildBattlePetLevelMin` tinyint(4) unsigned DEFAULT NULL,
  `WildBattlePetLevelMax` tinyint(4) unsigned DEFAULT NULL,
  `WindSettingsID` tinyint(4) unsigned DEFAULT NULL,
  `Flags1` int(11) DEFAULT NULL,
  `Flags2` int(11) DEFAULT NULL,
  `LiquidTypeID1` smallint(6) unsigned DEFAULT NULL,
  `LiquidTypeID2` smallint(6) unsigned DEFAULT NULL,
  `LiquidTypeID3` smallint(6) unsigned DEFAULT NULL,
  `LiquidTypeID4` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.areatable_locale
DROP TABLE IF EXISTS `areatable_locale`;
CREATE TABLE IF NOT EXISTS `areatable_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `AreaName_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.areatrigger
DROP TABLE IF EXISTS `areatrigger`;
CREATE TABLE IF NOT EXISTS `areatrigger` (
  `Field_1_13_2_30073_000` mediumtext DEFAULT NULL,
  `PosX` float DEFAULT NULL,
  `PosY` float DEFAULT NULL,
  `PosZ` float DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ContinentID` smallint(6) DEFAULT NULL,
  `PhaseUseFlags` tinyint(4) DEFAULT NULL,
  `PhaseID` smallint(6) DEFAULT NULL,
  `PhaseGroupID` smallint(6) DEFAULT NULL,
  `Radius` float DEFAULT NULL,
  `Box_length` float DEFAULT NULL,
  `Box_width` float DEFAULT NULL,
  `Box_height` float DEFAULT NULL,
  `Box_yaw` float DEFAULT NULL,
  `ShapeType` tinyint(4) DEFAULT NULL,
  `ShapeID` smallint(6) DEFAULT NULL,
  `AreaTriggerActionSetID` smallint(6) DEFAULT NULL,
  `Flags` tinyint(4) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.areatriggeractionset
DROP TABLE IF EXISTS `areatriggeractionset`;
CREATE TABLE IF NOT EXISTS `areatriggeractionset` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Flags` smallint(6) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.areatrigger_locale
DROP TABLE IF EXISTS `areatrigger_locale`;
CREATE TABLE IF NOT EXISTS `areatrigger_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Field_1_13_2_30073_000_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.auctionhouse
DROP TABLE IF EXISTS `auctionhouse`;
CREATE TABLE IF NOT EXISTS `auctionhouse` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `FactionID` smallint(6) unsigned DEFAULT NULL,
  `DepositRate` tinyint(4) unsigned DEFAULT NULL,
  `ConsignmentRate` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.auctionhouse_locale
DROP TABLE IF EXISTS `auctionhouse_locale`;
CREATE TABLE IF NOT EXISTS `auctionhouse_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.bankbagslotprices
DROP TABLE IF EXISTS `bankbagslotprices`;
CREATE TABLE IF NOT EXISTS `bankbagslotprices` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Cost` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.bannedaddons
DROP TABLE IF EXISTS `bannedaddons`;
CREATE TABLE IF NOT EXISTS `bannedaddons` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `Version` mediumtext DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.battlemasterlist
DROP TABLE IF EXISTS `battlemasterlist`;
CREATE TABLE IF NOT EXISTS `battlemasterlist` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `Gametype` mediumtext DEFAULT NULL,
  `ShortDescription` mediumtext DEFAULT NULL,
  `LongDescription` mediumtext DEFAULT NULL,
  `InstanceType` tinyint(4) DEFAULT NULL,
  `Minlevel` tinyint(4) DEFAULT NULL,
  `Maxlevel` tinyint(4) DEFAULT NULL,
  `RatedPlayers` tinyint(4) DEFAULT NULL,
  `MinPlayers` tinyint(4) DEFAULT NULL,
  `MaxPlayers` tinyint(4) DEFAULT NULL,
  `GroupsAllowed` tinyint(4) DEFAULT NULL,
  `MaxGroupSize` tinyint(4) DEFAULT NULL,
  `HolidayWorldState` smallint(6) DEFAULT NULL,
  `Flags` tinyint(4) DEFAULT NULL,
  `IconFileDataID` int(11) DEFAULT NULL,
  `RequiredPlayerConditionID` int(11) DEFAULT NULL,
  `MapID1` smallint(6) DEFAULT NULL,
  `MapID2` smallint(6) DEFAULT NULL,
  `MapID3` smallint(6) DEFAULT NULL,
  `MapID4` smallint(6) DEFAULT NULL,
  `MapID5` smallint(6) DEFAULT NULL,
  `MapID6` smallint(6) DEFAULT NULL,
  `MapID7` smallint(6) DEFAULT NULL,
  `MapID8` smallint(6) DEFAULT NULL,
  `MapID9` smallint(6) DEFAULT NULL,
  `MapID10` smallint(6) DEFAULT NULL,
  `MapID11` smallint(6) DEFAULT NULL,
  `MapID12` smallint(6) DEFAULT NULL,
  `MapID13` smallint(6) DEFAULT NULL,
  `MapID14` smallint(6) DEFAULT NULL,
  `MapID15` smallint(6) DEFAULT NULL,
  `MapID16` smallint(6) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.battlemasterlist_locale
DROP TABLE IF EXISTS `battlemasterlist_locale`;
CREATE TABLE IF NOT EXISTS `battlemasterlist_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  `Gametype_lang` mediumtext DEFAULT NULL,
  `ShortDescription_lang` mediumtext DEFAULT NULL,
  `LongDescription_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.battlepetdisplayoverride
DROP TABLE IF EXISTS `battlepetdisplayoverride`;
CREATE TABLE IF NOT EXISTS `battlepetdisplayoverride` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `BattlePetSpeciesID` int(11) unsigned DEFAULT NULL,
  `PlayerConditionID` int(11) unsigned DEFAULT NULL,
  `CreatureDisplayInfoID` int(11) unsigned DEFAULT NULL,
  `PriorityCategory` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.cameraeffect
DROP TABLE IF EXISTS `cameraeffect`;
CREATE TABLE IF NOT EXISTS `cameraeffect` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.cameraeffectentry
DROP TABLE IF EXISTS `cameraeffectentry`;
CREATE TABLE IF NOT EXISTS `cameraeffectentry` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `OrderIndex` tinyint(4) unsigned DEFAULT NULL,
  `AmplitudeCurveID` smallint(6) unsigned DEFAULT NULL,
  `Duration` float DEFAULT NULL,
  `Delay` float DEFAULT NULL,
  `Phase` float DEFAULT NULL,
  `Amplitude` float DEFAULT NULL,
  `AmplitudeB` float DEFAULT NULL,
  `Frequency` float DEFAULT NULL,
  `RadiusMin` float DEFAULT NULL,
  `RadiusMax` float DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `EffectType` tinyint(4) DEFAULT NULL,
  `DirectionType` tinyint(4) unsigned DEFAULT NULL,
  `MovementType` tinyint(4) unsigned DEFAULT NULL,
  `AttenuationType` tinyint(4) DEFAULT NULL,
  `CameraEffectID` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.cameramode
DROP TABLE IF EXISTS `cameramode`;
CREATE TABLE IF NOT EXISTS `cameramode` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PositionOffsetX` float DEFAULT NULL,
  `PositionOffsetY` float DEFAULT NULL,
  `PositionOffsetZ` float DEFAULT NULL,
  `TargetOffsetX` float DEFAULT NULL,
  `TargetOffsetY` float DEFAULT NULL,
  `TargetOffsetZ` float DEFAULT NULL,
  `Type` tinyint(4) DEFAULT NULL,
  `Flags` int(11) DEFAULT NULL,
  `PositionSmoothing` float DEFAULT NULL,
  `RotationSmoothing` float DEFAULT NULL,
  `FieldOfView` float DEFAULT NULL,
  `LockedPositionOffsetBase` tinyint(4) DEFAULT NULL,
  `LockedPositionOffsetDirection` tinyint(4) DEFAULT NULL,
  `LockedTargetOffsetBase` tinyint(4) DEFAULT NULL,
  `LockedTargetOffsetDirection` tinyint(4) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.cfg_categories
DROP TABLE IF EXISTS `cfg_categories`;
CREATE TABLE IF NOT EXISTS `cfg_categories` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `LocaleMask` smallint(6) unsigned DEFAULT NULL,
  `CreateCharsetMask` tinyint(4) unsigned DEFAULT NULL,
  `ExistingCharsetMask` tinyint(4) unsigned DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `Order` tinyint(4) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.cfg_categories_locale
DROP TABLE IF EXISTS `cfg_categories_locale`;
CREATE TABLE IF NOT EXISTS `cfg_categories_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.cfg_configs
DROP TABLE IF EXISTS `cfg_configs`;
CREATE TABLE IF NOT EXISTS `cfg_configs` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PlayerKillingAllowed` tinyint(4) unsigned DEFAULT NULL,
  `Roleplaying` tinyint(4) unsigned DEFAULT NULL,
  `PlayerAttackSpeedBase` smallint(6) unsigned DEFAULT NULL,
  `MaxDamageReductionPctPhysical` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.cfg_regions
DROP TABLE IF EXISTS `cfg_regions`;
CREATE TABLE IF NOT EXISTS `cfg_regions` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Tag` mediumtext DEFAULT NULL,
  `RegionID` smallint(6) unsigned DEFAULT NULL,
  `Raidorigin` int(11) unsigned DEFAULT NULL,
  `RegionGroupmask` tinyint(4) unsigned DEFAULT NULL,
  `ChallengeOrigin` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.characterfacialhairstyles
DROP TABLE IF EXISTS `characterfacialhairstyles`;
CREATE TABLE IF NOT EXISTS `characterfacialhairstyles` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Geoset1` int(11) DEFAULT NULL,
  `Geoset2` int(11) DEFAULT NULL,
  `Geoset3` int(11) DEFAULT NULL,
  `Geoset4` int(11) DEFAULT NULL,
  `Geoset5` int(11) DEFAULT NULL,
  `RaceID` tinyint(4) unsigned DEFAULT NULL,
  `SexID` tinyint(4) unsigned DEFAULT NULL,
  `VariationID` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.charbaseinfo
DROP TABLE IF EXISTS `charbaseinfo`;
CREATE TABLE IF NOT EXISTS `charbaseinfo` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `RaceID` tinyint(4) DEFAULT NULL,
  `ClassID` tinyint(4) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.charbasesection
DROP TABLE IF EXISTS `charbasesection`;
CREATE TABLE IF NOT EXISTS `charbasesection` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `LayoutResType` tinyint(4) unsigned DEFAULT NULL,
  `VariationEnum` tinyint(4) unsigned DEFAULT NULL,
  `ResolutionVariationEnum` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.charcomponenttexturelayouts
DROP TABLE IF EXISTS `charcomponenttexturelayouts`;
CREATE TABLE IF NOT EXISTS `charcomponenttexturelayouts` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Width` smallint(6) DEFAULT NULL,
  `Height` smallint(6) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.charcomponenttexturesections
DROP TABLE IF EXISTS `charcomponenttexturesections`;
CREATE TABLE IF NOT EXISTS `charcomponenttexturesections` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CharComponentTextureLayoutID` tinyint(4) DEFAULT NULL,
  `SectionType` tinyint(4) DEFAULT NULL,
  `X` smallint(6) DEFAULT NULL,
  `Y` smallint(6) DEFAULT NULL,
  `Width` smallint(6) DEFAULT NULL,
  `Height` smallint(6) DEFAULT NULL,
  `OverlapSectionMask` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.charhairgeosets
DROP TABLE IF EXISTS `charhairgeosets`;
CREATE TABLE IF NOT EXISTS `charhairgeosets` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `RaceID` tinyint(4) unsigned DEFAULT NULL,
  `SexID` tinyint(4) unsigned DEFAULT NULL,
  `VariationID` tinyint(4) DEFAULT NULL,
  `GeosetID` tinyint(4) unsigned DEFAULT NULL,
  `Showscalp` tinyint(4) unsigned DEFAULT NULL,
  `VariationType` tinyint(4) DEFAULT NULL,
  `GeosetType` tinyint(4) DEFAULT NULL,
  `ColorIndex` tinyint(4) DEFAULT NULL,
  `CustomGeoFileDataID` int(11) DEFAULT NULL,
  `HdCustomGeoFileDataID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.charsections
DROP TABLE IF EXISTS `charsections`;
CREATE TABLE IF NOT EXISTS `charsections` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `RaceID` tinyint(4) DEFAULT NULL,
  `SexID` tinyint(4) DEFAULT NULL,
  `BaseSection` tinyint(4) DEFAULT NULL,
  `VariationIndex` tinyint(4) DEFAULT NULL,
  `ColorIndex` tinyint(4) DEFAULT NULL,
  `Flags` smallint(6) DEFAULT NULL,
  `MaterialResourcesID1` int(11) DEFAULT NULL,
  `MaterialResourcesID2` int(11) DEFAULT NULL,
  `MaterialResourcesID3` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.charstartoutfit
DROP TABLE IF EXISTS `charstartoutfit`;
CREATE TABLE IF NOT EXISTS `charstartoutfit` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ClassID` tinyint(4) unsigned DEFAULT NULL,
  `SexID` tinyint(4) unsigned DEFAULT NULL,
  `OutfitID` tinyint(4) unsigned DEFAULT NULL,
  `PetDisplayID` int(11) unsigned DEFAULT NULL,
  `PetFamilyID` tinyint(4) unsigned DEFAULT NULL,
  `ItemID1` int(11) DEFAULT NULL,
  `ItemID2` int(11) DEFAULT NULL,
  `ItemID3` int(11) DEFAULT NULL,
  `ItemID4` int(11) DEFAULT NULL,
  `ItemID5` int(11) DEFAULT NULL,
  `ItemID6` int(11) DEFAULT NULL,
  `ItemID7` int(11) DEFAULT NULL,
  `ItemID8` int(11) DEFAULT NULL,
  `ItemID9` int(11) DEFAULT NULL,
  `ItemID10` int(11) DEFAULT NULL,
  `ItemID11` int(11) DEFAULT NULL,
  `ItemID12` int(11) DEFAULT NULL,
  `ItemID13` int(11) DEFAULT NULL,
  `ItemID14` int(11) DEFAULT NULL,
  `ItemID15` int(11) DEFAULT NULL,
  `ItemID16` int(11) DEFAULT NULL,
  `ItemID17` int(11) DEFAULT NULL,
  `ItemID18` int(11) DEFAULT NULL,
  `ItemID19` int(11) DEFAULT NULL,
  `ItemID20` int(11) DEFAULT NULL,
  `ItemID21` int(11) DEFAULT NULL,
  `ItemID22` int(11) DEFAULT NULL,
  `ItemID23` int(11) DEFAULT NULL,
  `ItemID24` int(11) DEFAULT NULL,
  `RaceID` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.chatchannels
DROP TABLE IF EXISTS `chatchannels`;
CREATE TABLE IF NOT EXISTS `chatchannels` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `Shortcut` mediumtext DEFAULT NULL,
  `Flags` int(11) DEFAULT NULL,
  `FactionGroup` tinyint(4) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.chatchannels_locale
DROP TABLE IF EXISTS `chatchannels_locale`;
CREATE TABLE IF NOT EXISTS `chatchannels_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  `Shortcut_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.chatprofanity
DROP TABLE IF EXISTS `chatprofanity`;
CREATE TABLE IF NOT EXISTS `chatprofanity` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Text` mediumtext DEFAULT NULL,
  `Language` tinyint(4) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.chrclasses
DROP TABLE IF EXISTS `chrclasses`;
CREATE TABLE IF NOT EXISTS `chrclasses` (
  `Name` mediumtext DEFAULT NULL,
  `Filename` mediumtext DEFAULT NULL,
  `Name_male` mediumtext DEFAULT NULL,
  `Name_female` mediumtext DEFAULT NULL,
  `PetNameToken` mediumtext DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CreateScreenFileDataID` int(11) unsigned DEFAULT NULL,
  `SelectScreenFileDataID` int(11) unsigned DEFAULT NULL,
  `IconFileDataID` int(11) unsigned DEFAULT NULL,
  `LowResScreenFileDataID` int(11) unsigned DEFAULT NULL,
  `StartingLevel` int(11) DEFAULT NULL,
  `Flags` smallint(6) unsigned DEFAULT NULL,
  `CinematicSequenceID` smallint(6) unsigned DEFAULT NULL,
  `DefaultSpec` smallint(6) unsigned DEFAULT NULL,
  `PrimaryStatPriority` tinyint(4) unsigned DEFAULT NULL,
  `DisplayPower` tinyint(4) unsigned DEFAULT NULL,
  `RangedAttackPowerPerAgility` tinyint(4) unsigned DEFAULT NULL,
  `AttackPowerPerAgility` tinyint(4) unsigned DEFAULT NULL,
  `AttackPowerPerStrength` tinyint(4) unsigned DEFAULT NULL,
  `SpellClassSet` tinyint(4) unsigned DEFAULT NULL,
  `Field_1_13_0_28211_019` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.chrclassesxpowertypes
DROP TABLE IF EXISTS `chrclassesxpowertypes`;
CREATE TABLE IF NOT EXISTS `chrclassesxpowertypes` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PowerType` tinyint(4) DEFAULT NULL,
  `ClassID` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.chrclasses_locale
DROP TABLE IF EXISTS `chrclasses_locale`;
CREATE TABLE IF NOT EXISTS `chrclasses_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  `Filename_lang` mediumtext DEFAULT NULL,
  `Name_male_lang` mediumtext DEFAULT NULL,
  `Name_female_lang` mediumtext DEFAULT NULL,
  `PetNameToken_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.chrclasstitle
DROP TABLE IF EXISTS `chrclasstitle`;
CREATE TABLE IF NOT EXISTS `chrclasstitle` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name_male` mediumtext DEFAULT NULL,
  `Name_female` mediumtext DEFAULT NULL,
  `ChrClassID` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.chrclasstitle_locale
DROP TABLE IF EXISTS `chrclasstitle_locale`;
CREATE TABLE IF NOT EXISTS `chrclasstitle_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_male_lang` mediumtext DEFAULT NULL,
  `Name_female_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.chrclassvillain
DROP TABLE IF EXISTS `chrclassvillain`;
CREATE TABLE IF NOT EXISTS `chrclassvillain` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `ChrClassID` tinyint(4) unsigned DEFAULT NULL,
  `Gender` tinyint(4) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.chrclassvillain_locale
DROP TABLE IF EXISTS `chrclassvillain_locale`;
CREATE TABLE IF NOT EXISTS `chrclassvillain_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.chrcustomization
DROP TABLE IF EXISTS `chrcustomization`;
CREATE TABLE IF NOT EXISTS `chrcustomization` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `Sex` int(11) DEFAULT NULL,
  `BaseSection` int(11) DEFAULT NULL,
  `UiCustomizationType` int(11) DEFAULT NULL,
  `Flags` int(11) DEFAULT NULL,
  `ComponentSection1` int(11) DEFAULT NULL,
  `ComponentSection2` int(11) DEFAULT NULL,
  `ComponentSection3` int(11) DEFAULT NULL,
  `RaceID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.chrcustomization_locale
DROP TABLE IF EXISTS `chrcustomization_locale`;
CREATE TABLE IF NOT EXISTS `chrcustomization_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.chrraces
DROP TABLE IF EXISTS `chrraces`;
CREATE TABLE IF NOT EXISTS `chrraces` (
  `ClientPrefix` mediumtext DEFAULT NULL,
  `ClientFileString` mediumtext DEFAULT NULL,
  `Name` mediumtext DEFAULT NULL,
  `Name_female` mediumtext DEFAULT NULL,
  `Name_lowercase` mediumtext DEFAULT NULL,
  `Name_female_lowercase` mediumtext DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Flags` int(11) DEFAULT NULL,
  `MaleDisplayID` int(11) unsigned DEFAULT NULL,
  `FemaleDisplayID` int(11) unsigned DEFAULT NULL,
  `HighResMaleDisplayID` int(11) unsigned DEFAULT NULL,
  `HighResFemaleDisplayID` int(11) unsigned DEFAULT NULL,
  `CreateScreenFileDataID` int(11) DEFAULT NULL,
  `SelectScreenFileDataID` int(11) DEFAULT NULL,
  `MaleCustomizeOffsetX` float DEFAULT NULL,
  `MaleCustomizeOffsetY` float DEFAULT NULL,
  `MaleCustomizeOffsetZ` float DEFAULT NULL,
  `FemaleCustomizeOffsetX` float DEFAULT NULL,
  `FemaleCustomizeOffsetY` float DEFAULT NULL,
  `FemaleCustomizeOffsetZ` float DEFAULT NULL,
  `LowResScreenFileDataID` int(11) DEFAULT NULL,
  `AlteredFormStartVisualKitID1` int(11) unsigned DEFAULT NULL,
  `AlteredFormStartVisualKitID2` int(11) unsigned DEFAULT NULL,
  `AlteredFormStartVisualKitID3` int(11) unsigned DEFAULT NULL,
  `AlteredFormFinishVisualKitID1` int(11) unsigned DEFAULT NULL,
  `AlteredFormFinishVisualKitID2` int(11) unsigned DEFAULT NULL,
  `AlteredFormFinishVisualKitID3` int(11) unsigned DEFAULT NULL,
  `HeritageArmorAchievementID` int(11) DEFAULT NULL,
  `StartingLevel` int(11) DEFAULT NULL,
  `UiDisplayOrder` int(11) DEFAULT NULL,
  `FemaleSkeletonFileDataID` int(11) DEFAULT NULL,
  `MaleSkeletonFileDataID` int(11) DEFAULT NULL,
  `BaseRaceID` int(11) DEFAULT NULL,
  `FactionID` smallint(6) DEFAULT NULL,
  `CinematicSequenceID` smallint(6) DEFAULT NULL,
  `ResSicknessSpellID` smallint(6) DEFAULT NULL,
  `SplashSoundID` smallint(6) DEFAULT NULL,
  `BaseLanguage` tinyint(4) DEFAULT NULL,
  `CreatureType` tinyint(4) DEFAULT NULL,
  `Alliance` tinyint(4) DEFAULT NULL,
  `RaceRelated` tinyint(4) DEFAULT NULL,
  `UnalteredVisualRaceID` tinyint(4) DEFAULT NULL,
  `CharComponentTextureLayoutID` tinyint(4) DEFAULT NULL,
  `CharComponentTexLayoutHiResID` tinyint(4) DEFAULT NULL,
  `DefaultClassID` tinyint(4) DEFAULT NULL,
  `NeutralRaceID` tinyint(4) DEFAULT NULL,
  `MaleModelFallbackRaceID` tinyint(4) DEFAULT NULL,
  `MaleModelFallbackSex` tinyint(4) DEFAULT NULL,
  `FemaleModelFallbackRaceID` tinyint(4) DEFAULT NULL,
  `FemaleModelFallbackSex` tinyint(4) DEFAULT NULL,
  `MaleTextureFallbackRaceID` tinyint(4) DEFAULT NULL,
  `MaleTextureFallbackSex` tinyint(4) DEFAULT NULL,
  `FemaleTextureFallbackRaceID` tinyint(4) DEFAULT NULL,
  `FemaleTextureFallbackSex` tinyint(4) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.chrraces_locale
DROP TABLE IF EXISTS `chrraces_locale`;
CREATE TABLE IF NOT EXISTS `chrraces_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `ClientPrefix_lang` mediumtext DEFAULT NULL,
  `ClientFileString_lang` mediumtext DEFAULT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  `Name_female_lang` mediumtext DEFAULT NULL,
  `Name_lowercase_lang` mediumtext DEFAULT NULL,
  `Name_female_lowercase_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.cinematiccamera
DROP TABLE IF EXISTS `cinematiccamera`;
CREATE TABLE IF NOT EXISTS `cinematiccamera` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Origin1` float DEFAULT NULL,
  `Origin2` float DEFAULT NULL,
  `Origin3` float DEFAULT NULL,
  `SoundID` int(11) unsigned DEFAULT NULL,
  `OriginFacing` float DEFAULT NULL,
  `FileDataID` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.cinematicsequences
DROP TABLE IF EXISTS `cinematicsequences`;
CREATE TABLE IF NOT EXISTS `cinematicsequences` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SoundID` int(11) unsigned DEFAULT NULL,
  `Camera1` smallint(6) unsigned DEFAULT NULL,
  `Camera2` smallint(6) unsigned DEFAULT NULL,
  `Camera3` smallint(6) unsigned DEFAULT NULL,
  `Camera4` smallint(6) unsigned DEFAULT NULL,
  `Camera5` smallint(6) unsigned DEFAULT NULL,
  `Camera6` smallint(6) unsigned DEFAULT NULL,
  `Camera7` smallint(6) unsigned DEFAULT NULL,
  `Camera8` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.combatcondition
DROP TABLE IF EXISTS `combatcondition`;
CREATE TABLE IF NOT EXISTS `combatcondition` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `WorldStateExpressionID` smallint(6) unsigned DEFAULT NULL,
  `SelfConditionID` smallint(6) unsigned DEFAULT NULL,
  `TargetConditionID` smallint(6) unsigned DEFAULT NULL,
  `FriendConditionLogic` tinyint(4) unsigned DEFAULT NULL,
  `EnemyConditionLogic` tinyint(4) unsigned DEFAULT NULL,
  `FriendConditionID1` smallint(6) unsigned DEFAULT NULL,
  `FriendConditionID2` smallint(6) unsigned DEFAULT NULL,
  `FriendConditionOp1` tinyint(4) unsigned DEFAULT NULL,
  `FriendConditionOp2` tinyint(4) unsigned DEFAULT NULL,
  `FriendConditionCount1` tinyint(4) unsigned DEFAULT NULL,
  `FriendConditionCount2` tinyint(4) unsigned DEFAULT NULL,
  `EnemyConditionID1` smallint(6) unsigned DEFAULT NULL,
  `EnemyConditionID2` smallint(6) unsigned DEFAULT NULL,
  `EnemyConditionOp1` tinyint(4) unsigned DEFAULT NULL,
  `EnemyConditionOp2` tinyint(4) unsigned DEFAULT NULL,
  `EnemyConditionCount1` tinyint(4) unsigned DEFAULT NULL,
  `EnemyConditionCount2` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.commentatorstartlocation
DROP TABLE IF EXISTS `commentatorstartlocation`;
CREATE TABLE IF NOT EXISTS `commentatorstartlocation` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PosX` float DEFAULT NULL,
  `PosY` float DEFAULT NULL,
  `PosZ` float DEFAULT NULL,
  `MapID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.commentatortrackedcooldown
DROP TABLE IF EXISTS `commentatortrackedcooldown`;
CREATE TABLE IF NOT EXISTS `commentatortrackedcooldown` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SpellID` int(11) DEFAULT NULL,
  `Priority` tinyint(4) unsigned DEFAULT NULL,
  `Flags` tinyint(4) DEFAULT NULL,
  `ChrSpecID` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.componentmodelfiledata
DROP TABLE IF EXISTS `componentmodelfiledata`;
CREATE TABLE IF NOT EXISTS `componentmodelfiledata` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `GenderIndex` tinyint(4) unsigned DEFAULT NULL,
  `ClassID` tinyint(4) unsigned DEFAULT NULL,
  `RaceID` tinyint(4) unsigned DEFAULT NULL,
  `PositionIndex` tinyint(4) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.componenttexturefiledata
DROP TABLE IF EXISTS `componenttexturefiledata`;
CREATE TABLE IF NOT EXISTS `componenttexturefiledata` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `GenderIndex` tinyint(4) unsigned DEFAULT NULL,
  `ClassID` tinyint(4) unsigned DEFAULT NULL,
  `RaceID` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.configurationwarning
DROP TABLE IF EXISTS `configurationwarning`;
CREATE TABLE IF NOT EXISTS `configurationwarning` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Warning` mediumtext DEFAULT NULL,
  `Type` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.configurationwarning_locale
DROP TABLE IF EXISTS `configurationwarning_locale`;
CREATE TABLE IF NOT EXISTS `configurationwarning_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Warning_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.creaturedisplayinfo
DROP TABLE IF EXISTS `creaturedisplayinfo`;
CREATE TABLE IF NOT EXISTS `creaturedisplayinfo` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ModelID` smallint(6) unsigned DEFAULT NULL,
  `SoundID` smallint(6) unsigned DEFAULT NULL,
  `SizeClass` tinyint(4) DEFAULT NULL,
  `CreatureModelScale` float DEFAULT NULL,
  `CreatureModelAlpha` tinyint(4) unsigned DEFAULT NULL,
  `BloodID` tinyint(4) unsigned DEFAULT NULL,
  `ExtendedDisplayInfoID` int(11) DEFAULT NULL,
  `NPCSoundID` smallint(6) unsigned DEFAULT NULL,
  `ParticleColorID` smallint(6) unsigned DEFAULT NULL,
  `PortraitCreatureDisplayInfoID` int(11) DEFAULT NULL,
  `PortraitTextureFileDataID` int(11) DEFAULT NULL,
  `ObjectEffectPackageID` smallint(6) unsigned DEFAULT NULL,
  `AnimReplacementSetID` smallint(6) unsigned DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `StateSpellVisualKitID` int(11) DEFAULT NULL,
  `PlayerOverrideScale` float DEFAULT NULL,
  `PetInstanceScale` float DEFAULT NULL,
  `UnarmedWeaponType` tinyint(4) DEFAULT NULL,
  `MountPoofSpellVisualKitID` int(11) DEFAULT NULL,
  `DissolveEffectID` int(11) DEFAULT NULL,
  `Gender` tinyint(4) DEFAULT NULL,
  `DissolveOutEffectID` int(11) DEFAULT NULL,
  `CreatureModelMinLod` tinyint(4) DEFAULT NULL,
  `TextureVariationFileDataID1` int(11) DEFAULT NULL,
  `TextureVariationFileDataID2` int(11) DEFAULT NULL,
  `TextureVariationFileDataID3` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.creaturedisplayinfoextra
DROP TABLE IF EXISTS `creaturedisplayinfoextra`;
CREATE TABLE IF NOT EXISTS `creaturedisplayinfoextra` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `DisplayRaceID` tinyint(4) DEFAULT NULL,
  `DisplaySexID` tinyint(4) DEFAULT NULL,
  `DisplayClassID` tinyint(4) DEFAULT NULL,
  `SkinID` tinyint(4) DEFAULT NULL,
  `FaceID` tinyint(4) DEFAULT NULL,
  `HairStyleID` tinyint(4) DEFAULT NULL,
  `HairColorID` tinyint(4) DEFAULT NULL,
  `FacialHairID` tinyint(4) DEFAULT NULL,
  `Flags` tinyint(4) DEFAULT NULL,
  `BakeMaterialResourcesID` int(11) DEFAULT NULL,
  `HDBakeMaterialResourcesID` int(11) DEFAULT NULL,
  `CustomDisplayOption1` tinyint(4) unsigned DEFAULT NULL,
  `CustomDisplayOption2` tinyint(4) unsigned DEFAULT NULL,
  `CustomDisplayOption3` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.creaturedisplayinfogeosetdata
DROP TABLE IF EXISTS `creaturedisplayinfogeosetdata`;
CREATE TABLE IF NOT EXISTS `creaturedisplayinfogeosetdata` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `GeosetIndex` tinyint(4) unsigned DEFAULT NULL,
  `GeosetValue` tinyint(4) unsigned DEFAULT NULL,
  `CreatureDisplayInfoID` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.creaturefamily
DROP TABLE IF EXISTS `creaturefamily`;
CREATE TABLE IF NOT EXISTS `creaturefamily` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `MinScale` float DEFAULT NULL,
  `MinScaleLevel` tinyint(4) DEFAULT NULL,
  `MaxScale` float DEFAULT NULL,
  `MaxScaleLevel` tinyint(4) DEFAULT NULL,
  `PetFoodMask` smallint(6) DEFAULT NULL,
  `PetTalentType` tinyint(4) DEFAULT NULL,
  `IconFileID` int(11) DEFAULT NULL,
  `SkillLine1` smallint(6) DEFAULT NULL,
  `SkillLine2` smallint(6) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.creaturefamily_locale
DROP TABLE IF EXISTS `creaturefamily_locale`;
CREATE TABLE IF NOT EXISTS `creaturefamily_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.creaturemodeldata
DROP TABLE IF EXISTS `creaturemodeldata`;
CREATE TABLE IF NOT EXISTS `creaturemodeldata` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `GeoBox1` float DEFAULT NULL,
  `GeoBox2` float DEFAULT NULL,
  `GeoBox3` float DEFAULT NULL,
  `GeoBox4` float DEFAULT NULL,
  `GeoBox5` float DEFAULT NULL,
  `GeoBox6` float DEFAULT NULL,
  `Flags` int(11) unsigned DEFAULT NULL,
  `FileDataID` int(11) unsigned DEFAULT NULL,
  `BloodID` int(11) unsigned DEFAULT NULL,
  `FootprintTextureID` int(11) unsigned DEFAULT NULL,
  `FootprintTextureLength` float DEFAULT NULL,
  `FootprintTextureWidth` float DEFAULT NULL,
  `FootprintParticleScale` float DEFAULT NULL,
  `FoleyMaterialID` int(11) unsigned DEFAULT NULL,
  `FootstepCameraEffectID` int(11) unsigned DEFAULT NULL,
  `DeathThudCameraEffectID` int(11) unsigned DEFAULT NULL,
  `SoundID` int(11) unsigned DEFAULT NULL,
  `SizeClass` int(11) unsigned DEFAULT NULL,
  `CollisionWidth` float DEFAULT NULL,
  `CollisionHeight` float DEFAULT NULL,
  `WorldEffectScale` float DEFAULT NULL,
  `CreatureGeosetDataID` int(11) unsigned DEFAULT NULL,
  `HoverHeight` float DEFAULT NULL,
  `AttachedEffectScale` float DEFAULT NULL,
  `ModelScale` float DEFAULT NULL,
  `MissileCollisionRadius` float DEFAULT NULL,
  `MissileCollisionPush` float DEFAULT NULL,
  `MissileCollisionRaise` float DEFAULT NULL,
  `MountHeight` float DEFAULT NULL,
  `OverrideLootEffectScale` float DEFAULT NULL,
  `OverrideNameScale` float DEFAULT NULL,
  `OverrideSelectionRadius` float DEFAULT NULL,
  `TamedPetBaseScale` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.creaturemovementinfo
DROP TABLE IF EXISTS `creaturemovementinfo`;
CREATE TABLE IF NOT EXISTS `creaturemovementinfo` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SmoothFacingChaseRate` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.creaturesounddata
DROP TABLE IF EXISTS `creaturesounddata`;
CREATE TABLE IF NOT EXISTS `creaturesounddata` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SoundExertionID` int(11) unsigned DEFAULT NULL,
  `SoundExertionCriticalID` int(11) unsigned DEFAULT NULL,
  `SoundInjuryID` int(11) unsigned DEFAULT NULL,
  `SoundInjuryCriticalID` int(11) unsigned DEFAULT NULL,
  `SoundInjuryCrushingBlowID` int(11) unsigned DEFAULT NULL,
  `SoundDeathID` int(11) unsigned DEFAULT NULL,
  `SoundStunID` int(11) unsigned DEFAULT NULL,
  `SoundStandID` int(11) unsigned DEFAULT NULL,
  `SoundFootstepID` int(11) unsigned DEFAULT NULL,
  `SoundAggroID` int(11) unsigned DEFAULT NULL,
  `SoundWingFlapID` int(11) unsigned DEFAULT NULL,
  `SoundWingGlideID` int(11) unsigned DEFAULT NULL,
  `SoundAlertID` int(11) unsigned DEFAULT NULL,
  `SoundJumpStartID` int(11) unsigned DEFAULT NULL,
  `SoundJumpEndID` int(11) unsigned DEFAULT NULL,
  `SoundPetAttackID` int(11) unsigned DEFAULT NULL,
  `SoundPetOrderID` int(11) unsigned DEFAULT NULL,
  `SoundPetDismissID` int(11) unsigned DEFAULT NULL,
  `LoopSoundID` int(11) unsigned DEFAULT NULL,
  `BirthSoundID` int(11) unsigned DEFAULT NULL,
  `SpellCastDirectedSoundID` int(11) unsigned DEFAULT NULL,
  `SubmergeSoundID` int(11) unsigned DEFAULT NULL,
  `SubmergedSoundID` int(11) unsigned DEFAULT NULL,
  `WindupSoundID` int(11) unsigned DEFAULT NULL,
  `WindupCriticalSoundID` int(11) unsigned DEFAULT NULL,
  `ChargeSoundID` int(11) unsigned DEFAULT NULL,
  `ChargeCriticalSoundID` int(11) unsigned DEFAULT NULL,
  `BattleShoutSoundID` int(11) unsigned DEFAULT NULL,
  `BattleShoutCriticalSoundID` int(11) unsigned DEFAULT NULL,
  `TauntSoundID` int(11) unsigned DEFAULT NULL,
  `CreatureSoundDataIDPet` int(11) unsigned DEFAULT NULL,
  `FidgetDelaySecondsMin` float DEFAULT NULL,
  `FidgetDelaySecondsMax` float DEFAULT NULL,
  `CreatureImpactType` tinyint(4) unsigned DEFAULT NULL,
  `NPCSoundID` int(11) unsigned DEFAULT NULL,
  `SoundFidget1` int(11) unsigned DEFAULT NULL,
  `SoundFidget2` int(11) unsigned DEFAULT NULL,
  `SoundFidget3` int(11) unsigned DEFAULT NULL,
  `SoundFidget4` int(11) unsigned DEFAULT NULL,
  `SoundFidget5` int(11) unsigned DEFAULT NULL,
  `CustomAttack1` int(11) unsigned DEFAULT NULL,
  `CustomAttack2` int(11) unsigned DEFAULT NULL,
  `CustomAttack3` int(11) unsigned DEFAULT NULL,
  `CustomAttack4` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.creaturetype
DROP TABLE IF EXISTS `creaturetype`;
CREATE TABLE IF NOT EXISTS `creaturetype` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.creaturetype_locale
DROP TABLE IF EXISTS `creaturetype_locale`;
CREATE TABLE IF NOT EXISTS `creaturetype_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.criteria
DROP TABLE IF EXISTS `criteria`;
CREATE TABLE IF NOT EXISTS `criteria` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Type` smallint(6) DEFAULT NULL,
  `Asset` int(11) DEFAULT NULL,
  `ModifierTreeID` int(11) unsigned DEFAULT NULL,
  `StartEvent` tinyint(4) unsigned DEFAULT NULL,
  `StartAsset` int(11) DEFAULT NULL,
  `StartTimer` smallint(6) unsigned DEFAULT NULL,
  `FailEvent` tinyint(4) unsigned DEFAULT NULL,
  `FailAsset` int(11) DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `EligibilityWorldstateID` smallint(6) DEFAULT NULL,
  `EligibilityWorldstatevalue` tinyint(4) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.criteriatree
DROP TABLE IF EXISTS `criteriatree`;
CREATE TABLE IF NOT EXISTS `criteriatree` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Description` mediumtext DEFAULT NULL,
  `Parent` int(11) unsigned DEFAULT NULL,
  `Amount` int(11) unsigned DEFAULT NULL,
  `Operator` tinyint(4) DEFAULT NULL,
  `CriteriaID` int(11) unsigned DEFAULT NULL,
  `OrderIndex` int(11) DEFAULT NULL,
  `Flags` smallint(6) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.criteriatree_locale
DROP TABLE IF EXISTS `criteriatree_locale`;
CREATE TABLE IF NOT EXISTS `criteriatree_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Description_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.curve
DROP TABLE IF EXISTS `curve`;
CREATE TABLE IF NOT EXISTS `curve` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Type` tinyint(4) unsigned DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.curvepoint
DROP TABLE IF EXISTS `curvepoint`;
CREATE TABLE IF NOT EXISTS `curvepoint` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PosX` float DEFAULT NULL,
  `PosY` float DEFAULT NULL,
  `CurveID` smallint(6) unsigned DEFAULT NULL,
  `OrderIndex` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.deaththudlookups
DROP TABLE IF EXISTS `deaththudlookups`;
CREATE TABLE IF NOT EXISTS `deaththudlookups` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SizeClass` tinyint(4) unsigned DEFAULT NULL,
  `TerrainTypeSoundID` tinyint(4) unsigned DEFAULT NULL,
  `SoundEntryID` int(11) unsigned DEFAULT NULL,
  `SoundEntryIDWater` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.difficulty
DROP TABLE IF EXISTS `difficulty`;
CREATE TABLE IF NOT EXISTS `difficulty` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `InstanceType` tinyint(4) unsigned DEFAULT NULL,
  `OrderIndex` tinyint(4) unsigned DEFAULT NULL,
  `OldEnumValue` tinyint(4) DEFAULT NULL,
  `FallbackDifficultyID` tinyint(4) unsigned DEFAULT NULL,
  `MinPlayers` tinyint(4) unsigned DEFAULT NULL,
  `MaxPlayers` tinyint(4) unsigned DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `ItemContext` tinyint(4) unsigned DEFAULT NULL,
  `ToggleDifficultyID` tinyint(4) unsigned DEFAULT NULL,
  `GroupSizeHealthCurveID` smallint(6) unsigned DEFAULT NULL,
  `GroupSizeDmgCurveID` smallint(6) unsigned DEFAULT NULL,
  `GroupSizeSpellPointsCurveID` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.difficulty_locale
DROP TABLE IF EXISTS `difficulty_locale`;
CREATE TABLE IF NOT EXISTS `difficulty_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.dungeonencounter
DROP TABLE IF EXISTS `dungeonencounter`;
CREATE TABLE IF NOT EXISTS `dungeonencounter` (
  `Name` mediumtext DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `MapID` smallint(6) DEFAULT NULL,
  `DifficultyID` tinyint(4) DEFAULT NULL,
  `OrderIndex` int(11) DEFAULT NULL,
  `Bit` tinyint(4) DEFAULT NULL,
  `CreatureDisplayID` int(11) DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `SpellIconFileID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.dungeonencounter_locale
DROP TABLE IF EXISTS `dungeonencounter_locale`;
CREATE TABLE IF NOT EXISTS `dungeonencounter_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.durabilitycosts
DROP TABLE IF EXISTS `durabilitycosts`;
CREATE TABLE IF NOT EXISTS `durabilitycosts` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `WeaponSubClassCost1` smallint(6) unsigned DEFAULT NULL,
  `WeaponSubClassCost2` smallint(6) unsigned DEFAULT NULL,
  `WeaponSubClassCost3` smallint(6) unsigned DEFAULT NULL,
  `WeaponSubClassCost4` smallint(6) unsigned DEFAULT NULL,
  `WeaponSubClassCost5` smallint(6) unsigned DEFAULT NULL,
  `WeaponSubClassCost6` smallint(6) unsigned DEFAULT NULL,
  `WeaponSubClassCost7` smallint(6) unsigned DEFAULT NULL,
  `WeaponSubClassCost8` smallint(6) unsigned DEFAULT NULL,
  `WeaponSubClassCost9` smallint(6) unsigned DEFAULT NULL,
  `WeaponSubClassCost10` smallint(6) unsigned DEFAULT NULL,
  `WeaponSubClassCost11` smallint(6) unsigned DEFAULT NULL,
  `WeaponSubClassCost12` smallint(6) unsigned DEFAULT NULL,
  `WeaponSubClassCost13` smallint(6) unsigned DEFAULT NULL,
  `WeaponSubClassCost14` smallint(6) unsigned DEFAULT NULL,
  `WeaponSubClassCost15` smallint(6) unsigned DEFAULT NULL,
  `WeaponSubClassCost16` smallint(6) unsigned DEFAULT NULL,
  `WeaponSubClassCost17` smallint(6) unsigned DEFAULT NULL,
  `WeaponSubClassCost18` smallint(6) unsigned DEFAULT NULL,
  `WeaponSubClassCost19` smallint(6) unsigned DEFAULT NULL,
  `WeaponSubClassCost20` smallint(6) unsigned DEFAULT NULL,
  `WeaponSubClassCost21` smallint(6) unsigned DEFAULT NULL,
  `ArmorSubClassCost1` smallint(6) unsigned DEFAULT NULL,
  `ArmorSubClassCost2` smallint(6) unsigned DEFAULT NULL,
  `ArmorSubClassCost3` smallint(6) unsigned DEFAULT NULL,
  `ArmorSubClassCost4` smallint(6) unsigned DEFAULT NULL,
  `ArmorSubClassCost5` smallint(6) unsigned DEFAULT NULL,
  `ArmorSubClassCost6` smallint(6) unsigned DEFAULT NULL,
  `ArmorSubClassCost7` smallint(6) unsigned DEFAULT NULL,
  `ArmorSubClassCost8` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.durabilityquality
DROP TABLE IF EXISTS `durabilityquality`;
CREATE TABLE IF NOT EXISTS `durabilityquality` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Data` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.emotes
DROP TABLE IF EXISTS `emotes`;
CREATE TABLE IF NOT EXISTS `emotes` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `RaceMask` bigint(20) DEFAULT NULL,
  `EmoteSlashCommand` mediumtext DEFAULT NULL,
  `AnimID` int(11) DEFAULT NULL,
  `EmoteFlags` int(11) unsigned DEFAULT NULL,
  `EmoteSpecProc` tinyint(4) unsigned DEFAULT NULL,
  `EmoteSpecProcParam` int(11) unsigned DEFAULT NULL,
  `EventSoundID` int(11) unsigned DEFAULT NULL,
  `SpellVisualKitID` int(11) unsigned DEFAULT NULL,
  `ClassMask` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.emotestext
DROP TABLE IF EXISTS `emotestext`;
CREATE TABLE IF NOT EXISTS `emotestext` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `EmoteID` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.emotestextdata
DROP TABLE IF EXISTS `emotestextdata`;
CREATE TABLE IF NOT EXISTS `emotestextdata` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Text` mediumtext DEFAULT NULL,
  `RelationshipFlags` tinyint(4) unsigned DEFAULT NULL,
  `EmotesTextID` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.emotestextdata_locale
DROP TABLE IF EXISTS `emotestextdata_locale`;
CREATE TABLE IF NOT EXISTS `emotestextdata_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Text_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.emotestextsound
DROP TABLE IF EXISTS `emotestextsound`;
CREATE TABLE IF NOT EXISTS `emotestextsound` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `RaceID` tinyint(4) unsigned DEFAULT NULL,
  `ClassID` tinyint(4) unsigned DEFAULT NULL,
  `SexID` tinyint(4) unsigned DEFAULT NULL,
  `SoundID` int(11) unsigned DEFAULT NULL,
  `EmotesTextID` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.environmentaldamage
DROP TABLE IF EXISTS `environmentaldamage`;
CREATE TABLE IF NOT EXISTS `environmentaldamage` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `EnumID` tinyint(4) unsigned DEFAULT NULL,
  `VisualkitID` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.exhaustion
DROP TABLE IF EXISTS `exhaustion`;
CREATE TABLE IF NOT EXISTS `exhaustion` (
  `Name` mediumtext DEFAULT NULL,
  `CombatLogText` mediumtext DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Xp` int(11) DEFAULT NULL,
  `Factor` float DEFAULT NULL,
  `OutdoorHours` float DEFAULT NULL,
  `InnHours` float DEFAULT NULL,
  `Threshold` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.exhaustion_locale
DROP TABLE IF EXISTS `exhaustion_locale`;
CREATE TABLE IF NOT EXISTS `exhaustion_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  `CombatLogText_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.faction
DROP TABLE IF EXISTS `faction`;
CREATE TABLE IF NOT EXISTS `faction` (
  `ReputationRaceMask1` bigint(20) DEFAULT NULL,
  `ReputationRaceMask2` bigint(20) DEFAULT NULL,
  `ReputationRaceMask3` bigint(20) DEFAULT NULL,
  `ReputationRaceMask4` bigint(20) DEFAULT NULL,
  `Name` mediumtext DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ReputationIndex` smallint(6) DEFAULT NULL,
  `ParentFactionID` smallint(6) unsigned DEFAULT NULL,
  `Expansion` tinyint(4) unsigned DEFAULT NULL,
  `FriendshipRepID` tinyint(4) unsigned DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `ParagonFactionID` smallint(6) unsigned DEFAULT NULL,
  `ReputationClassMask1` smallint(6) DEFAULT NULL,
  `ReputationClassMask2` smallint(6) DEFAULT NULL,
  `ReputationClassMask3` smallint(6) DEFAULT NULL,
  `ReputationClassMask4` smallint(6) DEFAULT NULL,
  `ReputationFlags1` smallint(6) unsigned DEFAULT NULL,
  `ReputationFlags2` smallint(6) unsigned DEFAULT NULL,
  `ReputationFlags3` smallint(6) unsigned DEFAULT NULL,
  `ReputationFlags4` smallint(6) unsigned DEFAULT NULL,
  `ReputationBase1` int(11) DEFAULT NULL,
  `ReputationBase2` int(11) DEFAULT NULL,
  `ReputationBase3` int(11) DEFAULT NULL,
  `ReputationBase4` int(11) DEFAULT NULL,
  `ReputationMax1` int(11) DEFAULT NULL,
  `ReputationMax2` int(11) DEFAULT NULL,
  `ReputationMax3` int(11) DEFAULT NULL,
  `ReputationMax4` int(11) DEFAULT NULL,
  `ParentFactionMod1` float DEFAULT NULL,
  `ParentFactionMod2` float DEFAULT NULL,
  `ParentFactionCap1` tinyint(4) unsigned DEFAULT NULL,
  `ParentFactionCap2` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.factiongroup
DROP TABLE IF EXISTS `factiongroup`;
CREATE TABLE IF NOT EXISTS `factiongroup` (
  `InternalName` mediumtext DEFAULT NULL,
  `Name` mediumtext DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `MaskID` tinyint(4) unsigned DEFAULT NULL,
  `HonorCurrencyTextureFileID` int(11) DEFAULT NULL,
  `ConquestCurrencyTextureFileID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.factiongroup_locale
DROP TABLE IF EXISTS `factiongroup_locale`;
CREATE TABLE IF NOT EXISTS `factiongroup_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `InternalName_lang` mediumtext DEFAULT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.factiontemplate
DROP TABLE IF EXISTS `factiontemplate`;
CREATE TABLE IF NOT EXISTS `factiontemplate` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Faction` smallint(6) unsigned DEFAULT NULL,
  `Flags` smallint(6) unsigned DEFAULT NULL,
  `FactionGroup` tinyint(4) unsigned DEFAULT NULL,
  `FriendGroup` tinyint(4) unsigned DEFAULT NULL,
  `EnemyGroup` tinyint(4) unsigned DEFAULT NULL,
  `Enemies1` smallint(6) unsigned DEFAULT NULL,
  `Enemies2` smallint(6) unsigned DEFAULT NULL,
  `Enemies3` smallint(6) unsigned DEFAULT NULL,
  `Enemies4` smallint(6) unsigned DEFAULT NULL,
  `Friend1` smallint(6) unsigned DEFAULT NULL,
  `Friend2` smallint(6) unsigned DEFAULT NULL,
  `Friend3` smallint(6) unsigned DEFAULT NULL,
  `Friend4` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.faction_locale
DROP TABLE IF EXISTS `faction_locale`;
CREATE TABLE IF NOT EXISTS `faction_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  `Description_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.footprinttextures
DROP TABLE IF EXISTS `footprinttextures`;
CREATE TABLE IF NOT EXISTS `footprinttextures` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `FileDataID` int(11) DEFAULT NULL,
  `TextureBlendsetID` int(11) DEFAULT NULL,
  `Flags` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.footstepterrainlookup
DROP TABLE IF EXISTS `footstepterrainlookup`;
CREATE TABLE IF NOT EXISTS `footstepterrainlookup` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CreatureFootstepID` smallint(6) unsigned DEFAULT NULL,
  `TerrainSoundID` tinyint(4) DEFAULT NULL,
  `SoundID` int(11) unsigned DEFAULT NULL,
  `SoundIDSplash` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.gameobjectartkit
DROP TABLE IF EXISTS `gameobjectartkit`;
CREATE TABLE IF NOT EXISTS `gameobjectartkit` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `AttachModelFileID` int(11) DEFAULT NULL,
  `TextureVariationFileID1` int(11) DEFAULT NULL,
  `TextureVariationFileID2` int(11) DEFAULT NULL,
  `TextureVariationFileID3` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.gameobjectdisplayinfo
DROP TABLE IF EXISTS `gameobjectdisplayinfo`;
CREATE TABLE IF NOT EXISTS `gameobjectdisplayinfo` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ModelName` mediumtext DEFAULT NULL,
  `GeoBox1` float DEFAULT NULL,
  `GeoBox2` float DEFAULT NULL,
  `GeoBox3` float DEFAULT NULL,
  `GeoBox4` float DEFAULT NULL,
  `GeoBox5` float DEFAULT NULL,
  `GeoBox6` float DEFAULT NULL,
  `FileDataID` int(11) DEFAULT NULL,
  `ObjectEffectPackageID` smallint(6) DEFAULT NULL,
  `OverrideLootEffectScale` float DEFAULT NULL,
  `OverrideNameScale` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.gameobjectdisplayinfoxsoundkit
DROP TABLE IF EXISTS `gameobjectdisplayinfoxsoundkit`;
CREATE TABLE IF NOT EXISTS `gameobjectdisplayinfoxsoundkit` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SoundKitID` int(11) unsigned DEFAULT NULL,
  `EventIndex` tinyint(4) DEFAULT NULL,
  `GameObjectDisplayInfoID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.gameobjects
DROP TABLE IF EXISTS `gameobjects`;
CREATE TABLE IF NOT EXISTS `gameobjects` (
  `Name` mediumtext DEFAULT NULL,
  `PosX` float DEFAULT NULL,
  `PosY` float DEFAULT NULL,
  `PosZ` float DEFAULT NULL,
  `Rot1` float DEFAULT NULL,
  `Rot2` float DEFAULT NULL,
  `Rot3` float DEFAULT NULL,
  `Rot4` float DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `OwnerID` smallint(6) unsigned DEFAULT NULL,
  `DisplayID` smallint(6) unsigned DEFAULT NULL,
  `Scale` float DEFAULT NULL,
  `TypeID` tinyint(4) unsigned DEFAULT NULL,
  `PhaseUseFlags` tinyint(4) unsigned DEFAULT NULL,
  `PhaseID` smallint(6) unsigned DEFAULT NULL,
  `PhaseGroupID` smallint(6) unsigned DEFAULT NULL,
  `PropValue1` int(11) DEFAULT NULL,
  `PropValue2` int(11) DEFAULT NULL,
  `PropValue3` int(11) DEFAULT NULL,
  `PropValue4` int(11) DEFAULT NULL,
  `PropValue5` int(11) DEFAULT NULL,
  `PropValue6` int(11) DEFAULT NULL,
  `PropValue7` int(11) DEFAULT NULL,
  `PropValue8` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.gameobjects_locale
DROP TABLE IF EXISTS `gameobjects_locale`;
CREATE TABLE IF NOT EXISTS `gameobjects_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.gametips
DROP TABLE IF EXISTS `gametips`;
CREATE TABLE IF NOT EXISTS `gametips` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Text` mediumtext DEFAULT NULL,
  `SortIndex` tinyint(4) unsigned DEFAULT NULL,
  `MinLevel` smallint(6) unsigned DEFAULT NULL,
  `MaxLevel` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.gametips_locale
DROP TABLE IF EXISTS `gametips_locale`;
CREATE TABLE IF NOT EXISTS `gametips_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Text_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.globalstrings
DROP TABLE IF EXISTS `globalstrings`;
CREATE TABLE IF NOT EXISTS `globalstrings` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `BaseTag` mediumtext DEFAULT NULL,
  `TagText` mediumtext DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.globalstrings_locale
DROP TABLE IF EXISTS `globalstrings_locale`;
CREATE TABLE IF NOT EXISTS `globalstrings_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `BaseTag_lang` mediumtext DEFAULT NULL,
  `TagText_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.gmsurveycurrentsurvey
DROP TABLE IF EXISTS `gmsurveycurrentsurvey`;
CREATE TABLE IF NOT EXISTS `gmsurveycurrentsurvey` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `GMSURVEYID` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.gmsurveyquestions
DROP TABLE IF EXISTS `gmsurveyquestions`;
CREATE TABLE IF NOT EXISTS `gmsurveyquestions` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Question` mediumtext DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.gmsurveyquestions_locale
DROP TABLE IF EXISTS `gmsurveyquestions_locale`;
CREATE TABLE IF NOT EXISTS `gmsurveyquestions_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Question_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.gmsurveysurveys
DROP TABLE IF EXISTS `gmsurveysurveys`;
CREATE TABLE IF NOT EXISTS `gmsurveysurveys` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Q1` tinyint(4) unsigned DEFAULT NULL,
  `Q2` tinyint(4) unsigned DEFAULT NULL,
  `Q3` tinyint(4) unsigned DEFAULT NULL,
  `Q4` tinyint(4) unsigned DEFAULT NULL,
  `Q5` tinyint(4) unsigned DEFAULT NULL,
  `Q6` tinyint(4) unsigned DEFAULT NULL,
  `Q7` tinyint(4) unsigned DEFAULT NULL,
  `Q8` tinyint(4) unsigned DEFAULT NULL,
  `Q9` tinyint(4) unsigned DEFAULT NULL,
  `Q10` tinyint(4) unsigned DEFAULT NULL,
  `Q11` tinyint(4) unsigned DEFAULT NULL,
  `Q12` tinyint(4) unsigned DEFAULT NULL,
  `Q13` tinyint(4) unsigned DEFAULT NULL,
  `Q14` tinyint(4) unsigned DEFAULT NULL,
  `Q15` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.groundeffectdoodad
DROP TABLE IF EXISTS `groundeffectdoodad`;
CREATE TABLE IF NOT EXISTS `groundeffectdoodad` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ModelFileID` int(11) DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `Animscale` float DEFAULT NULL,
  `Pushscale` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.groundeffecttexture
DROP TABLE IF EXISTS `groundeffecttexture`;
CREATE TABLE IF NOT EXISTS `groundeffecttexture` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Density` int(11) unsigned DEFAULT NULL,
  `Sound` tinyint(4) unsigned DEFAULT NULL,
  `DoodadID1` smallint(6) unsigned DEFAULT NULL,
  `DoodadID2` smallint(6) unsigned DEFAULT NULL,
  `DoodadID3` smallint(6) unsigned DEFAULT NULL,
  `DoodadID4` smallint(6) unsigned DEFAULT NULL,
  `DoodadWeight1` tinyint(4) DEFAULT NULL,
  `DoodadWeight2` tinyint(4) DEFAULT NULL,
  `DoodadWeight3` tinyint(4) DEFAULT NULL,
  `DoodadWeight4` tinyint(4) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.helmetgeosetvisdata
DROP TABLE IF EXISTS `helmetgeosetvisdata`;
CREATE TABLE IF NOT EXISTS `helmetgeosetvisdata` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `HideGeoset1` int(11) DEFAULT NULL,
  `HideGeoset2` int(11) DEFAULT NULL,
  `HideGeoset3` int(11) DEFAULT NULL,
  `HideGeoset4` int(11) DEFAULT NULL,
  `HideGeoset5` int(11) DEFAULT NULL,
  `HideGeoset6` int(11) DEFAULT NULL,
  `HideGeoset7` int(11) DEFAULT NULL,
  `HideGeoset8` int(11) DEFAULT NULL,
  `HideGeoset9` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.highlightcolor
DROP TABLE IF EXISTS `highlightcolor`;
CREATE TABLE IF NOT EXISTS `highlightcolor` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Type` tinyint(4) DEFAULT NULL,
  `StartColor` int(11) DEFAULT NULL,
  `MidColor` int(11) DEFAULT NULL,
  `EndColor` int(11) DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.holidays
DROP TABLE IF EXISTS `holidays`;
CREATE TABLE IF NOT EXISTS `holidays` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Region` smallint(6) unsigned DEFAULT NULL,
  `Looping` tinyint(4) unsigned DEFAULT NULL,
  `HolidayNameID` int(11) unsigned DEFAULT NULL,
  `HolidayDescriptionID` int(11) unsigned DEFAULT NULL,
  `Priority` tinyint(4) unsigned DEFAULT NULL,
  `CalendarFilterType` tinyint(4) DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `Field_1_13_2_30073_008` int(11) unsigned DEFAULT NULL,
  `Duration1` smallint(6) unsigned DEFAULT NULL,
  `Duration2` smallint(6) unsigned DEFAULT NULL,
  `Duration3` smallint(6) unsigned DEFAULT NULL,
  `Duration4` smallint(6) unsigned DEFAULT NULL,
  `Duration5` smallint(6) unsigned DEFAULT NULL,
  `Duration6` smallint(6) unsigned DEFAULT NULL,
  `Duration7` smallint(6) unsigned DEFAULT NULL,
  `Duration8` smallint(6) unsigned DEFAULT NULL,
  `Duration9` smallint(6) unsigned DEFAULT NULL,
  `Duration10` smallint(6) unsigned DEFAULT NULL,
  `Date1` int(11) unsigned DEFAULT NULL,
  `Date2` int(11) unsigned DEFAULT NULL,
  `Date3` int(11) unsigned DEFAULT NULL,
  `Date4` int(11) unsigned DEFAULT NULL,
  `Date5` int(11) unsigned DEFAULT NULL,
  `Date6` int(11) unsigned DEFAULT NULL,
  `Date7` int(11) unsigned DEFAULT NULL,
  `Date8` int(11) unsigned DEFAULT NULL,
  `Date9` int(11) unsigned DEFAULT NULL,
  `Date10` int(11) unsigned DEFAULT NULL,
  `Date11` int(11) unsigned DEFAULT NULL,
  `Date12` int(11) unsigned DEFAULT NULL,
  `Date13` int(11) unsigned DEFAULT NULL,
  `Date14` int(11) unsigned DEFAULT NULL,
  `Date15` int(11) unsigned DEFAULT NULL,
  `Date16` int(11) unsigned DEFAULT NULL,
  `CalendarFlags1` tinyint(4) unsigned DEFAULT NULL,
  `CalendarFlags2` tinyint(4) unsigned DEFAULT NULL,
  `CalendarFlags3` tinyint(4) unsigned DEFAULT NULL,
  `CalendarFlags4` tinyint(4) unsigned DEFAULT NULL,
  `CalendarFlags5` tinyint(4) unsigned DEFAULT NULL,
  `CalendarFlags6` tinyint(4) unsigned DEFAULT NULL,
  `CalendarFlags7` tinyint(4) unsigned DEFAULT NULL,
  `CalendarFlags8` tinyint(4) unsigned DEFAULT NULL,
  `CalendarFlags9` tinyint(4) unsigned DEFAULT NULL,
  `CalendarFlags10` tinyint(4) unsigned DEFAULT NULL,
  `TextureFileDataID1` int(11) DEFAULT NULL,
  `TextureFileDataID2` int(11) DEFAULT NULL,
  `TextureFileDataID3` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.importpricearmor
DROP TABLE IF EXISTS `importpricearmor`;
CREATE TABLE IF NOT EXISTS `importpricearmor` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ClothModifier` float DEFAULT NULL,
  `LeatherModifier` float DEFAULT NULL,
  `ChainModifier` float DEFAULT NULL,
  `PlateModifier` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.importpricequality
DROP TABLE IF EXISTS `importpricequality`;
CREATE TABLE IF NOT EXISTS `importpricequality` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Data` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.importpriceshield
DROP TABLE IF EXISTS `importpriceshield`;
CREATE TABLE IF NOT EXISTS `importpriceshield` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Data` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.importpriceweapon
DROP TABLE IF EXISTS `importpriceweapon`;
CREATE TABLE IF NOT EXISTS `importpriceweapon` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Data` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.item
DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ClassID` tinyint(4) unsigned DEFAULT NULL,
  `SubclassID` tinyint(4) unsigned DEFAULT NULL,
  `Material` tinyint(4) unsigned DEFAULT NULL,
  `InventoryType` tinyint(4) DEFAULT NULL,
  `MaxDurability` int(11) unsigned DEFAULT NULL,
  `AmmoType` tinyint(4) unsigned DEFAULT NULL,
  `SheatheType` tinyint(4) unsigned DEFAULT NULL,
  `SoundOverridesubclassID` tinyint(4) DEFAULT NULL,
  `IconFileDataID` int(11) DEFAULT NULL,
  `ItemGroupSoundsID` tinyint(4) unsigned DEFAULT NULL,
  `DisplayInfoID` smallint(6) unsigned DEFAULT NULL,
  `DamageMin1` smallint(6) unsigned DEFAULT NULL,
  `DamageMin2` smallint(6) unsigned DEFAULT NULL,
  `DamageMin3` smallint(6) unsigned DEFAULT NULL,
  `DamageMin4` smallint(6) unsigned DEFAULT NULL,
  `DamageMin5` smallint(6) unsigned DEFAULT NULL,
  `DamageMax1` smallint(6) unsigned DEFAULT NULL,
  `DamageMax2` smallint(6) unsigned DEFAULT NULL,
  `DamageMax3` smallint(6) unsigned DEFAULT NULL,
  `DamageMax4` smallint(6) unsigned DEFAULT NULL,
  `DamageMax5` smallint(6) unsigned DEFAULT NULL,
  `DamageType1` tinyint(4) unsigned DEFAULT NULL,
  `DamageType2` tinyint(4) unsigned DEFAULT NULL,
  `DamageType3` tinyint(4) unsigned DEFAULT NULL,
  `DamageType4` tinyint(4) unsigned DEFAULT NULL,
  `DamageType5` tinyint(4) unsigned DEFAULT NULL,
  `DefensiveStats1` smallint(6) DEFAULT NULL,
  `DefensiveStats2` smallint(6) DEFAULT NULL,
  `DefensiveStats3` smallint(6) DEFAULT NULL,
  `DefensiveStats4` smallint(6) DEFAULT NULL,
  `DefensiveStats5` smallint(6) DEFAULT NULL,
  `DefensiveStats6` smallint(6) DEFAULT NULL,
  `DefensiveStats7` smallint(6) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itembagfamily
DROP TABLE IF EXISTS `itembagfamily`;
CREATE TABLE IF NOT EXISTS `itembagfamily` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itembagfamily_locale
DROP TABLE IF EXISTS `itembagfamily_locale`;
CREATE TABLE IF NOT EXISTS `itembagfamily_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemclass
DROP TABLE IF EXISTS `itemclass`;
CREATE TABLE IF NOT EXISTS `itemclass` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ClassName` mediumtext DEFAULT NULL,
  `ClassID` tinyint(4) DEFAULT NULL,
  `PriceModifier` float DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemclass_locale
DROP TABLE IF EXISTS `itemclass_locale`;
CREATE TABLE IF NOT EXISTS `itemclass_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `ClassName_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemdamageammo
DROP TABLE IF EXISTS `itemdamageammo`;
CREATE TABLE IF NOT EXISTS `itemdamageammo` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ItemLevel` smallint(6) unsigned DEFAULT NULL,
  `Quality1` float DEFAULT NULL,
  `Quality2` float DEFAULT NULL,
  `Quality3` float DEFAULT NULL,
  `Quality4` float DEFAULT NULL,
  `Quality5` float DEFAULT NULL,
  `Quality6` float DEFAULT NULL,
  `Quality7` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemdamageonehand
DROP TABLE IF EXISTS `itemdamageonehand`;
CREATE TABLE IF NOT EXISTS `itemdamageonehand` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ItemLevel` smallint(6) unsigned DEFAULT NULL,
  `Quality1` float DEFAULT NULL,
  `Quality2` float DEFAULT NULL,
  `Quality3` float DEFAULT NULL,
  `Quality4` float DEFAULT NULL,
  `Quality5` float DEFAULT NULL,
  `Quality6` float DEFAULT NULL,
  `Quality7` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemdamageonehandcaster
DROP TABLE IF EXISTS `itemdamageonehandcaster`;
CREATE TABLE IF NOT EXISTS `itemdamageonehandcaster` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ItemLevel` smallint(6) unsigned DEFAULT NULL,
  `Quality1` float DEFAULT NULL,
  `Quality2` float DEFAULT NULL,
  `Quality3` float DEFAULT NULL,
  `Quality4` float DEFAULT NULL,
  `Quality5` float DEFAULT NULL,
  `Quality6` float DEFAULT NULL,
  `Quality7` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemdamagetwohand
DROP TABLE IF EXISTS `itemdamagetwohand`;
CREATE TABLE IF NOT EXISTS `itemdamagetwohand` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ItemLevel` smallint(6) unsigned DEFAULT NULL,
  `Quality1` float DEFAULT NULL,
  `Quality2` float DEFAULT NULL,
  `Quality3` float DEFAULT NULL,
  `Quality4` float DEFAULT NULL,
  `Quality5` float DEFAULT NULL,
  `Quality6` float DEFAULT NULL,
  `Quality7` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemdamagetwohandcaster
DROP TABLE IF EXISTS `itemdamagetwohandcaster`;
CREATE TABLE IF NOT EXISTS `itemdamagetwohandcaster` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ItemLevel` smallint(6) unsigned DEFAULT NULL,
  `Quality1` float DEFAULT NULL,
  `Quality2` float DEFAULT NULL,
  `Quality3` float DEFAULT NULL,
  `Quality4` float DEFAULT NULL,
  `Quality5` float DEFAULT NULL,
  `Quality6` float DEFAULT NULL,
  `Quality7` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemdisenchantloot
DROP TABLE IF EXISTS `itemdisenchantloot`;
CREATE TABLE IF NOT EXISTS `itemdisenchantloot` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Subclass` tinyint(4) DEFAULT NULL,
  `Quality` tinyint(4) unsigned DEFAULT NULL,
  `MinLevel` smallint(6) unsigned DEFAULT NULL,
  `MaxLevel` smallint(6) unsigned DEFAULT NULL,
  `SkillRequired` smallint(6) unsigned DEFAULT NULL,
  `ExpansionID` tinyint(4) DEFAULT NULL,
  `Class` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemdisplayinfo
DROP TABLE IF EXISTS `itemdisplayinfo`;
CREATE TABLE IF NOT EXISTS `itemdisplayinfo` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ModelType1` int(11) DEFAULT NULL,
  `ItemVisual` int(11) DEFAULT NULL,
  `ParticleColorID` int(11) DEFAULT NULL,
  `ItemRangedDisplayInfoID` int(11) unsigned DEFAULT NULL,
  `OverrideSwooshSoundKitID` int(11) unsigned DEFAULT NULL,
  `SheatheTransformMatrixID` int(11) DEFAULT NULL,
  `StateSpellVisualKitID` int(11) DEFAULT NULL,
  `SheathedSpellVisualKitID` int(11) DEFAULT NULL,
  `UnsheathedSpellVisualKitID` int(11) unsigned DEFAULT NULL,
  `Flags` int(11) DEFAULT NULL,
  `ModelResourcesID1` int(11) unsigned DEFAULT NULL,
  `ModelResourcesID2` int(11) unsigned DEFAULT NULL,
  `ModelMaterialResourcesID1` int(11) DEFAULT NULL,
  `ModelMaterialResourcesID2` int(11) DEFAULT NULL,
  `GeosetGroup1` int(11) DEFAULT NULL,
  `GeosetGroup2` int(11) DEFAULT NULL,
  `GeosetGroup3` int(11) DEFAULT NULL,
  `GeosetGroup4` int(11) DEFAULT NULL,
  `AttachmentGeosetGroup1` int(11) DEFAULT NULL,
  `AttachmentGeosetGroup2` int(11) DEFAULT NULL,
  `AttachmentGeosetGroup3` int(11) DEFAULT NULL,
  `AttachmentGeosetGroup4` int(11) DEFAULT NULL,
  `HelmetGeosetVis1` int(11) DEFAULT NULL,
  `HelmetGeosetVis2` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemdisplayinfomaterialres
DROP TABLE IF EXISTS `itemdisplayinfomaterialres`;
CREATE TABLE IF NOT EXISTS `itemdisplayinfomaterialres` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ComponentSection` tinyint(4) DEFAULT NULL,
  `MaterialResourcesID` int(11) DEFAULT NULL,
  `ItemDisplayInfoID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemeffect
DROP TABLE IF EXISTS `itemeffect`;
CREATE TABLE IF NOT EXISTS `itemeffect` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `LegacySlotIndex` tinyint(4) unsigned DEFAULT NULL,
  `TriggerType` tinyint(4) DEFAULT NULL,
  `Charges` smallint(6) DEFAULT NULL,
  `CoolDownMSec` int(11) DEFAULT NULL,
  `CategoryCoolDownMSec` int(11) DEFAULT NULL,
  `SpellCategoryID` smallint(6) unsigned DEFAULT NULL,
  `SpellID` int(11) DEFAULT NULL,
  `ChrSpecializationID` smallint(6) unsigned DEFAULT NULL,
  `ParentItemID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemgroupsounds
DROP TABLE IF EXISTS `itemgroupsounds`;
CREATE TABLE IF NOT EXISTS `itemgroupsounds` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Sound1` int(11) unsigned DEFAULT NULL,
  `Sound2` int(11) unsigned DEFAULT NULL,
  `Sound3` int(11) unsigned DEFAULT NULL,
  `Sound4` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemlimitcategory
DROP TABLE IF EXISTS `itemlimitcategory`;
CREATE TABLE IF NOT EXISTS `itemlimitcategory` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `Quantity` tinyint(4) unsigned DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemlimitcategory_locale
DROP TABLE IF EXISTS `itemlimitcategory_locale`;
CREATE TABLE IF NOT EXISTS `itemlimitcategory_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itempetfood
DROP TABLE IF EXISTS `itempetfood`;
CREATE TABLE IF NOT EXISTS `itempetfood` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itempetfood_locale
DROP TABLE IF EXISTS `itempetfood_locale`;
CREATE TABLE IF NOT EXISTS `itempetfood_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itempricebase
DROP TABLE IF EXISTS `itempricebase`;
CREATE TABLE IF NOT EXISTS `itempricebase` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ItemLevel` smallint(6) unsigned DEFAULT NULL,
  `Armor` float DEFAULT NULL,
  `Weapon` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemrandomproperties
DROP TABLE IF EXISTS `itemrandomproperties`;
CREATE TABLE IF NOT EXISTS `itemrandomproperties` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `Enchantment1` smallint(6) unsigned DEFAULT NULL,
  `Enchantment2` smallint(6) unsigned DEFAULT NULL,
  `Enchantment3` smallint(6) unsigned DEFAULT NULL,
  `Enchantment4` smallint(6) unsigned DEFAULT NULL,
  `Enchantment5` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemrandomproperties_locale
DROP TABLE IF EXISTS `itemrandomproperties_locale`;
CREATE TABLE IF NOT EXISTS `itemrandomproperties_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemrandomsuffix
DROP TABLE IF EXISTS `itemrandomsuffix`;
CREATE TABLE IF NOT EXISTS `itemrandomsuffix` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `Enchantment1` smallint(6) unsigned DEFAULT NULL,
  `Enchantment2` smallint(6) unsigned DEFAULT NULL,
  `Enchantment3` smallint(6) unsigned DEFAULT NULL,
  `Enchantment4` smallint(6) unsigned DEFAULT NULL,
  `Enchantment5` smallint(6) unsigned DEFAULT NULL,
  `AllocationPct1` smallint(6) unsigned DEFAULT NULL,
  `AllocationPct2` smallint(6) unsigned DEFAULT NULL,
  `AllocationPct3` smallint(6) unsigned DEFAULT NULL,
  `AllocationPct4` smallint(6) unsigned DEFAULT NULL,
  `AllocationPct5` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemrandomsuffix_locale
DROP TABLE IF EXISTS `itemrandomsuffix_locale`;
CREATE TABLE IF NOT EXISTS `itemrandomsuffix_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemrangeddisplayinfo
DROP TABLE IF EXISTS `itemrangeddisplayinfo`;
CREATE TABLE IF NOT EXISTS `itemrangeddisplayinfo` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CastSpellVisualID` int(11) unsigned DEFAULT NULL,
  `AutoAttackSpellVisualID` int(11) unsigned DEFAULT NULL,
  `QuiverFileDataID` int(11) unsigned DEFAULT NULL,
  `MissileSpellVisualEffectNameID` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemset
DROP TABLE IF EXISTS `itemset`;
CREATE TABLE IF NOT EXISTS `itemset` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `SetFlags` int(11) unsigned DEFAULT NULL,
  `RequiredSkill` int(11) unsigned DEFAULT NULL,
  `RequiredSkillRank` smallint(6) unsigned DEFAULT NULL,
  `ItemID1` int(11) unsigned DEFAULT NULL,
  `ItemID2` int(11) unsigned DEFAULT NULL,
  `ItemID3` int(11) unsigned DEFAULT NULL,
  `ItemID4` int(11) unsigned DEFAULT NULL,
  `ItemID5` int(11) unsigned DEFAULT NULL,
  `ItemID6` int(11) unsigned DEFAULT NULL,
  `ItemID7` int(11) unsigned DEFAULT NULL,
  `ItemID8` int(11) unsigned DEFAULT NULL,
  `ItemID9` int(11) unsigned DEFAULT NULL,
  `ItemID10` int(11) unsigned DEFAULT NULL,
  `ItemID11` int(11) unsigned DEFAULT NULL,
  `ItemID12` int(11) unsigned DEFAULT NULL,
  `ItemID13` int(11) unsigned DEFAULT NULL,
  `ItemID14` int(11) unsigned DEFAULT NULL,
  `ItemID15` int(11) unsigned DEFAULT NULL,
  `ItemID16` int(11) unsigned DEFAULT NULL,
  `ItemID17` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemsetspell
DROP TABLE IF EXISTS `itemsetspell`;
CREATE TABLE IF NOT EXISTS `itemsetspell` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ChrSpecID` smallint(6) unsigned DEFAULT NULL,
  `SpellID` int(11) unsigned DEFAULT NULL,
  `Threshold` tinyint(4) unsigned DEFAULT NULL,
  `ItemSetID` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemset_locale
DROP TABLE IF EXISTS `itemset_locale`;
CREATE TABLE IF NOT EXISTS `itemset_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemsparse
DROP TABLE IF EXISTS `itemsparse`;
CREATE TABLE IF NOT EXISTS `itemsparse` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `AllowableRace` bigint(20) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `Display3` mediumtext DEFAULT NULL,
  `Display2` mediumtext DEFAULT NULL,
  `Display1` mediumtext DEFAULT NULL,
  `Display` mediumtext DEFAULT NULL,
  `DmgVariance` float DEFAULT NULL,
  `DurationInInventory` int(11) unsigned DEFAULT NULL,
  `QualityModifier` float DEFAULT NULL,
  `BagFamily` int(11) unsigned DEFAULT NULL,
  `ItemRange` float DEFAULT NULL,
  `StatPercentageOfSocket1` float DEFAULT NULL,
  `StatPercentageOfSocket2` float DEFAULT NULL,
  `StatPercentageOfSocket3` float DEFAULT NULL,
  `StatPercentageOfSocket4` float DEFAULT NULL,
  `StatPercentageOfSocket5` float DEFAULT NULL,
  `StatPercentageOfSocket6` float DEFAULT NULL,
  `StatPercentageOfSocket7` float DEFAULT NULL,
  `StatPercentageOfSocket8` float DEFAULT NULL,
  `StatPercentageOfSocket9` float DEFAULT NULL,
  `StatPercentageOfSocket10` float DEFAULT NULL,
  `StatPercentEditor1` int(11) DEFAULT NULL,
  `StatPercentEditor2` int(11) DEFAULT NULL,
  `StatPercentEditor3` int(11) DEFAULT NULL,
  `StatPercentEditor4` int(11) DEFAULT NULL,
  `StatPercentEditor5` int(11) DEFAULT NULL,
  `StatPercentEditor6` int(11) DEFAULT NULL,
  `StatPercentEditor7` int(11) DEFAULT NULL,
  `StatPercentEditor8` int(11) DEFAULT NULL,
  `StatPercentEditor9` int(11) DEFAULT NULL,
  `StatPercentEditor10` int(11) DEFAULT NULL,
  `Stackable` int(11) DEFAULT NULL,
  `MaxCount` int(11) DEFAULT NULL,
  `RequiredAbility` int(11) unsigned DEFAULT NULL,
  `SellPrice` int(11) unsigned DEFAULT NULL,
  `BuyPrice` int(11) unsigned DEFAULT NULL,
  `VendorStackCount` int(11) unsigned DEFAULT NULL,
  `PriceVariance` float DEFAULT NULL,
  `PriceRandomValue` float DEFAULT NULL,
  `Flags1` int(11) DEFAULT NULL,
  `Flags2` int(11) DEFAULT NULL,
  `Flags3` int(11) DEFAULT NULL,
  `Flags4` int(11) DEFAULT NULL,
  `OppositeFactionItemID` int(11) DEFAULT NULL,
  `MaxDurability` int(11) unsigned DEFAULT NULL,
  `ItemNameDescriptionID` smallint(6) unsigned DEFAULT NULL,
  `RequiredTransmogHoliday` smallint(6) unsigned DEFAULT NULL,
  `RequiredHoliday` smallint(6) unsigned DEFAULT NULL,
  `LimitCategory` smallint(6) unsigned DEFAULT NULL,
  `GemProperties` smallint(6) unsigned DEFAULT NULL,
  `SocketMatchenchantmentID` smallint(6) unsigned DEFAULT NULL,
  `TotemCategoryID` smallint(6) unsigned DEFAULT NULL,
  `InstanceBound` smallint(6) unsigned DEFAULT NULL,
  `ZoneBound` smallint(6) unsigned DEFAULT NULL,
  `ItemSet` smallint(6) unsigned DEFAULT NULL,
  `ItemRandomSuffixGroupID` smallint(6) unsigned DEFAULT NULL,
  `RandomSelect` smallint(6) unsigned DEFAULT NULL,
  `LockID` smallint(6) unsigned DEFAULT NULL,
  `StartQuestID` smallint(6) unsigned DEFAULT NULL,
  `PageID` smallint(6) unsigned DEFAULT NULL,
  `ItemDelay` smallint(6) unsigned DEFAULT NULL,
  `DamageMin1` smallint(6) unsigned DEFAULT NULL,
  `DamageMin2` smallint(6) unsigned DEFAULT NULL,
  `DamageMin3` smallint(6) unsigned DEFAULT NULL,
  `DamageMin4` smallint(6) unsigned DEFAULT NULL,
  `DamageMin5` smallint(6) unsigned DEFAULT NULL,
  `DamageMax1` smallint(6) unsigned DEFAULT NULL,
  `DamageMax2` smallint(6) unsigned DEFAULT NULL,
  `DamageMax3` smallint(6) unsigned DEFAULT NULL,
  `DamageMax4` smallint(6) unsigned DEFAULT NULL,
  `DamageMax5` smallint(6) unsigned DEFAULT NULL,
  `DefensiveStats1` smallint(6) DEFAULT NULL,
  `DefensiveStats2` smallint(6) DEFAULT NULL,
  `DefensiveStats3` smallint(6) DEFAULT NULL,
  `DefensiveStats4` smallint(6) DEFAULT NULL,
  `DefensiveStats5` smallint(6) DEFAULT NULL,
  `DefensiveStats6` smallint(6) DEFAULT NULL,
  `DefensiveStats7` smallint(6) DEFAULT NULL,
  `ScalingStatDistributionID` smallint(6) unsigned DEFAULT NULL,
  `MinFactionID` smallint(6) unsigned DEFAULT NULL,
  `RequiredSkillRank` smallint(6) unsigned DEFAULT NULL,
  `RequiredSkill` smallint(6) unsigned DEFAULT NULL,
  `ItemLevel` smallint(6) unsigned DEFAULT NULL,
  `AllowableClass` smallint(6) DEFAULT NULL,
  `ExpansionID` tinyint(4) unsigned DEFAULT NULL,
  `ArtifactID` tinyint(4) unsigned DEFAULT NULL,
  `SpellWeight` tinyint(4) unsigned DEFAULT NULL,
  `SpellWeightCategory` tinyint(4) unsigned DEFAULT NULL,
  `SocketType1` tinyint(4) unsigned DEFAULT NULL,
  `SocketType2` tinyint(4) unsigned DEFAULT NULL,
  `SocketType3` tinyint(4) unsigned DEFAULT NULL,
  `SheatheType` tinyint(4) unsigned DEFAULT NULL,
  `Material` tinyint(4) unsigned DEFAULT NULL,
  `PageMaterialID` tinyint(4) unsigned DEFAULT NULL,
  `LanguageID` tinyint(4) unsigned DEFAULT NULL,
  `Bonding` tinyint(4) unsigned DEFAULT NULL,
  `AmmoType` tinyint(4) unsigned DEFAULT NULL,
  `DamageType1` tinyint(4) unsigned DEFAULT NULL,
  `DamageType2` tinyint(4) unsigned DEFAULT NULL,
  `DamageType3` tinyint(4) unsigned DEFAULT NULL,
  `DamageType4` tinyint(4) unsigned DEFAULT NULL,
  `DamageType5` tinyint(4) unsigned DEFAULT NULL,
  `StatModifierBonusStat1` tinyint(4) DEFAULT NULL,
  `StatModifierBonusStat2` tinyint(4) DEFAULT NULL,
  `StatModifierBonusStat3` tinyint(4) DEFAULT NULL,
  `StatModifierBonusStat4` tinyint(4) DEFAULT NULL,
  `StatModifierBonusStat5` tinyint(4) DEFAULT NULL,
  `StatModifierBonusStat6` tinyint(4) DEFAULT NULL,
  `StatModifierBonusStat7` tinyint(4) DEFAULT NULL,
  `StatModifierBonusStat8` tinyint(4) DEFAULT NULL,
  `StatModifierBonusStat9` tinyint(4) DEFAULT NULL,
  `StatModifierBonusStat10` tinyint(4) DEFAULT NULL,
  `StatValue1` tinyint(4) DEFAULT NULL,
  `StatValue2` tinyint(4) DEFAULT NULL,
  `StatValue3` tinyint(4) DEFAULT NULL,
  `StatValue4` tinyint(4) DEFAULT NULL,
  `StatValue5` tinyint(4) DEFAULT NULL,
  `StatValue6` tinyint(4) DEFAULT NULL,
  `StatValue7` tinyint(4) DEFAULT NULL,
  `StatValue8` tinyint(4) DEFAULT NULL,
  `StatValue9` tinyint(4) DEFAULT NULL,
  `StatValue10` tinyint(4) DEFAULT NULL,
  `ContainerSlots` tinyint(4) unsigned DEFAULT NULL,
  `MinReputation` tinyint(4) unsigned DEFAULT NULL,
  `RequiredPVPMedal` tinyint(4) unsigned DEFAULT NULL,
  `RequiredPVPRank` tinyint(4) unsigned DEFAULT NULL,
  `RequiredLevel` tinyint(4) DEFAULT NULL,
  `InventoryType` tinyint(4) unsigned DEFAULT NULL,
  `OverallQualityID` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemsparse_locale
DROP TABLE IF EXISTS `itemsparse_locale`;
CREATE TABLE IF NOT EXISTS `itemsparse_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Description_lang` mediumtext DEFAULT NULL,
  `Display3_lang` mediumtext DEFAULT NULL,
  `Display2_lang` mediumtext DEFAULT NULL,
  `Display1_lang` mediumtext DEFAULT NULL,
  `Display_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemsubclass
DROP TABLE IF EXISTS `itemsubclass`;
CREATE TABLE IF NOT EXISTS `itemsubclass` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `DisplayName` mediumtext DEFAULT NULL,
  `VerboseName` mediumtext DEFAULT NULL,
  `ClassID` tinyint(4) DEFAULT NULL,
  `SubClassID` tinyint(4) DEFAULT NULL,
  `AuctionHouseSortOrder` tinyint(4) unsigned DEFAULT NULL,
  `PrerequisiteProficiency` tinyint(4) DEFAULT NULL,
  `Flags` smallint(6) DEFAULT NULL,
  `DisplayFlags` tinyint(4) DEFAULT NULL,
  `WeaponSwingSize` tinyint(4) DEFAULT NULL,
  `PostrequisiteProficiency` tinyint(4) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemsubclassmask
DROP TABLE IF EXISTS `itemsubclassmask`;
CREATE TABLE IF NOT EXISTS `itemsubclassmask` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `ClassID` tinyint(4) unsigned DEFAULT NULL,
  `Mask` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemsubclassmask_locale
DROP TABLE IF EXISTS `itemsubclassmask_locale`;
CREATE TABLE IF NOT EXISTS `itemsubclassmask_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemsubclass_locale
DROP TABLE IF EXISTS `itemsubclass_locale`;
CREATE TABLE IF NOT EXISTS `itemsubclass_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `DisplayName_lang` mediumtext DEFAULT NULL,
  `VerboseName_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.itemvisuals
DROP TABLE IF EXISTS `itemvisuals`;
CREATE TABLE IF NOT EXISTS `itemvisuals` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ModelFileID1` int(11) DEFAULT NULL,
  `ModelFileID2` int(11) DEFAULT NULL,
  `ModelFileID3` int(11) DEFAULT NULL,
  `ModelFileID4` int(11) DEFAULT NULL,
  `ModelFileID5` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.journalencounterxmaploc
DROP TABLE IF EXISTS `journalencounterxmaploc`;
CREATE TABLE IF NOT EXISTS `journalencounterxmaploc` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Map1` float DEFAULT NULL,
  `Map2` float DEFAULT NULL,
  `JournalEncounterID` int(11) DEFAULT NULL,
  `MapDisplayConditionID` int(11) DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `UiMapID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.languages
DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `Name` mediumtext DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.languages_locale
DROP TABLE IF EXISTS `languages_locale`;
CREATE TABLE IF NOT EXISTS `languages_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.languagewords
DROP TABLE IF EXISTS `languagewords`;
CREATE TABLE IF NOT EXISTS `languagewords` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Word` mediumtext DEFAULT NULL,
  `LanguageID` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.lfgdungeons
DROP TABLE IF EXISTS `lfgdungeons`;
CREATE TABLE IF NOT EXISTS `lfgdungeons` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `MinLevel` tinyint(4) unsigned DEFAULT NULL,
  `MaxLevel` smallint(6) unsigned DEFAULT NULL,
  `TypeID` tinyint(4) unsigned DEFAULT NULL,
  `Subtype` tinyint(4) unsigned DEFAULT NULL,
  `Faction` tinyint(4) DEFAULT NULL,
  `IconTextureFileID` int(11) DEFAULT NULL,
  `RewardsBgTextureFileID` int(11) DEFAULT NULL,
  `PopupBgTextureFileID` int(11) DEFAULT NULL,
  `ExpansionLevel` tinyint(4) unsigned DEFAULT NULL,
  `MapID` smallint(6) DEFAULT NULL,
  `DifficultyID` tinyint(4) unsigned DEFAULT NULL,
  `MinGear` float DEFAULT NULL,
  `GroupID` tinyint(4) unsigned DEFAULT NULL,
  `OrderIndex` tinyint(4) unsigned DEFAULT NULL,
  `RequiredPlayerconditionID` int(11) unsigned DEFAULT NULL,
  `TargetLevel` tinyint(4) unsigned DEFAULT NULL,
  `TargetLevelmin` tinyint(4) unsigned DEFAULT NULL,
  `TargetLevelmax` smallint(6) unsigned DEFAULT NULL,
  `RandomID` smallint(6) unsigned DEFAULT NULL,
  `ScenarioID` smallint(6) unsigned DEFAULT NULL,
  `FinalEncounterID` smallint(6) unsigned DEFAULT NULL,
  `CountTank` tinyint(4) unsigned DEFAULT NULL,
  `CountHealer` tinyint(4) unsigned DEFAULT NULL,
  `CountDamage` tinyint(4) unsigned DEFAULT NULL,
  `MinCounttank` tinyint(4) unsigned DEFAULT NULL,
  `MinCounthealer` tinyint(4) unsigned DEFAULT NULL,
  `MinCountdamage` tinyint(4) unsigned DEFAULT NULL,
  `BonusReputationamount` smallint(6) unsigned DEFAULT NULL,
  `MentorItemLevel` smallint(6) unsigned DEFAULT NULL,
  `MentorCharLevel` tinyint(4) unsigned DEFAULT NULL,
  `Flags1` int(11) DEFAULT NULL,
  `Flags2` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.lfgdungeons_locale
DROP TABLE IF EXISTS `lfgdungeons_locale`;
CREATE TABLE IF NOT EXISTS `lfgdungeons_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  `Description_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.light
DROP TABLE IF EXISTS `light`;
CREATE TABLE IF NOT EXISTS `light` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `GameCoords1` float DEFAULT NULL,
  `GameCoords2` float DEFAULT NULL,
  `GameCoords3` float DEFAULT NULL,
  `GameFalloffStart` float DEFAULT NULL,
  `GameFalloffEnd` float DEFAULT NULL,
  `ContinentID` smallint(6) DEFAULT NULL,
  `LightParamsID1` smallint(6) unsigned DEFAULT NULL,
  `LightParamsID2` smallint(6) unsigned DEFAULT NULL,
  `LightParamsID3` smallint(6) unsigned DEFAULT NULL,
  `LightParamsID4` smallint(6) unsigned DEFAULT NULL,
  `LightParamsID5` smallint(6) unsigned DEFAULT NULL,
  `LightParamsID6` smallint(6) unsigned DEFAULT NULL,
  `LightParamsID7` smallint(6) unsigned DEFAULT NULL,
  `LightParamsID8` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.lightdata
DROP TABLE IF EXISTS `lightdata`;
CREATE TABLE IF NOT EXISTS `lightdata` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `LightParamID` smallint(6) unsigned DEFAULT NULL,
  `Time` smallint(6) unsigned DEFAULT NULL,
  `DirectColor` int(11) DEFAULT NULL,
  `AmbientColor` int(11) DEFAULT NULL,
  `SkyTopColor` int(11) DEFAULT NULL,
  `SkyMiddleColor` int(11) DEFAULT NULL,
  `SkyBand1Color` int(11) DEFAULT NULL,
  `SkyBand2Color` int(11) DEFAULT NULL,
  `SkySmogColor` int(11) DEFAULT NULL,
  `SkyFogColor` int(11) DEFAULT NULL,
  `SunColor` int(11) DEFAULT NULL,
  `CloudSunColor` int(11) DEFAULT NULL,
  `CloudEmissiveColor` int(11) DEFAULT NULL,
  `CloudLayer1AmbientColor` int(11) DEFAULT NULL,
  `CloudLayer2AmbientColor` int(11) DEFAULT NULL,
  `OceanCloseColor` int(11) DEFAULT NULL,
  `OceanFarColor` int(11) DEFAULT NULL,
  `RiverCloseColor` int(11) DEFAULT NULL,
  `RiverFarColor` int(11) DEFAULT NULL,
  `ShadowOpacity` int(11) DEFAULT NULL,
  `FogEnd` float DEFAULT NULL,
  `FogScaler` float DEFAULT NULL,
  `FogDensity` float DEFAULT NULL,
  `FogHeight` float DEFAULT NULL,
  `FogHeightScaler` float DEFAULT NULL,
  `FogHeightDensity` float DEFAULT NULL,
  `SunFogAngle` float DEFAULT NULL,
  `CloudDensity` float DEFAULT NULL,
  `ColorGradingFileDataID` int(11) unsigned DEFAULT NULL,
  `HorizonAmbientColor` int(11) DEFAULT NULL,
  `GroundAmbientColor` int(11) DEFAULT NULL,
  `EndFogColor` int(11) unsigned DEFAULT NULL,
  `EndFogColorDistance` float DEFAULT NULL,
  `SunFogColor` int(11) unsigned DEFAULT NULL,
  `SunFogStrength` float DEFAULT NULL,
  `FogHeightColor` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.lightparams
DROP TABLE IF EXISTS `lightparams`;
CREATE TABLE IF NOT EXISTS `lightparams` (
  `OverrideCelestialSphere1` float DEFAULT NULL,
  `OverrideCelestialSphere2` float DEFAULT NULL,
  `OverrideCelestialSphere3` float DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `HighlightSky` tinyint(4) unsigned DEFAULT NULL,
  `LightSkyboxID` smallint(6) unsigned DEFAULT NULL,
  `CloudTypeID` tinyint(4) unsigned DEFAULT NULL,
  `Glow` float DEFAULT NULL,
  `WaterShallowAlpha` float DEFAULT NULL,
  `WaterDeepAlpha` float DEFAULT NULL,
  `OceanShallowAlpha` float DEFAULT NULL,
  `OceanDeepAlpha` float DEFAULT NULL,
  `Flags` tinyint(4) DEFAULT NULL,
  `SsaoSettingsID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.lightskybox
DROP TABLE IF EXISTS `lightskybox`;
CREATE TABLE IF NOT EXISTS `lightskybox` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `SkyboxFileDataID` int(11) DEFAULT NULL,
  `CelestialSkyboxFileDataID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.liquidmaterial
DROP TABLE IF EXISTS `liquidmaterial`;
CREATE TABLE IF NOT EXISTS `liquidmaterial` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Flags` tinyint(4) DEFAULT NULL,
  `LVF` tinyint(4) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.liquidobject
DROP TABLE IF EXISTS `liquidobject`;
CREATE TABLE IF NOT EXISTS `liquidobject` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `FlowDirection` float DEFAULT NULL,
  `FlowSpeed` float DEFAULT NULL,
  `LiquidTypeID` smallint(6) DEFAULT NULL,
  `Fishable` tinyint(4) unsigned DEFAULT NULL,
  `Reflection` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.liquidtype
DROP TABLE IF EXISTS `liquidtype`;
CREATE TABLE IF NOT EXISTS `liquidtype` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `Texture1` mediumtext DEFAULT NULL,
  `Texture2` mediumtext DEFAULT NULL,
  `Texture3` mediumtext DEFAULT NULL,
  `Texture4` mediumtext DEFAULT NULL,
  `Texture5` mediumtext DEFAULT NULL,
  `Texture6` mediumtext DEFAULT NULL,
  `Flags` smallint(6) unsigned DEFAULT NULL,
  `SoundBank` tinyint(4) unsigned DEFAULT NULL,
  `SoundID` int(11) unsigned DEFAULT NULL,
  `SpellID` int(11) unsigned DEFAULT NULL,
  `MaxDarkenDepth` float DEFAULT NULL,
  `FogDarkenIntensity` float DEFAULT NULL,
  `AmbDarkenIntensity` float DEFAULT NULL,
  `DirDarkenIntensity` float DEFAULT NULL,
  `LightID` smallint(6) unsigned DEFAULT NULL,
  `ParticleScale` float DEFAULT NULL,
  `ParticleMovement` tinyint(4) unsigned DEFAULT NULL,
  `ParticleTexSlots` tinyint(4) unsigned DEFAULT NULL,
  `MaterialID` tinyint(4) unsigned DEFAULT NULL,
  `MinimapStaticCol` int(11) DEFAULT NULL,
  `FrameCountTexture1` tinyint(4) unsigned DEFAULT NULL,
  `FrameCountTexture2` tinyint(4) unsigned DEFAULT NULL,
  `FrameCountTexture3` tinyint(4) unsigned DEFAULT NULL,
  `FrameCountTexture4` tinyint(4) unsigned DEFAULT NULL,
  `FrameCountTexture5` tinyint(4) unsigned DEFAULT NULL,
  `FrameCountTexture6` tinyint(4) unsigned DEFAULT NULL,
  `Color1` int(11) DEFAULT NULL,
  `Color2` int(11) DEFAULT NULL,
  `Float1` float DEFAULT NULL,
  `Float2` float DEFAULT NULL,
  `Float3` float DEFAULT NULL,
  `Float4` float DEFAULT NULL,
  `Float5` float DEFAULT NULL,
  `Float6` float DEFAULT NULL,
  `Float7` float DEFAULT NULL,
  `Float8` float DEFAULT NULL,
  `Float9` float DEFAULT NULL,
  `Float10` float DEFAULT NULL,
  `Float11` float DEFAULT NULL,
  `Float12` float DEFAULT NULL,
  `Float13` float DEFAULT NULL,
  `Float14` float DEFAULT NULL,
  `Float15` float DEFAULT NULL,
  `Float16` float DEFAULT NULL,
  `Float17` float DEFAULT NULL,
  `Float18` float DEFAULT NULL,
  `Int1` int(11) unsigned DEFAULT NULL,
  `Int2` int(11) unsigned DEFAULT NULL,
  `Int3` int(11) unsigned DEFAULT NULL,
  `Int4` int(11) unsigned DEFAULT NULL,
  `Coefficient1` float DEFAULT NULL,
  `Coefficient2` float DEFAULT NULL,
  `Coefficient3` float DEFAULT NULL,
  `Coefficient4` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.loadingscreens
DROP TABLE IF EXISTS `loadingscreens`;
CREATE TABLE IF NOT EXISTS `loadingscreens` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `NarrowScreenFileDataID` int(11) DEFAULT NULL,
  `WideScreenFileDataID` int(11) DEFAULT NULL,
  `WideScreen169FileDataID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.loadingscreentaxisplines
DROP TABLE IF EXISTS `loadingscreentaxisplines`;
CREATE TABLE IF NOT EXISTS `loadingscreentaxisplines` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PathID` smallint(6) unsigned DEFAULT NULL,
  `LegIndex` tinyint(4) unsigned DEFAULT NULL,
  `LoadingScreenID` smallint(6) unsigned DEFAULT NULL,
  `Locx1` float DEFAULT NULL,
  `Locx2` float DEFAULT NULL,
  `Locx3` float DEFAULT NULL,
  `Locx4` float DEFAULT NULL,
  `Locx5` float DEFAULT NULL,
  `Locx6` float DEFAULT NULL,
  `Locx7` float DEFAULT NULL,
  `Locx8` float DEFAULT NULL,
  `Locx9` float DEFAULT NULL,
  `Locx10` float DEFAULT NULL,
  `Locy1` float DEFAULT NULL,
  `Locy2` float DEFAULT NULL,
  `Locy3` float DEFAULT NULL,
  `Locy4` float DEFAULT NULL,
  `Locy5` float DEFAULT NULL,
  `Locy6` float DEFAULT NULL,
  `Locy7` float DEFAULT NULL,
  `Locy8` float DEFAULT NULL,
  `Locy9` float DEFAULT NULL,
  `Locy10` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.locale
DROP TABLE IF EXISTS `locale`;
CREATE TABLE IF NOT EXISTS `locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `WowLocale` tinyint(4) unsigned DEFAULT NULL,
  `FontFileDataID` int(11) DEFAULT NULL,
  `Secondary` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.lock
DROP TABLE IF EXISTS `lock`;
CREATE TABLE IF NOT EXISTS `lock` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Index1` int(11) DEFAULT NULL,
  `Index2` int(11) DEFAULT NULL,
  `Index3` int(11) DEFAULT NULL,
  `Index4` int(11) DEFAULT NULL,
  `Index5` int(11) DEFAULT NULL,
  `Index6` int(11) DEFAULT NULL,
  `Index7` int(11) DEFAULT NULL,
  `Index8` int(11) DEFAULT NULL,
  `Skill1` smallint(6) unsigned DEFAULT NULL,
  `Skill2` smallint(6) unsigned DEFAULT NULL,
  `Skill3` smallint(6) unsigned DEFAULT NULL,
  `Skill4` smallint(6) unsigned DEFAULT NULL,
  `Skill5` smallint(6) unsigned DEFAULT NULL,
  `Skill6` smallint(6) unsigned DEFAULT NULL,
  `Skill7` smallint(6) unsigned DEFAULT NULL,
  `Skill8` smallint(6) unsigned DEFAULT NULL,
  `Type1` tinyint(4) unsigned DEFAULT NULL,
  `Type2` tinyint(4) unsigned DEFAULT NULL,
  `Type3` tinyint(4) unsigned DEFAULT NULL,
  `Type4` tinyint(4) unsigned DEFAULT NULL,
  `Type5` tinyint(4) unsigned DEFAULT NULL,
  `Type6` tinyint(4) unsigned DEFAULT NULL,
  `Type7` tinyint(4) unsigned DEFAULT NULL,
  `Type8` tinyint(4) unsigned DEFAULT NULL,
  `Action1` tinyint(4) unsigned DEFAULT NULL,
  `Action2` tinyint(4) unsigned DEFAULT NULL,
  `Action3` tinyint(4) unsigned DEFAULT NULL,
  `Action4` tinyint(4) unsigned DEFAULT NULL,
  `Action5` tinyint(4) unsigned DEFAULT NULL,
  `Action6` tinyint(4) unsigned DEFAULT NULL,
  `Action7` tinyint(4) unsigned DEFAULT NULL,
  `Action8` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.locktype
DROP TABLE IF EXISTS `locktype`;
CREATE TABLE IF NOT EXISTS `locktype` (
  `Name` mediumtext DEFAULT NULL,
  `ResourceName` mediumtext DEFAULT NULL,
  `Verb` mediumtext DEFAULT NULL,
  `CursorName` mediumtext DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.locktype_locale
DROP TABLE IF EXISTS `locktype_locale`;
CREATE TABLE IF NOT EXISTS `locktype_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  `ResourceName_lang` mediumtext DEFAULT NULL,
  `Verb_lang` mediumtext DEFAULT NULL,
  `CursorName_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.mailtemplate
DROP TABLE IF EXISTS `mailtemplate`;
CREATE TABLE IF NOT EXISTS `mailtemplate` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Body` mediumtext DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.mailtemplate_locale
DROP TABLE IF EXISTS `mailtemplate_locale`;
CREATE TABLE IF NOT EXISTS `mailtemplate_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Body_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.manifestinterfaceactionicon
DROP TABLE IF EXISTS `manifestinterfaceactionicon`;
CREATE TABLE IF NOT EXISTS `manifestinterfaceactionicon` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.manifestinterfacedata
DROP TABLE IF EXISTS `manifestinterfacedata`;
CREATE TABLE IF NOT EXISTS `manifestinterfacedata` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `FilePath` mediumtext DEFAULT NULL,
  `FileName` mediumtext DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.manifestinterfaceitemicon
DROP TABLE IF EXISTS `manifestinterfaceitemicon`;
CREATE TABLE IF NOT EXISTS `manifestinterfaceitemicon` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.manifestinterfacetocdata
DROP TABLE IF EXISTS `manifestinterfacetocdata`;
CREATE TABLE IF NOT EXISTS `manifestinterfacetocdata` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `FilePath` mediumtext DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.manifestmp3
DROP TABLE IF EXISTS `manifestmp3`;
CREATE TABLE IF NOT EXISTS `manifestmp3` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.map
DROP TABLE IF EXISTS `map`;
CREATE TABLE IF NOT EXISTS `map` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Directory` mediumtext DEFAULT NULL,
  `MapName` mediumtext DEFAULT NULL,
  `MapDescription0` mediumtext DEFAULT NULL,
  `MapDescription1` mediumtext DEFAULT NULL,
  `PvpShortDescription` mediumtext DEFAULT NULL,
  `PvpLongDescription` mediumtext DEFAULT NULL,
  `MapType` tinyint(4) unsigned DEFAULT NULL,
  `InstanceType` tinyint(4) DEFAULT NULL,
  `ExpansionID` tinyint(4) unsigned DEFAULT NULL,
  `AreaTableID` smallint(6) unsigned DEFAULT NULL,
  `LoadingScreenID` smallint(6) DEFAULT NULL,
  `TimeOfDayOverride` smallint(6) DEFAULT NULL,
  `ParentMapID` smallint(6) DEFAULT NULL,
  `CosmeticParentMapID` smallint(6) DEFAULT NULL,
  `TimeOffset` tinyint(4) unsigned DEFAULT NULL,
  `MinimapIconScale` float DEFAULT NULL,
  `CorpseMapID` smallint(6) DEFAULT NULL,
  `MaxPlayers` tinyint(4) unsigned DEFAULT NULL,
  `WindSettingsID` smallint(6) DEFAULT NULL,
  `ZmpFileDataID` int(11) DEFAULT NULL,
  `Flags1` int(11) DEFAULT NULL,
  `Flags2` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.mapdifficulty
DROP TABLE IF EXISTS `mapdifficulty`;
CREATE TABLE IF NOT EXISTS `mapdifficulty` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Message` mediumtext DEFAULT NULL,
  `ItemContextPickerID` int(11) unsigned DEFAULT NULL,
  `ContentTuningID` int(11) DEFAULT NULL,
  `DifficultyID` tinyint(4) unsigned DEFAULT NULL,
  `LockID` tinyint(4) unsigned DEFAULT NULL,
  `ResetInterval` tinyint(4) unsigned DEFAULT NULL,
  `MaxPlayers` tinyint(4) unsigned DEFAULT NULL,
  `ItemContext` tinyint(4) unsigned DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `MapID` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.mapdifficultyxcondition
DROP TABLE IF EXISTS `mapdifficultyxcondition`;
CREATE TABLE IF NOT EXISTS `mapdifficultyxcondition` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `FailureDescription` mediumtext DEFAULT NULL,
  `PlayerConditionID` int(11) unsigned DEFAULT NULL,
  `OrderIndex` int(11) DEFAULT NULL,
  `MapDifficultyID` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.mapdifficultyxcondition_locale
DROP TABLE IF EXISTS `mapdifficultyxcondition_locale`;
CREATE TABLE IF NOT EXISTS `mapdifficultyxcondition_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `FailureDescription_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.mapdifficulty_locale
DROP TABLE IF EXISTS `mapdifficulty_locale`;
CREATE TABLE IF NOT EXISTS `mapdifficulty_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Message_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.maploadingscreen
DROP TABLE IF EXISTS `maploadingscreen`;
CREATE TABLE IF NOT EXISTS `maploadingscreen` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Min1` float DEFAULT NULL,
  `Min2` float DEFAULT NULL,
  `Max1` float DEFAULT NULL,
  `Max2` float DEFAULT NULL,
  `LoadingScreenID` int(11) DEFAULT NULL,
  `OrderIndex` int(11) DEFAULT NULL,
  `MapID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.map_locale
DROP TABLE IF EXISTS `map_locale`;
CREATE TABLE IF NOT EXISTS `map_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Directory_lang` mediumtext DEFAULT NULL,
  `MapName_lang` mediumtext DEFAULT NULL,
  `MapDescription0_lang` mediumtext DEFAULT NULL,
  `MapDescription1_lang` mediumtext DEFAULT NULL,
  `PvpShortDescription_lang` mediumtext DEFAULT NULL,
  `PvpLongDescription_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.material
DROP TABLE IF EXISTS `material`;
CREATE TABLE IF NOT EXISTS `material` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `FoleySoundID` int(11) unsigned DEFAULT NULL,
  `SheatheSoundID` int(11) unsigned DEFAULT NULL,
  `UnsheatheSoundID` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.missiletargeting
DROP TABLE IF EXISTS `missiletargeting`;
CREATE TABLE IF NOT EXISTS `missiletargeting` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `TurnLingering` float DEFAULT NULL,
  `PitchLingering` float DEFAULT NULL,
  `MouseLingering` float DEFAULT NULL,
  `EndOpacity` float DEFAULT NULL,
  `ArcSpeed` float DEFAULT NULL,
  `ArcRepeat` float DEFAULT NULL,
  `ArcWidth` float DEFAULT NULL,
  `ImpactTexRadius` float DEFAULT NULL,
  `ArcTextureFileID` int(11) DEFAULT NULL,
  `ImpactTextureFileID` int(11) DEFAULT NULL,
  `ImpactRadius1` float DEFAULT NULL,
  `ImpactRadius2` float DEFAULT NULL,
  `ImpactModelFileID1` int(11) DEFAULT NULL,
  `ImpactModelFileID2` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.modelfiledata
DROP TABLE IF EXISTS `modelfiledata`;
CREATE TABLE IF NOT EXISTS `modelfiledata` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `LodCount` tinyint(4) unsigned DEFAULT NULL,
  `ModelResourcesID` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.modifiertree
DROP TABLE IF EXISTS `modifiertree`;
CREATE TABLE IF NOT EXISTS `modifiertree` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Parent` int(11) unsigned DEFAULT NULL,
  `Operator` tinyint(4) DEFAULT NULL,
  `Amount` tinyint(4) DEFAULT NULL,
  `Type` tinyint(4) unsigned DEFAULT NULL,
  `Asset` int(11) DEFAULT NULL,
  `SecondaryAsset` int(11) DEFAULT NULL,
  `TertiaryAsset` tinyint(4) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.movie
DROP TABLE IF EXISTS `movie`;
CREATE TABLE IF NOT EXISTS `movie` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Volume` tinyint(4) unsigned DEFAULT NULL,
  `KeyID` tinyint(4) unsigned DEFAULT NULL,
  `AudioFileDataID` int(11) unsigned DEFAULT NULL,
  `SubtitleFileDataID` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.moviefiledata
DROP TABLE IF EXISTS `moviefiledata`;
CREATE TABLE IF NOT EXISTS `moviefiledata` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Resolution` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.movievariation
DROP TABLE IF EXISTS `movievariation`;
CREATE TABLE IF NOT EXISTS `movievariation` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `FileDataID` int(11) unsigned DEFAULT NULL,
  `OverlayFileDataID` int(11) unsigned DEFAULT NULL,
  `MovieID` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.namegen
DROP TABLE IF EXISTS `namegen`;
CREATE TABLE IF NOT EXISTS `namegen` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `RaceID` tinyint(4) unsigned DEFAULT NULL,
  `Sex` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.namesprofanity
DROP TABLE IF EXISTS `namesprofanity`;
CREATE TABLE IF NOT EXISTS `namesprofanity` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `Language` tinyint(4) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.namesreserved
DROP TABLE IF EXISTS `namesreserved`;
CREATE TABLE IF NOT EXISTS `namesreserved` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.namesreservedlocale
DROP TABLE IF EXISTS `namesreservedlocale`;
CREATE TABLE IF NOT EXISTS `namesreservedlocale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `LocaleMask` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.npcmodelitemslotdisplayinfo
DROP TABLE IF EXISTS `npcmodelitemslotdisplayinfo`;
CREATE TABLE IF NOT EXISTS `npcmodelitemslotdisplayinfo` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ItemDisplayInfoID` int(11) DEFAULT NULL,
  `ItemSlot` tinyint(4) DEFAULT NULL,
  `NpcModelID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.npcsounds
DROP TABLE IF EXISTS `npcsounds`;
CREATE TABLE IF NOT EXISTS `npcsounds` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SoundID1` int(11) unsigned DEFAULT NULL,
  `SoundID2` int(11) unsigned DEFAULT NULL,
  `SoundID3` int(11) unsigned DEFAULT NULL,
  `SoundID4` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.pagetextmaterial
DROP TABLE IF EXISTS `pagetextmaterial`;
CREATE TABLE IF NOT EXISTS `pagetextmaterial` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.paperdollitemframe
DROP TABLE IF EXISTS `paperdollitemframe`;
CREATE TABLE IF NOT EXISTS `paperdollitemframe` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ItemButtonName` mediumtext DEFAULT NULL,
  `SlotIconFileID` int(11) DEFAULT NULL,
  `SlotNumber` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.playercondition
DROP TABLE IF EXISTS `playercondition`;
CREATE TABLE IF NOT EXISTS `playercondition` (
  `RaceMask` bigint(20) DEFAULT NULL,
  `Failure_description` mediumtext DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `MinLevel` smallint(6) unsigned DEFAULT NULL,
  `MaxLevel` smallint(6) unsigned DEFAULT NULL,
  `ClassMask` int(11) DEFAULT NULL,
  `SkillLogic` int(11) unsigned DEFAULT NULL,
  `LanguageID` tinyint(4) unsigned DEFAULT NULL,
  `MinLanguage` tinyint(4) unsigned DEFAULT NULL,
  `MaxLanguage` int(11) DEFAULT NULL,
  `MaxFactionID` smallint(6) unsigned DEFAULT NULL,
  `MaxReputation` tinyint(4) unsigned DEFAULT NULL,
  `ReputationLogic` int(11) unsigned DEFAULT NULL,
  `CurrentPvpFaction` tinyint(4) DEFAULT NULL,
  `PvpMedal` tinyint(4) unsigned DEFAULT NULL,
  `PrevQuestLogic` int(11) unsigned DEFAULT NULL,
  `CurrQuestLogic` int(11) unsigned DEFAULT NULL,
  `CurrentCompletedQuestLogic` int(11) unsigned DEFAULT NULL,
  `SpellLogic` int(11) unsigned DEFAULT NULL,
  `ItemLogic` int(11) unsigned DEFAULT NULL,
  `ItemFlags` tinyint(4) unsigned DEFAULT NULL,
  `AuraSpellLogic` int(11) unsigned DEFAULT NULL,
  `WorldStateExpressionID` smallint(6) unsigned DEFAULT NULL,
  `WeatherID` tinyint(4) unsigned DEFAULT NULL,
  `PartyStatus` tinyint(4) unsigned DEFAULT NULL,
  `LifetimeMaxPVPRank` tinyint(4) unsigned DEFAULT NULL,
  `AchievementLogic` int(11) unsigned DEFAULT NULL,
  `Gender` tinyint(4) DEFAULT NULL,
  `NativeGender` tinyint(4) DEFAULT NULL,
  `AreaLogic` int(11) unsigned DEFAULT NULL,
  `LfgLogic` int(11) unsigned DEFAULT NULL,
  `CurrencyLogic` int(11) unsigned DEFAULT NULL,
  `QuestKillID` smallint(6) unsigned DEFAULT NULL,
  `QuestKillLogic` int(11) unsigned DEFAULT NULL,
  `MinExpansionLevel` tinyint(4) DEFAULT NULL,
  `MaxExpansionLevel` tinyint(4) DEFAULT NULL,
  `MinAvgItemLevel` int(11) DEFAULT NULL,
  `MaxAvgItemLevel` int(11) DEFAULT NULL,
  `MinAvgEquippedItemLevel` smallint(6) unsigned DEFAULT NULL,
  `MaxAvgEquippedItemLevel` smallint(6) unsigned DEFAULT NULL,
  `PhaseUseFlags` tinyint(4) unsigned DEFAULT NULL,
  `PhaseID` smallint(6) unsigned DEFAULT NULL,
  `PhaseGroupID` int(11) unsigned DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `ChrSpecializationIndex` tinyint(4) DEFAULT NULL,
  `ChrSpecializationRole` tinyint(4) DEFAULT NULL,
  `ModifierTreeID` int(11) unsigned DEFAULT NULL,
  `PowerType` tinyint(4) DEFAULT NULL,
  `PowerTypeComp` tinyint(4) unsigned DEFAULT NULL,
  `PowerTypeValue` tinyint(4) unsigned DEFAULT NULL,
  `WeaponSubclassMask` int(11) DEFAULT NULL,
  `MaxGuildLevel` tinyint(4) unsigned DEFAULT NULL,
  `MinGuildLevel` tinyint(4) unsigned DEFAULT NULL,
  `MaxExpansionTier` tinyint(4) DEFAULT NULL,
  `MinExpansionTier` tinyint(4) DEFAULT NULL,
  `MinPVPRank` tinyint(4) unsigned DEFAULT NULL,
  `MaxPVPRank` tinyint(4) unsigned DEFAULT NULL,
  `SkillID1` smallint(6) unsigned DEFAULT NULL,
  `SkillID2` smallint(6) unsigned DEFAULT NULL,
  `SkillID3` smallint(6) unsigned DEFAULT NULL,
  `SkillID4` smallint(6) unsigned DEFAULT NULL,
  `MinSkill1` smallint(6) unsigned DEFAULT NULL,
  `MinSkill2` smallint(6) unsigned DEFAULT NULL,
  `MinSkill3` smallint(6) unsigned DEFAULT NULL,
  `MinSkill4` smallint(6) unsigned DEFAULT NULL,
  `MaxSkill1` smallint(6) unsigned DEFAULT NULL,
  `MaxSkill2` smallint(6) unsigned DEFAULT NULL,
  `MaxSkill3` smallint(6) unsigned DEFAULT NULL,
  `MaxSkill4` smallint(6) unsigned DEFAULT NULL,
  `MinFactionID1` int(11) unsigned DEFAULT NULL,
  `MinFactionID2` int(11) unsigned DEFAULT NULL,
  `MinFactionID3` int(11) unsigned DEFAULT NULL,
  `MinReputation1` tinyint(4) unsigned DEFAULT NULL,
  `MinReputation2` tinyint(4) unsigned DEFAULT NULL,
  `MinReputation3` tinyint(4) unsigned DEFAULT NULL,
  `PrevQuestID1` smallint(6) unsigned DEFAULT NULL,
  `PrevQuestID2` smallint(6) unsigned DEFAULT NULL,
  `PrevQuestID3` smallint(6) unsigned DEFAULT NULL,
  `PrevQuestID4` smallint(6) unsigned DEFAULT NULL,
  `CurrQuestID1` smallint(6) unsigned DEFAULT NULL,
  `CurrQuestID2` smallint(6) unsigned DEFAULT NULL,
  `CurrQuestID3` smallint(6) unsigned DEFAULT NULL,
  `CurrQuestID4` smallint(6) unsigned DEFAULT NULL,
  `CurrentCompletedQuestID1` smallint(6) unsigned DEFAULT NULL,
  `CurrentCompletedQuestID2` smallint(6) unsigned DEFAULT NULL,
  `CurrentCompletedQuestID3` smallint(6) unsigned DEFAULT NULL,
  `CurrentCompletedQuestID4` smallint(6) unsigned DEFAULT NULL,
  `SpellID1` int(11) DEFAULT NULL,
  `SpellID2` int(11) DEFAULT NULL,
  `SpellID3` int(11) DEFAULT NULL,
  `SpellID4` int(11) DEFAULT NULL,
  `ItemID1` int(11) DEFAULT NULL,
  `ItemID2` int(11) DEFAULT NULL,
  `ItemID3` int(11) DEFAULT NULL,
  `ItemID4` int(11) DEFAULT NULL,
  `ItemCount1` int(11) unsigned DEFAULT NULL,
  `ItemCount2` int(11) unsigned DEFAULT NULL,
  `ItemCount3` int(11) unsigned DEFAULT NULL,
  `ItemCount4` int(11) unsigned DEFAULT NULL,
  `Explored1` smallint(6) unsigned DEFAULT NULL,
  `Explored2` smallint(6) unsigned DEFAULT NULL,
  `Time1` int(11) unsigned DEFAULT NULL,
  `Time2` int(11) unsigned DEFAULT NULL,
  `AuraSpellID1` int(11) DEFAULT NULL,
  `AuraSpellID2` int(11) DEFAULT NULL,
  `AuraSpellID3` int(11) DEFAULT NULL,
  `AuraSpellID4` int(11) DEFAULT NULL,
  `AuraStacks1` tinyint(4) unsigned DEFAULT NULL,
  `AuraStacks2` tinyint(4) unsigned DEFAULT NULL,
  `AuraStacks3` tinyint(4) unsigned DEFAULT NULL,
  `AuraStacks4` tinyint(4) unsigned DEFAULT NULL,
  `Achievement1` smallint(6) unsigned DEFAULT NULL,
  `Achievement2` smallint(6) unsigned DEFAULT NULL,
  `Achievement3` smallint(6) unsigned DEFAULT NULL,
  `Achievement4` smallint(6) unsigned DEFAULT NULL,
  `AreaID1` smallint(6) unsigned DEFAULT NULL,
  `AreaID2` smallint(6) unsigned DEFAULT NULL,
  `AreaID3` smallint(6) unsigned DEFAULT NULL,
  `AreaID4` smallint(6) unsigned DEFAULT NULL,
  `LfgStatus1` tinyint(4) unsigned DEFAULT NULL,
  `LfgStatus2` tinyint(4) unsigned DEFAULT NULL,
  `LfgStatus3` tinyint(4) unsigned DEFAULT NULL,
  `LfgStatus4` tinyint(4) unsigned DEFAULT NULL,
  `LfgCompare1` tinyint(4) unsigned DEFAULT NULL,
  `LfgCompare2` tinyint(4) unsigned DEFAULT NULL,
  `LfgCompare3` tinyint(4) unsigned DEFAULT NULL,
  `LfgCompare4` tinyint(4) unsigned DEFAULT NULL,
  `LfgValue1` int(11) unsigned DEFAULT NULL,
  `LfgValue2` int(11) unsigned DEFAULT NULL,
  `LfgValue3` int(11) unsigned DEFAULT NULL,
  `LfgValue4` int(11) unsigned DEFAULT NULL,
  `CurrencyID1` int(11) unsigned DEFAULT NULL,
  `CurrencyID2` int(11) unsigned DEFAULT NULL,
  `CurrencyID3` int(11) unsigned DEFAULT NULL,
  `CurrencyID4` int(11) unsigned DEFAULT NULL,
  `CurrencyCount1` int(11) unsigned DEFAULT NULL,
  `CurrencyCount2` int(11) unsigned DEFAULT NULL,
  `CurrencyCount3` int(11) unsigned DEFAULT NULL,
  `CurrencyCount4` int(11) unsigned DEFAULT NULL,
  `QuestKillMonster1` int(11) unsigned DEFAULT NULL,
  `QuestKillMonster2` int(11) unsigned DEFAULT NULL,
  `QuestKillMonster3` int(11) unsigned DEFAULT NULL,
  `QuestKillMonster4` int(11) unsigned DEFAULT NULL,
  `QuestKillMonster5` int(11) unsigned DEFAULT NULL,
  `QuestKillMonster6` int(11) unsigned DEFAULT NULL,
  `MovementFlags1` int(11) DEFAULT NULL,
  `MovementFlags2` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.playercondition_locale
DROP TABLE IF EXISTS `playercondition_locale`;
CREATE TABLE IF NOT EXISTS `playercondition_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Failure_description_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.positioner
DROP TABLE IF EXISTS `positioner`;
CREATE TABLE IF NOT EXISTS `positioner` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `FirstStateID` smallint(6) unsigned DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `StartLife` float DEFAULT NULL,
  `StartLifePercent` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.positionerstate
DROP TABLE IF EXISTS `positionerstate`;
CREATE TABLE IF NOT EXISTS `positionerstate` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `NextStateID` int(11) unsigned DEFAULT NULL,
  `TransformMatrixID` int(11) unsigned DEFAULT NULL,
  `PosEntryID` int(11) unsigned DEFAULT NULL,
  `RotEntryID` int(11) unsigned DEFAULT NULL,
  `ScaleEntryID` int(11) unsigned DEFAULT NULL,
  `Flags` int(11) unsigned DEFAULT NULL,
  `EndLife` float DEFAULT NULL,
  `EndLifePercent` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.positionerstateentry
DROP TABLE IF EXISTS `positionerstateentry`;
CREATE TABLE IF NOT EXISTS `positionerstateentry` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ParamA` float DEFAULT NULL,
  `ParamB` float DEFAULT NULL,
  `CurveID` int(11) unsigned DEFAULT NULL,
  `SrcValType` smallint(6) DEFAULT NULL,
  `SrcVal` smallint(6) DEFAULT NULL,
  `DstValType` smallint(6) DEFAULT NULL,
  `DstVal` smallint(6) DEFAULT NULL,
  `EntryType` tinyint(4) DEFAULT NULL,
  `Style` tinyint(4) DEFAULT NULL,
  `SrcType` tinyint(4) DEFAULT NULL,
  `DstType` tinyint(4) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.powertype
DROP TABLE IF EXISTS `powertype`;
CREATE TABLE IF NOT EXISTS `powertype` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `NameGlobalStringTag` mediumtext DEFAULT NULL,
  `CostGlobalStringTag` mediumtext DEFAULT NULL,
  `PowerTypeEnum` tinyint(4) DEFAULT NULL,
  `MinPower` tinyint(4) DEFAULT NULL,
  `MaxBasePower` int(11) unsigned DEFAULT NULL,
  `CenterPower` tinyint(4) DEFAULT NULL,
  `DefaultPower` tinyint(4) DEFAULT NULL,
  `DisplayModifier` smallint(6) unsigned DEFAULT NULL,
  `RegenInterruptTimeMS` smallint(6) DEFAULT NULL,
  `RegenPeace` float DEFAULT NULL,
  `RegenCombat` float DEFAULT NULL,
  `Flags` smallint(6) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.pvpdifficulty
DROP TABLE IF EXISTS `pvpdifficulty`;
CREATE TABLE IF NOT EXISTS `pvpdifficulty` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `RangeIndex` tinyint(4) unsigned DEFAULT NULL,
  `MinLevel` tinyint(4) unsigned DEFAULT NULL,
  `MaxLevel` tinyint(4) unsigned DEFAULT NULL,
  `MapID` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.questfactionreward
DROP TABLE IF EXISTS `questfactionreward`;
CREATE TABLE IF NOT EXISTS `questfactionreward` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Difficulty1` smallint(6) DEFAULT NULL,
  `Difficulty2` smallint(6) DEFAULT NULL,
  `Difficulty3` smallint(6) DEFAULT NULL,
  `Difficulty4` smallint(6) DEFAULT NULL,
  `Difficulty5` smallint(6) DEFAULT NULL,
  `Difficulty6` smallint(6) DEFAULT NULL,
  `Difficulty7` smallint(6) DEFAULT NULL,
  `Difficulty8` smallint(6) DEFAULT NULL,
  `Difficulty9` smallint(6) DEFAULT NULL,
  `Difficulty10` smallint(6) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.questfeedbackeffect
DROP TABLE IF EXISTS `questfeedbackeffect`;
CREATE TABLE IF NOT EXISTS `questfeedbackeffect` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `FileDataID` int(11) unsigned DEFAULT NULL,
  `MinimapAtlasMemberID` smallint(6) unsigned DEFAULT NULL,
  `AttachPoint` tinyint(4) unsigned DEFAULT NULL,
  `PassiveHighlightColorType` tinyint(4) unsigned DEFAULT NULL,
  `Priority` tinyint(4) unsigned DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.questinfo
DROP TABLE IF EXISTS `questinfo`;
CREATE TABLE IF NOT EXISTS `questinfo` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `InfoName` mediumtext DEFAULT NULL,
  `Type` tinyint(4) DEFAULT NULL,
  `Modifiers` tinyint(4) unsigned DEFAULT NULL,
  `Profession` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.questinfo_locale
DROP TABLE IF EXISTS `questinfo_locale`;
CREATE TABLE IF NOT EXISTS `questinfo_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `InfoName_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.questmoneyreward
DROP TABLE IF EXISTS `questmoneyreward`;
CREATE TABLE IF NOT EXISTS `questmoneyreward` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Difficulty1` int(11) unsigned DEFAULT NULL,
  `Difficulty2` int(11) unsigned DEFAULT NULL,
  `Difficulty3` int(11) unsigned DEFAULT NULL,
  `Difficulty4` int(11) unsigned DEFAULT NULL,
  `Difficulty5` int(11) unsigned DEFAULT NULL,
  `Difficulty6` int(11) unsigned DEFAULT NULL,
  `Difficulty7` int(11) unsigned DEFAULT NULL,
  `Difficulty8` int(11) unsigned DEFAULT NULL,
  `Difficulty9` int(11) unsigned DEFAULT NULL,
  `Difficulty10` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.questsort
DROP TABLE IF EXISTS `questsort`;
CREATE TABLE IF NOT EXISTS `questsort` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SortName` mediumtext DEFAULT NULL,
  `UiOrderIndex` tinyint(4) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.questsort_locale
DROP TABLE IF EXISTS `questsort_locale`;
CREATE TABLE IF NOT EXISTS `questsort_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `SortName_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.questv2
DROP TABLE IF EXISTS `questv2`;
CREATE TABLE IF NOT EXISTS `questv2` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UniqueBitFlag` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.questxp
DROP TABLE IF EXISTS `questxp`;
CREATE TABLE IF NOT EXISTS `questxp` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Difficulty1` smallint(6) unsigned DEFAULT NULL,
  `Difficulty2` smallint(6) unsigned DEFAULT NULL,
  `Difficulty3` smallint(6) unsigned DEFAULT NULL,
  `Difficulty4` smallint(6) unsigned DEFAULT NULL,
  `Difficulty5` smallint(6) unsigned DEFAULT NULL,
  `Difficulty6` smallint(6) unsigned DEFAULT NULL,
  `Difficulty7` smallint(6) unsigned DEFAULT NULL,
  `Difficulty8` smallint(6) unsigned DEFAULT NULL,
  `Difficulty9` smallint(6) unsigned DEFAULT NULL,
  `Difficulty10` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.randproppoints
DROP TABLE IF EXISTS `randproppoints`;
CREATE TABLE IF NOT EXISTS `randproppoints` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `DamageReplaceStat` int(11) DEFAULT NULL,
  `Epic1` int(11) unsigned DEFAULT NULL,
  `Epic2` int(11) unsigned DEFAULT NULL,
  `Epic3` int(11) unsigned DEFAULT NULL,
  `Epic4` int(11) unsigned DEFAULT NULL,
  `Epic5` int(11) unsigned DEFAULT NULL,
  `Superior1` int(11) unsigned DEFAULT NULL,
  `Superior2` int(11) unsigned DEFAULT NULL,
  `Superior3` int(11) unsigned DEFAULT NULL,
  `Superior4` int(11) unsigned DEFAULT NULL,
  `Superior5` int(11) unsigned DEFAULT NULL,
  `Good1` int(11) unsigned DEFAULT NULL,
  `Good2` int(11) unsigned DEFAULT NULL,
  `Good3` int(11) unsigned DEFAULT NULL,
  `Good4` int(11) unsigned DEFAULT NULL,
  `Good5` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.relicslottierrequirement
DROP TABLE IF EXISTS `relicslottierrequirement`;
CREATE TABLE IF NOT EXISTS `relicslottierrequirement` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `RelicIndex` tinyint(4) unsigned DEFAULT NULL,
  `RelicTier` tinyint(4) unsigned DEFAULT NULL,
  `PlayerConditionID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.relictalent
DROP TABLE IF EXISTS `relictalent`;
CREATE TABLE IF NOT EXISTS `relictalent` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Type` int(11) DEFAULT NULL,
  `ArtifactPowerID` smallint(6) unsigned DEFAULT NULL,
  `ArtifactPowerLabel` tinyint(4) unsigned DEFAULT NULL,
  `PVal` int(11) DEFAULT NULL,
  `Flags` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.resistances
DROP TABLE IF EXISTS `resistances`;
CREATE TABLE IF NOT EXISTS `resistances` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `FizzleSoundID` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.resistances_locale
DROP TABLE IF EXISTS `resistances_locale`;
CREATE TABLE IF NOT EXISTS `resistances_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.ribbonquality
DROP TABLE IF EXISTS `ribbonquality`;
CREATE TABLE IF NOT EXISTS `ribbonquality` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `NumStrips` tinyint(4) unsigned DEFAULT NULL,
  `MaxSampleTimeDelta` float DEFAULT NULL,
  `AngleThreshold` float DEFAULT NULL,
  `MinDistancePerSlice` float DEFAULT NULL,
  `Flags` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.screeneffect
DROP TABLE IF EXISTS `screeneffect`;
CREATE TABLE IF NOT EXISTS `screeneffect` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `Param1` int(11) DEFAULT NULL,
  `Param2` int(11) DEFAULT NULL,
  `Param3` int(11) DEFAULT NULL,
  `Param4` int(11) DEFAULT NULL,
  `Effect` tinyint(4) DEFAULT NULL,
  `FullScreenEffectID` int(11) unsigned DEFAULT NULL,
  `LightParamsID` smallint(6) unsigned DEFAULT NULL,
  `LightParamsFadeIn` smallint(6) unsigned DEFAULT NULL,
  `LightParamsFadeOut` smallint(6) unsigned DEFAULT NULL,
  `SoundAmbienceID` int(11) unsigned DEFAULT NULL,
  `ZoneMusicID` int(11) unsigned DEFAULT NULL,
  `TimeOfDayOverride` smallint(6) DEFAULT NULL,
  `EffectMask` tinyint(4) DEFAULT NULL,
  `LightFlags` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.servermessages
DROP TABLE IF EXISTS `servermessages`;
CREATE TABLE IF NOT EXISTS `servermessages` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Text` mediumtext DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.servermessages_locale
DROP TABLE IF EXISTS `servermessages_locale`;
CREATE TABLE IF NOT EXISTS `servermessages_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Text_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.skillline
DROP TABLE IF EXISTS `skillline`;
CREATE TABLE IF NOT EXISTS `skillline` (
  `DisplayName` mediumtext DEFAULT NULL,
  `AlternateVerb` mediumtext DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `HordeDisplayName` mediumtext DEFAULT NULL,
  `NeutralDisplayName` mediumtext DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CategoryID` tinyint(4) DEFAULT NULL,
  `SpellIconFileID` int(11) DEFAULT NULL,
  `CanLink` tinyint(4) DEFAULT NULL,
  `ParentSkillLineID` int(11) unsigned DEFAULT NULL,
  `ParentTierIndex` int(11) DEFAULT NULL,
  `Flags` smallint(6) unsigned DEFAULT NULL,
  `SpellBookSpellID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.skilllineability
DROP TABLE IF EXISTS `skilllineability`;
CREATE TABLE IF NOT EXISTS `skilllineability` (
  `RaceMask` bigint(20) DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SkillLine` smallint(6) DEFAULT NULL,
  `Spell` int(11) DEFAULT NULL,
  `MinSkillLineRank` smallint(6) DEFAULT NULL,
  `ClassMask` int(11) DEFAULT NULL,
  `SupercedesSpell` int(11) DEFAULT NULL,
  `AcquireMethod` tinyint(4) DEFAULT NULL,
  `TrivialSkillLineRankHigh` smallint(6) DEFAULT NULL,
  `TrivialSkillLineRankLow` smallint(6) DEFAULT NULL,
  `Flags` tinyint(4) DEFAULT NULL,
  `NumSkillUps` tinyint(4) DEFAULT NULL,
  `UniqueBit` smallint(6) DEFAULT NULL,
  `TradeSkillCategoryID` smallint(6) DEFAULT NULL,
  `SkillupSkillLineID` smallint(6) DEFAULT NULL,
  `CharacterPoints1` int(11) DEFAULT NULL,
  `CharacterPoints2` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.skillline_locale
DROP TABLE IF EXISTS `skillline_locale`;
CREATE TABLE IF NOT EXISTS `skillline_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `DisplayName_lang` mediumtext DEFAULT NULL,
  `AlternateVerb_lang` mediumtext DEFAULT NULL,
  `Description_lang` mediumtext DEFAULT NULL,
  `HordeDisplayName_lang` mediumtext DEFAULT NULL,
  `NeutralDisplayName_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.skillraceclassinfo
DROP TABLE IF EXISTS `skillraceclassinfo`;
CREATE TABLE IF NOT EXISTS `skillraceclassinfo` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `RaceMask` bigint(20) DEFAULT NULL,
  `SkillID` smallint(6) DEFAULT NULL,
  `ClassMask` int(11) DEFAULT NULL,
  `Flags` smallint(6) unsigned DEFAULT NULL,
  `Availability` tinyint(4) DEFAULT NULL,
  `MinLevel` tinyint(4) DEFAULT NULL,
  `SkillTierID` smallint(6) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.soundambience
DROP TABLE IF EXISTS `soundambience`;
CREATE TABLE IF NOT EXISTS `soundambience` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `SoundFilterID` int(11) unsigned DEFAULT NULL,
  `FlavorSoundFilterID` int(11) unsigned DEFAULT NULL,
  `AmbienceID1` int(11) unsigned DEFAULT NULL,
  `AmbienceID2` int(11) unsigned DEFAULT NULL,
  `AmbienceStartID1` int(11) unsigned DEFAULT NULL,
  `AmbienceStartID2` int(11) unsigned DEFAULT NULL,
  `AmbienceStopID1` int(11) unsigned DEFAULT NULL,
  `AmbienceStopID2` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.soundbus
DROP TABLE IF EXISTS `soundbus`;
CREATE TABLE IF NOT EXISTS `soundbus` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `DefaultPriority` tinyint(4) unsigned DEFAULT NULL,
  `DefaultPriorityPenalty` tinyint(4) unsigned DEFAULT NULL,
  `DefaultVolume` float DEFAULT NULL,
  `DefaultPlaybackLimit` tinyint(4) unsigned DEFAULT NULL,
  `BusEnumID` tinyint(4) DEFAULT NULL,
  `Parent` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.soundkit
DROP TABLE IF EXISTS `soundkit`;
CREATE TABLE IF NOT EXISTS `soundkit` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SoundType` tinyint(4) unsigned DEFAULT NULL,
  `VolumeFloat` float DEFAULT NULL,
  `Flags` smallint(6) unsigned DEFAULT NULL,
  `MinDistance` float DEFAULT NULL,
  `DistanceCutoff` float DEFAULT NULL,
  `EAXDef` tinyint(4) unsigned DEFAULT NULL,
  `SoundKitAdvancedID` int(11) unsigned DEFAULT NULL,
  `VolumeVariationPlus` float DEFAULT NULL,
  `VolumeVariationMinus` float DEFAULT NULL,
  `PitchVariationPlus` float DEFAULT NULL,
  `PitchVariationMinus` float DEFAULT NULL,
  `DialogType` tinyint(4) DEFAULT NULL,
  `PitchAdjust` float DEFAULT NULL,
  `BusOverwriteID` smallint(6) unsigned DEFAULT NULL,
  `MaxInstances` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.soundkitadvanced
DROP TABLE IF EXISTS `soundkitadvanced`;
CREATE TABLE IF NOT EXISTS `soundkitadvanced` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SoundKitID` int(11) unsigned DEFAULT NULL,
  `InnerRadius2D` float DEFAULT NULL,
  `OuterRadius2D` float DEFAULT NULL,
  `TimeA` int(11) unsigned DEFAULT NULL,
  `TimeB` int(11) unsigned DEFAULT NULL,
  `TimeC` int(11) unsigned DEFAULT NULL,
  `TimeD` int(11) unsigned DEFAULT NULL,
  `RandomOffsetRange` int(11) DEFAULT NULL,
  `Usage` tinyint(4) DEFAULT NULL,
  `TimeIntervalMin` int(11) unsigned DEFAULT NULL,
  `TimeIntervalMax` int(11) unsigned DEFAULT NULL,
  `DelayMin` int(11) unsigned DEFAULT NULL,
  `DelayMax` int(11) unsigned DEFAULT NULL,
  `VolumeSliderCategory` tinyint(4) unsigned DEFAULT NULL,
  `DuckToSFX` float DEFAULT NULL,
  `DuckToMusic` float DEFAULT NULL,
  `DuckToAmbience` float DEFAULT NULL,
  `DuckToDialog` float DEFAULT NULL,
  `DuckToSuppressors` float DEFAULT NULL,
  `DuckToCinematicSFX` float DEFAULT NULL,
  `DuckToCinematicMusic` float DEFAULT NULL,
  `InnerRadiusOfInfluence` float DEFAULT NULL,
  `OuterRadiusOfInfluence` float DEFAULT NULL,
  `TimeToDuck` int(11) unsigned DEFAULT NULL,
  `TimeToUnduck` int(11) unsigned DEFAULT NULL,
  `InsideAngle` float DEFAULT NULL,
  `OutsideAngle` float DEFAULT NULL,
  `OutsideVolume` float DEFAULT NULL,
  `MinRandomPosOffset` tinyint(4) unsigned DEFAULT NULL,
  `MaxRandomPosOffset` smallint(6) unsigned DEFAULT NULL,
  `MsOffset` int(11) DEFAULT NULL,
  `TimeCooldownMin` int(11) unsigned DEFAULT NULL,
  `TimeCooldownMax` int(11) unsigned DEFAULT NULL,
  `MaxInstancesBehavior` tinyint(4) unsigned DEFAULT NULL,
  `VolumeControlType` tinyint(4) unsigned DEFAULT NULL,
  `VolumeFadeInTimeMin` int(11) DEFAULT NULL,
  `VolumeFadeInTimeMax` int(11) DEFAULT NULL,
  `VolumeFadeInCurveID` int(11) unsigned DEFAULT NULL,
  `VolumeFadeOutTimeMin` int(11) DEFAULT NULL,
  `VolumeFadeOutTimeMax` int(11) DEFAULT NULL,
  `VolumeFadeOutCurveID` int(11) unsigned DEFAULT NULL,
  `ChanceToPlay` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.soundkitentry
DROP TABLE IF EXISTS `soundkitentry`;
CREATE TABLE IF NOT EXISTS `soundkitentry` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SoundKitID` int(11) unsigned DEFAULT NULL,
  `FileDataID` int(11) DEFAULT NULL,
  `Frequency` tinyint(4) unsigned DEFAULT NULL,
  `Volume` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.soundkitname
DROP TABLE IF EXISTS `soundkitname`;
CREATE TABLE IF NOT EXISTS `soundkitname` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.soundproviderpreferences
DROP TABLE IF EXISTS `soundproviderpreferences`;
CREATE TABLE IF NOT EXISTS `soundproviderpreferences` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Description` mediumtext DEFAULT NULL,
  `EAXEnvironmentSelection` tinyint(4) DEFAULT NULL,
  `EAXDecayTime` float DEFAULT NULL,
  `EAX2EnvironmentSize` float DEFAULT NULL,
  `EAX2EnvironmentDiffusion` float DEFAULT NULL,
  `EAX2Room` smallint(6) DEFAULT NULL,
  `EAX2RoomHF` smallint(6) DEFAULT NULL,
  `EAX2DecayHFRatio` float DEFAULT NULL,
  `EAX2Reflections` smallint(6) DEFAULT NULL,
  `EAX2ReflectionsDelay` float DEFAULT NULL,
  `EAX2Reverb` smallint(6) DEFAULT NULL,
  `EAX2ReverbDelay` float DEFAULT NULL,
  `EAX2RoomRolloff` float DEFAULT NULL,
  `EAX2AirAbsorption` float DEFAULT NULL,
  `EAX3RoomLF` tinyint(4) DEFAULT NULL,
  `EAX3DecayLFRatio` float DEFAULT NULL,
  `EAX3EchoTime` float DEFAULT NULL,
  `EAX3EchoDepth` float DEFAULT NULL,
  `EAX3ModulationTime` float DEFAULT NULL,
  `EAX3ModulationDepth` float DEFAULT NULL,
  `EAX3HFReference` float DEFAULT NULL,
  `EAX3LFReference` float DEFAULT NULL,
  `Flags` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spammessages
DROP TABLE IF EXISTS `spammessages`;
CREATE TABLE IF NOT EXISTS `spammessages` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Text` mediumtext DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spell
DROP TABLE IF EXISTS `spell`;
CREATE TABLE IF NOT EXISTS `spell` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `NameSubtext` mediumtext DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `AuraDescription` mediumtext DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellauraoptions
DROP TABLE IF EXISTS `spellauraoptions`;
CREATE TABLE IF NOT EXISTS `spellauraoptions` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `DifficultyID` tinyint(4) unsigned DEFAULT NULL,
  `CumulativeAura` smallint(6) unsigned DEFAULT NULL,
  `ProcCategoryRecovery` int(11) DEFAULT NULL,
  `ProcChance` tinyint(4) unsigned DEFAULT NULL,
  `ProcCharges` int(11) DEFAULT NULL,
  `SpellProcsPerMinuteID` smallint(6) unsigned DEFAULT NULL,
  `ProcTypeMask1` int(11) DEFAULT NULL,
  `ProcTypeMask2` int(11) DEFAULT NULL,
  `SpellID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellaurarestrictions
DROP TABLE IF EXISTS `spellaurarestrictions`;
CREATE TABLE IF NOT EXISTS `spellaurarestrictions` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `DifficultyID` tinyint(4) unsigned DEFAULT NULL,
  `CasterAuraState` tinyint(4) unsigned DEFAULT NULL,
  `TargetAuraState` tinyint(4) unsigned DEFAULT NULL,
  `ExcludeCasterAuraState` tinyint(4) unsigned DEFAULT NULL,
  `ExcludeTargetAuraState` tinyint(4) unsigned DEFAULT NULL,
  `CasterAuraSpell` int(11) DEFAULT NULL,
  `TargetAuraSpell` int(11) DEFAULT NULL,
  `ExcludeCasterAuraSpell` int(11) DEFAULT NULL,
  `ExcludeTargetAuraSpell` int(11) DEFAULT NULL,
  `SpellID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellauravisibility
DROP TABLE IF EXISTS `spellauravisibility`;
CREATE TABLE IF NOT EXISTS `spellauravisibility` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Type` tinyint(4) DEFAULT NULL,
  `Flags` tinyint(4) DEFAULT NULL,
  `SpellID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellcastingrequirements
DROP TABLE IF EXISTS `spellcastingrequirements`;
CREATE TABLE IF NOT EXISTS `spellcastingrequirements` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SpellID` int(11) DEFAULT NULL,
  `FacingCasterFlags` tinyint(4) unsigned DEFAULT NULL,
  `MinFactionID` smallint(6) unsigned DEFAULT NULL,
  `MinReputation` tinyint(4) DEFAULT NULL,
  `RequiredAreasID` smallint(6) unsigned DEFAULT NULL,
  `RequiredAuraVision` tinyint(4) unsigned DEFAULT NULL,
  `RequiresSpellFocus` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellcasttimes
DROP TABLE IF EXISTS `spellcasttimes`;
CREATE TABLE IF NOT EXISTS `spellcasttimes` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Base` int(11) DEFAULT NULL,
  `PerLevel` smallint(6) DEFAULT NULL,
  `Minimum` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellcategories
DROP TABLE IF EXISTS `spellcategories`;
CREATE TABLE IF NOT EXISTS `spellcategories` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `DifficultyID` tinyint(4) unsigned DEFAULT NULL,
  `Category` smallint(6) DEFAULT NULL,
  `DefenseType` tinyint(4) DEFAULT NULL,
  `DispelType` tinyint(4) DEFAULT NULL,
  `Mechanic` tinyint(4) DEFAULT NULL,
  `PreventionType` tinyint(4) DEFAULT NULL,
  `StartRecoveryCategory` smallint(6) DEFAULT NULL,
  `ChargeCategory` smallint(6) DEFAULT NULL,
  `SpellID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellcategory
DROP TABLE IF EXISTS `spellcategory`;
CREATE TABLE IF NOT EXISTS `spellcategory` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `Flags` tinyint(4) DEFAULT NULL,
  `UsesPerWeek` tinyint(4) unsigned DEFAULT NULL,
  `MaxCharges` tinyint(4) DEFAULT NULL,
  `ChargeRecoveryTime` int(11) DEFAULT NULL,
  `TypeMask` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellcategory_locale
DROP TABLE IF EXISTS `spellcategory_locale`;
CREATE TABLE IF NOT EXISTS `spellcategory_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellchaineffects
DROP TABLE IF EXISTS `spellchaineffects`;
CREATE TABLE IF NOT EXISTS `spellchaineffects` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `AvgSegLen` float DEFAULT NULL,
  `NoiseScale` float DEFAULT NULL,
  `TexCoordScale` float DEFAULT NULL,
  `SegDuration` int(11) unsigned DEFAULT NULL,
  `SegDelay` smallint(6) unsigned DEFAULT NULL,
  `Flags` int(11) unsigned DEFAULT NULL,
  `JointCount` smallint(6) unsigned DEFAULT NULL,
  `JointOffsetRadius` float DEFAULT NULL,
  `JointsPerMinorJoint` tinyint(4) unsigned DEFAULT NULL,
  `MinorJointsPerMajorJoint` tinyint(4) unsigned DEFAULT NULL,
  `MinorJointScale` float DEFAULT NULL,
  `MajorJointScale` float DEFAULT NULL,
  `JointMoveSpeed` float DEFAULT NULL,
  `JointSmoothness` float DEFAULT NULL,
  `MinDurationBetweenJointJumps` float DEFAULT NULL,
  `MaxDurationBetweenJointJumps` float DEFAULT NULL,
  `WaveHeight` float DEFAULT NULL,
  `WaveFreq` float DEFAULT NULL,
  `WaveSpeed` float DEFAULT NULL,
  `MinWaveAngle` float DEFAULT NULL,
  `MaxWaveAngle` float DEFAULT NULL,
  `MinWaveSpin` float DEFAULT NULL,
  `MaxWaveSpin` float DEFAULT NULL,
  `ArcHeight` float DEFAULT NULL,
  `MinArcAngle` float DEFAULT NULL,
  `MaxArcAngle` float DEFAULT NULL,
  `MinArcSpin` float DEFAULT NULL,
  `MaxArcSpin` float DEFAULT NULL,
  `DelayBetweenEffects` float DEFAULT NULL,
  `MinFlickerOnDuration` float DEFAULT NULL,
  `MaxFlickerOnDuration` float DEFAULT NULL,
  `MinFlickerOffDuration` float DEFAULT NULL,
  `MaxFlickerOffDuration` float DEFAULT NULL,
  `PulseSpeed` float DEFAULT NULL,
  `PulseOnLength` float DEFAULT NULL,
  `PulseFadeLength` float DEFAULT NULL,
  `Alpha` tinyint(4) unsigned DEFAULT NULL,
  `Red` tinyint(4) unsigned DEFAULT NULL,
  `Green` tinyint(4) unsigned DEFAULT NULL,
  `Blue` tinyint(4) unsigned DEFAULT NULL,
  `BlendMode` tinyint(4) unsigned DEFAULT NULL,
  `RenderLayer` tinyint(4) unsigned DEFAULT NULL,
  `WavePhase` float DEFAULT NULL,
  `TimePerFlipFrame` float DEFAULT NULL,
  `VariancePerFlipFrame` float DEFAULT NULL,
  `TextureParticleFileDataID` int(11) unsigned DEFAULT NULL,
  `StartWidth` float DEFAULT NULL,
  `EndWidth` float DEFAULT NULL,
  `WidthScaleCurveID` smallint(6) unsigned DEFAULT NULL,
  `NumFlipFramesU` tinyint(4) unsigned DEFAULT NULL,
  `NumFlipFramesV` tinyint(4) unsigned DEFAULT NULL,
  `SoundKitID` int(11) unsigned DEFAULT NULL,
  `ParticleScaleMultiplier` float DEFAULT NULL,
  `ParticleEmissionRateMultiplier` float DEFAULT NULL,
  `SpellChainEffectID1` smallint(6) unsigned DEFAULT NULL,
  `SpellChainEffectID2` smallint(6) unsigned DEFAULT NULL,
  `SpellChainEffectID3` smallint(6) unsigned DEFAULT NULL,
  `SpellChainEffectID4` smallint(6) unsigned DEFAULT NULL,
  `SpellChainEffectID5` smallint(6) unsigned DEFAULT NULL,
  `SpellChainEffectID6` smallint(6) unsigned DEFAULT NULL,
  `SpellChainEffectID7` smallint(6) unsigned DEFAULT NULL,
  `SpellChainEffectID8` smallint(6) unsigned DEFAULT NULL,
  `SpellChainEffectID9` smallint(6) unsigned DEFAULT NULL,
  `SpellChainEffectID10` smallint(6) unsigned DEFAULT NULL,
  `SpellChainEffectID11` smallint(6) unsigned DEFAULT NULL,
  `TextureCoordScaleU1` float DEFAULT NULL,
  `TextureCoordScaleU2` float DEFAULT NULL,
  `TextureCoordScaleU3` float DEFAULT NULL,
  `TextureCoordScaleV1` float DEFAULT NULL,
  `TextureCoordScaleV2` float DEFAULT NULL,
  `TextureCoordScaleV3` float DEFAULT NULL,
  `TextureRepeatLengthU1` float DEFAULT NULL,
  `TextureRepeatLengthU2` float DEFAULT NULL,
  `TextureRepeatLengthU3` float DEFAULT NULL,
  `TextureRepeatLengthV1` float DEFAULT NULL,
  `TextureRepeatLengthV2` float DEFAULT NULL,
  `TextureRepeatLengthV3` float DEFAULT NULL,
  `TextureFileDataID1` int(11) DEFAULT NULL,
  `TextureFileDataID2` int(11) DEFAULT NULL,
  `TextureFileDataID3` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellclassoptions
DROP TABLE IF EXISTS `spellclassoptions`;
CREATE TABLE IF NOT EXISTS `spellclassoptions` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SpellID` int(11) DEFAULT NULL,
  `ModalNextSpell` int(11) unsigned DEFAULT NULL,
  `SpellClassSet` tinyint(4) unsigned DEFAULT NULL,
  `SpellClassMask1` int(11) DEFAULT NULL,
  `SpellClassMask2` int(11) DEFAULT NULL,
  `SpellClassMask3` int(11) DEFAULT NULL,
  `SpellClassMask4` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellcooldowns
DROP TABLE IF EXISTS `spellcooldowns`;
CREATE TABLE IF NOT EXISTS `spellcooldowns` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `DifficultyID` tinyint(4) unsigned DEFAULT NULL,
  `CategoryRecoveryTime` int(11) DEFAULT NULL,
  `RecoveryTime` int(11) DEFAULT NULL,
  `StartRecoveryTime` int(11) DEFAULT NULL,
  `SpellID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spelldispeltype
DROP TABLE IF EXISTS `spelldispeltype`;
CREATE TABLE IF NOT EXISTS `spelldispeltype` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `InternalName` mediumtext DEFAULT NULL,
  `ImmunityPossible` tinyint(4) unsigned DEFAULT NULL,
  `Mask` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spelldispeltype_locale
DROP TABLE IF EXISTS `spelldispeltype_locale`;
CREATE TABLE IF NOT EXISTS `spelldispeltype_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  `InternalName_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellduration
DROP TABLE IF EXISTS `spellduration`;
CREATE TABLE IF NOT EXISTS `spellduration` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Duration` int(11) DEFAULT NULL,
  `DurationPerLevel` int(11) unsigned DEFAULT NULL,
  `MaxDuration` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spelleffect
DROP TABLE IF EXISTS `spelleffect`;
CREATE TABLE IF NOT EXISTS `spelleffect` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `DifficultyID` int(11) DEFAULT NULL,
  `EffectIndex` int(11) DEFAULT NULL,
  `Effect` int(11) unsigned DEFAULT NULL,
  `EffectAmplitude` float DEFAULT NULL,
  `EffectAttributes` int(11) DEFAULT NULL,
  `EffectAura` smallint(6) DEFAULT NULL,
  `EffectAuraPeriod` int(11) DEFAULT NULL,
  `EffectBasePoints` int(11) DEFAULT NULL,
  `EffectBonusCoefficient` float DEFAULT NULL,
  `EffectChainAmplitude` float DEFAULT NULL,
  `EffectChainTargets` int(11) DEFAULT NULL,
  `EffectDieSides` int(11) DEFAULT NULL,
  `EffectItemType` int(11) DEFAULT NULL,
  `EffectMechanic` int(11) DEFAULT NULL,
  `EffectPointsPerResource` float DEFAULT NULL,
  `EffectPos_facing` float DEFAULT NULL,
  `EffectRealPointsPerLevel` float DEFAULT NULL,
  `EffectTriggerSpell` int(11) DEFAULT NULL,
  `BonusCoefficientFromAP` float DEFAULT NULL,
  `PvpMultiplier` float DEFAULT NULL,
  `Coefficient` float DEFAULT NULL,
  `Variance` float DEFAULT NULL,
  `ResourceCoefficient` float DEFAULT NULL,
  `GroupSizeBasePointsCoefficient` float DEFAULT NULL,
  `EffectMiscValue1` int(11) DEFAULT NULL,
  `EffectMiscValue2` int(11) DEFAULT NULL,
  `EffectRadiusIndex1` int(11) unsigned DEFAULT NULL,
  `EffectRadiusIndex2` int(11) unsigned DEFAULT NULL,
  `EffectSpellClassMask1` int(11) DEFAULT NULL,
  `EffectSpellClassMask2` int(11) DEFAULT NULL,
  `EffectSpellClassMask3` int(11) DEFAULT NULL,
  `EffectSpellClassMask4` int(11) DEFAULT NULL,
  `ImplicitTarget1` smallint(6) DEFAULT NULL,
  `ImplicitTarget2` smallint(6) DEFAULT NULL,
  `SpellID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellequippeditems
DROP TABLE IF EXISTS `spellequippeditems`;
CREATE TABLE IF NOT EXISTS `spellequippeditems` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SpellID` int(11) DEFAULT NULL,
  `EquippedItemClass` tinyint(4) DEFAULT NULL,
  `EquippedItemInvTypes` int(11) DEFAULT NULL,
  `EquippedItemSubclass` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellfocusobject
DROP TABLE IF EXISTS `spellfocusobject`;
CREATE TABLE IF NOT EXISTS `spellfocusobject` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellfocusobject_locale
DROP TABLE IF EXISTS `spellfocusobject_locale`;
CREATE TABLE IF NOT EXISTS `spellfocusobject_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellinterrupts
DROP TABLE IF EXISTS `spellinterrupts`;
CREATE TABLE IF NOT EXISTS `spellinterrupts` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `DifficultyID` tinyint(4) unsigned DEFAULT NULL,
  `InterruptFlags` smallint(6) DEFAULT NULL,
  `AuraInterruptFlags1` int(11) DEFAULT NULL,
  `AuraInterruptFlags2` int(11) DEFAULT NULL,
  `ChannelInterruptFlags1` int(11) DEFAULT NULL,
  `ChannelInterruptFlags2` int(11) DEFAULT NULL,
  `SpellID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellitemenchantment
DROP TABLE IF EXISTS `spellitemenchantment`;
CREATE TABLE IF NOT EXISTS `spellitemenchantment` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `HordeName` mediumtext DEFAULT NULL,
  `EffectArg1` int(11) unsigned DEFAULT NULL,
  `EffectArg2` int(11) unsigned DEFAULT NULL,
  `EffectArg3` int(11) unsigned DEFAULT NULL,
  `EffectScalingPoints1` float DEFAULT NULL,
  `EffectScalingPoints2` float DEFAULT NULL,
  `EffectScalingPoints3` float DEFAULT NULL,
  `TransmogPlayerConditionID` int(11) unsigned DEFAULT NULL,
  `TransmogCost` int(11) unsigned DEFAULT NULL,
  `IconFileDataID` int(11) unsigned DEFAULT NULL,
  `EffectPointsMin1` smallint(6) DEFAULT NULL,
  `EffectPointsMin2` smallint(6) DEFAULT NULL,
  `EffectPointsMin3` smallint(6) DEFAULT NULL,
  `ItemVisual` smallint(6) unsigned DEFAULT NULL,
  `Flags` smallint(6) unsigned DEFAULT NULL,
  `RequiredSkillID` smallint(6) unsigned DEFAULT NULL,
  `RequiredSkillRank` smallint(6) unsigned DEFAULT NULL,
  `ItemLevel` smallint(6) unsigned DEFAULT NULL,
  `Charges` tinyint(4) unsigned DEFAULT NULL,
  `Effect1` tinyint(4) unsigned DEFAULT NULL,
  `Effect2` tinyint(4) unsigned DEFAULT NULL,
  `Effect3` tinyint(4) unsigned DEFAULT NULL,
  `ScalingClass` tinyint(4) DEFAULT NULL,
  `ScalingClassRestricted` tinyint(4) DEFAULT NULL,
  `ConditionID` tinyint(4) unsigned DEFAULT NULL,
  `MinLevel` tinyint(4) unsigned DEFAULT NULL,
  `MaxLevel` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellitemenchantment_locale
DROP TABLE IF EXISTS `spellitemenchantment_locale`;
CREATE TABLE IF NOT EXISTS `spellitemenchantment_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  `HordeName_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spelllabel
DROP TABLE IF EXISTS `spelllabel`;
CREATE TABLE IF NOT EXISTS `spelllabel` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `LabelID` int(11) unsigned DEFAULT NULL,
  `SpellID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spelllevels
DROP TABLE IF EXISTS `spelllevels`;
CREATE TABLE IF NOT EXISTS `spelllevels` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `DifficultyID` tinyint(4) unsigned DEFAULT NULL,
  `BaseLevel` smallint(6) DEFAULT NULL,
  `MaxLevel` smallint(6) DEFAULT NULL,
  `SpellLevel` smallint(6) DEFAULT NULL,
  `MaxPassiveAuraLevel` tinyint(4) unsigned DEFAULT NULL,
  `SpellID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellmechanic
DROP TABLE IF EXISTS `spellmechanic`;
CREATE TABLE IF NOT EXISTS `spellmechanic` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `StateName` mediumtext DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellmechanic_locale
DROP TABLE IF EXISTS `spellmechanic_locale`;
CREATE TABLE IF NOT EXISTS `spellmechanic_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `StateName_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellmisc
DROP TABLE IF EXISTS `spellmisc`;
CREATE TABLE IF NOT EXISTS `spellmisc` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `DifficultyID` tinyint(4) unsigned DEFAULT NULL,
  `CastingTimeIndex` smallint(6) unsigned DEFAULT NULL,
  `DurationIndex` smallint(6) unsigned DEFAULT NULL,
  `RangeIndex` smallint(6) unsigned DEFAULT NULL,
  `SchoolMask` tinyint(4) unsigned DEFAULT NULL,
  `Speed` float DEFAULT NULL,
  `LaunchDelay` float DEFAULT NULL,
  `MinDuration` float DEFAULT NULL,
  `SpellIconFileDataID` int(11) DEFAULT NULL,
  `ActiveIconFileDataID` int(11) DEFAULT NULL,
  `Attributes1` int(11) DEFAULT NULL,
  `Attributes2` int(11) DEFAULT NULL,
  `Attributes3` int(11) DEFAULT NULL,
  `Attributes4` int(11) DEFAULT NULL,
  `Attributes5` int(11) DEFAULT NULL,
  `Attributes6` int(11) DEFAULT NULL,
  `Attributes7` int(11) DEFAULT NULL,
  `Attributes8` int(11) DEFAULT NULL,
  `Attributes9` int(11) DEFAULT NULL,
  `Attributes10` int(11) DEFAULT NULL,
  `Attributes11` int(11) DEFAULT NULL,
  `Attributes12` int(11) DEFAULT NULL,
  `Attributes13` int(11) DEFAULT NULL,
  `Attributes14` int(11) DEFAULT NULL,
  `SpellID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellname
DROP TABLE IF EXISTS `spellname`;
CREATE TABLE IF NOT EXISTS `spellname` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellname_locale
DROP TABLE IF EXISTS `spellname_locale`;
CREATE TABLE IF NOT EXISTS `spellname_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellpower
DROP TABLE IF EXISTS `spellpower`;
CREATE TABLE IF NOT EXISTS `spellpower` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `OrderIndex` tinyint(4) unsigned DEFAULT NULL,
  `ManaCost` int(11) DEFAULT NULL,
  `ManaCostPerLevel` int(11) DEFAULT NULL,
  `ManaPerSecond` int(11) DEFAULT NULL,
  `PowerDisplayID` int(11) unsigned DEFAULT NULL,
  `AltPowerBarID` int(11) DEFAULT NULL,
  `PowerCostPct` float DEFAULT NULL,
  `PowerCostMaxPct` float DEFAULT NULL,
  `PowerPctPerSecond` float DEFAULT NULL,
  `PowerType` tinyint(4) DEFAULT NULL,
  `RequiredAuraSpellID` int(11) DEFAULT NULL,
  `OptionalCost` int(11) unsigned DEFAULT NULL,
  `SpellID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellproceduraleffect
DROP TABLE IF EXISTS `spellproceduraleffect`;
CREATE TABLE IF NOT EXISTS `spellproceduraleffect` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Type` tinyint(4) DEFAULT NULL,
  `Value1` float DEFAULT NULL,
  `Value2` float DEFAULT NULL,
  `Value3` float DEFAULT NULL,
  `Value4` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellradius
DROP TABLE IF EXISTS `spellradius`;
CREATE TABLE IF NOT EXISTS `spellradius` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Radius` float DEFAULT NULL,
  `RadiusPerLevel` float DEFAULT NULL,
  `RadiusMin` float DEFAULT NULL,
  `RadiusMax` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellrange
DROP TABLE IF EXISTS `spellrange`;
CREATE TABLE IF NOT EXISTS `spellrange` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `DisplayName` mediumtext DEFAULT NULL,
  `DisplayNameShort` mediumtext DEFAULT NULL,
  `RangeMin` float DEFAULT NULL,
  `RangeMax` float DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellrange_locale
DROP TABLE IF EXISTS `spellrange_locale`;
CREATE TABLE IF NOT EXISTS `spellrange_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `DisplayName_lang` mediumtext DEFAULT NULL,
  `DisplayNameShort_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellreagents
DROP TABLE IF EXISTS `spellreagents`;
CREATE TABLE IF NOT EXISTS `spellreagents` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SpellID` int(11) DEFAULT NULL,
  `Reagent1` int(11) DEFAULT NULL,
  `Reagent2` int(11) DEFAULT NULL,
  `Reagent3` int(11) DEFAULT NULL,
  `Reagent4` int(11) DEFAULT NULL,
  `Reagent5` int(11) DEFAULT NULL,
  `Reagent6` int(11) DEFAULT NULL,
  `Reagent7` int(11) DEFAULT NULL,
  `Reagent8` int(11) DEFAULT NULL,
  `ReagentCount1` smallint(6) DEFAULT NULL,
  `ReagentCount2` smallint(6) DEFAULT NULL,
  `ReagentCount3` smallint(6) DEFAULT NULL,
  `ReagentCount4` smallint(6) DEFAULT NULL,
  `ReagentCount5` smallint(6) DEFAULT NULL,
  `ReagentCount6` smallint(6) DEFAULT NULL,
  `ReagentCount7` smallint(6) DEFAULT NULL,
  `ReagentCount8` smallint(6) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellshapeshift
DROP TABLE IF EXISTS `spellshapeshift`;
CREATE TABLE IF NOT EXISTS `spellshapeshift` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SpellID` int(11) DEFAULT NULL,
  `StanceBarOrder` tinyint(4) DEFAULT NULL,
  `ShapeshiftExclude1` int(11) DEFAULT NULL,
  `ShapeshiftExclude2` int(11) DEFAULT NULL,
  `ShapeshiftMask1` int(11) DEFAULT NULL,
  `ShapeshiftMask2` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellshapeshiftform
DROP TABLE IF EXISTS `spellshapeshiftform`;
CREATE TABLE IF NOT EXISTS `spellshapeshiftform` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `CreatureType` tinyint(4) DEFAULT NULL,
  `Flags` int(11) DEFAULT NULL,
  `AttackIconFileID` int(11) DEFAULT NULL,
  `BonusActionBar` tinyint(4) DEFAULT NULL,
  `CombatRoundTime` smallint(6) DEFAULT NULL,
  `DamageVariance` float DEFAULT NULL,
  `MountTypeID` smallint(6) unsigned DEFAULT NULL,
  `CreatureDisplayID1` int(11) unsigned DEFAULT NULL,
  `CreatureDisplayID2` int(11) unsigned DEFAULT NULL,
  `CreatureDisplayID3` int(11) unsigned DEFAULT NULL,
  `CreatureDisplayID4` int(11) unsigned DEFAULT NULL,
  `PresetSpellID1` int(11) unsigned DEFAULT NULL,
  `PresetSpellID2` int(11) unsigned DEFAULT NULL,
  `PresetSpellID3` int(11) unsigned DEFAULT NULL,
  `PresetSpellID4` int(11) unsigned DEFAULT NULL,
  `PresetSpellID5` int(11) unsigned DEFAULT NULL,
  `PresetSpellID6` int(11) unsigned DEFAULT NULL,
  `PresetSpellID7` int(11) unsigned DEFAULT NULL,
  `PresetSpellID8` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellshapeshiftform_locale
DROP TABLE IF EXISTS `spellshapeshiftform_locale`;
CREATE TABLE IF NOT EXISTS `spellshapeshiftform_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellspecialuniteffect
DROP TABLE IF EXISTS `spellspecialuniteffect`;
CREATE TABLE IF NOT EXISTS `spellspecialuniteffect` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SpellVisualEffectNameID` smallint(6) unsigned DEFAULT NULL,
  `PositionerID` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spelltargetrestrictions
DROP TABLE IF EXISTS `spelltargetrestrictions`;
CREATE TABLE IF NOT EXISTS `spelltargetrestrictions` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `DifficultyID` tinyint(4) unsigned DEFAULT NULL,
  `ConeDegrees` float DEFAULT NULL,
  `MaxTargets` tinyint(4) unsigned DEFAULT NULL,
  `MaxTargetLevel` int(11) unsigned DEFAULT NULL,
  `TargetCreatureType` smallint(6) DEFAULT NULL,
  `Targets` int(11) DEFAULT NULL,
  `Width` float DEFAULT NULL,
  `SpellID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spelltotems
DROP TABLE IF EXISTS `spelltotems`;
CREATE TABLE IF NOT EXISTS `spelltotems` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SpellID` int(11) DEFAULT NULL,
  `RequiredTotemCategoryID1` smallint(6) unsigned DEFAULT NULL,
  `RequiredTotemCategoryID2` smallint(6) unsigned DEFAULT NULL,
  `Totem1` int(11) DEFAULT NULL,
  `Totem2` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellvisual
DROP TABLE IF EXISTS `spellvisual`;
CREATE TABLE IF NOT EXISTS `spellvisual` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `MissileCastOffsetX` float DEFAULT NULL,
  `MissileCastOffsetY` float DEFAULT NULL,
  `MissileCastOffsetZ` float DEFAULT NULL,
  `MissileImpactOffsetX` float DEFAULT NULL,
  `MissileImpactOffsetY` float DEFAULT NULL,
  `MissileImpactOffsetZ` float DEFAULT NULL,
  `AnimEventSoundID` int(11) unsigned DEFAULT NULL,
  `Flags` int(11) DEFAULT NULL,
  `MissileAttachment` tinyint(4) DEFAULT NULL,
  `MissileDestinationAttachment` tinyint(4) DEFAULT NULL,
  `MissileCastPositionerID` int(11) unsigned DEFAULT NULL,
  `MissileImpactPositionerID` int(11) unsigned DEFAULT NULL,
  `MissileTargetingKit` int(11) DEFAULT NULL,
  `HostileSpellVisualID` int(11) unsigned DEFAULT NULL,
  `CasterSpellVisualID` int(11) unsigned DEFAULT NULL,
  `SpellVisualMissileSetID` smallint(6) unsigned DEFAULT NULL,
  `DamageNumberDelay` smallint(6) unsigned DEFAULT NULL,
  `LowViolenceSpellVisualID` int(11) unsigned DEFAULT NULL,
  `RaidSpellVisualMissileSetID` int(11) unsigned DEFAULT NULL,
  `AreaModel` smallint(6) unsigned DEFAULT NULL,
  `HasMissile` tinyint(4) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellvisualanim
DROP TABLE IF EXISTS `spellvisualanim`;
CREATE TABLE IF NOT EXISTS `spellvisualanim` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `InitialAnimID` int(11) DEFAULT NULL,
  `LoopAnimID` int(11) DEFAULT NULL,
  `AnimKitID` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellvisualeffectname
DROP TABLE IF EXISTS `spellvisualeffectname`;
CREATE TABLE IF NOT EXISTS `spellvisualeffectname` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ModelFileDataID` int(11) DEFAULT NULL,
  `BaseMissileSpeed` float DEFAULT NULL,
  `Scale` float DEFAULT NULL,
  `MinAllowedScale` float DEFAULT NULL,
  `MaxAllowedScale` float DEFAULT NULL,
  `Alpha` float DEFAULT NULL,
  `Flags` int(11) unsigned DEFAULT NULL,
  `TextureFileDataID` int(11) DEFAULT NULL,
  `EffectRadius` float DEFAULT NULL,
  `Type` int(11) unsigned DEFAULT NULL,
  `GenericID` int(11) DEFAULT NULL,
  `RibbonQualityID` int(11) unsigned DEFAULT NULL,
  `DissolveEffectID` int(11) DEFAULT NULL,
  `ModelPosition` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellvisualevent
DROP TABLE IF EXISTS `spellvisualevent`;
CREATE TABLE IF NOT EXISTS `spellvisualevent` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `StartEvent` int(11) DEFAULT NULL,
  `EndEvent` int(11) DEFAULT NULL,
  `StartMinOffsetMs` int(11) DEFAULT NULL,
  `StartMaxOffsetMs` int(11) DEFAULT NULL,
  `EndMinOffsetMs` int(11) DEFAULT NULL,
  `EndMaxOffsetMs` int(11) DEFAULT NULL,
  `TargetType` int(11) DEFAULT NULL,
  `SpellVisualKitID` int(11) DEFAULT NULL,
  `SpellVisualID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellvisualkit
DROP TABLE IF EXISTS `spellvisualkit`;
CREATE TABLE IF NOT EXISTS `spellvisualkit` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Flags` int(11) DEFAULT NULL,
  `FallbackPriority` float DEFAULT NULL,
  `FallbackSpellVisualKitID` int(11) unsigned DEFAULT NULL,
  `DelayMin` smallint(6) unsigned DEFAULT NULL,
  `DelayMax` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellvisualkitareamodel
DROP TABLE IF EXISTS `spellvisualkitareamodel`;
CREATE TABLE IF NOT EXISTS `spellvisualkitareamodel` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ModelFileDataID` int(11) DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `LifeTime` smallint(6) unsigned DEFAULT NULL,
  `EmissionRate` float DEFAULT NULL,
  `Spacing` float DEFAULT NULL,
  `ModelScale` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellvisualkiteffect
DROP TABLE IF EXISTS `spellvisualkiteffect`;
CREATE TABLE IF NOT EXISTS `spellvisualkiteffect` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `EffectType` int(11) DEFAULT NULL,
  `Effect` int(11) DEFAULT NULL,
  `ParentSpellVisualKitID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellvisualkitmodelattach
DROP TABLE IF EXISTS `spellvisualkitmodelattach`;
CREATE TABLE IF NOT EXISTS `spellvisualkitmodelattach` (
  `OffsetX` float DEFAULT NULL,
  `OffsetY` float DEFAULT NULL,
  `OffsetZ` float DEFAULT NULL,
  `OffsetVariationX` float DEFAULT NULL,
  `OffsetVariationY` float DEFAULT NULL,
  `OffsetVariationZ` float DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SpellVisualEffectNameID` smallint(6) unsigned DEFAULT NULL,
  `AttachmentID` tinyint(4) DEFAULT NULL,
  `PositionerID` smallint(6) unsigned DEFAULT NULL,
  `Yaw` float DEFAULT NULL,
  `Pitch` float DEFAULT NULL,
  `Roll` float DEFAULT NULL,
  `YawVariation` float DEFAULT NULL,
  `PitchVariation` float DEFAULT NULL,
  `RollVariation` float DEFAULT NULL,
  `Scale` float DEFAULT NULL,
  `ScaleVariation` float DEFAULT NULL,
  `StartAnimID` smallint(6) DEFAULT NULL,
  `AnimID` smallint(6) DEFAULT NULL,
  `EndAnimID` smallint(6) DEFAULT NULL,
  `AnimKitID` smallint(6) unsigned DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `LowDefModelAttachID` int(11) unsigned DEFAULT NULL,
  `StartDelay` float DEFAULT NULL,
  `ParentSpellVisualKitID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellvisualmissile
DROP TABLE IF EXISTS `spellvisualmissile`;
CREATE TABLE IF NOT EXISTS `spellvisualmissile` (
  `CastOffsetX` float DEFAULT NULL,
  `CastOffsetY` float DEFAULT NULL,
  `CastOffsetZ` float DEFAULT NULL,
  `ImpactOffsetX` float DEFAULT NULL,
  `ImpactOffsetY` float DEFAULT NULL,
  `ImpactOffsetZ` float DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SpellVisualEffectNameID` smallint(6) unsigned DEFAULT NULL,
  `SoundEntriesID` int(11) unsigned DEFAULT NULL,
  `Attachment` tinyint(4) DEFAULT NULL,
  `DestinationAttachment` tinyint(4) DEFAULT NULL,
  `CastPositionerID` smallint(6) unsigned DEFAULT NULL,
  `ImpactPositionerID` smallint(6) unsigned DEFAULT NULL,
  `FollowGroundHeight` int(11) DEFAULT NULL,
  `FollowGroundDropSpeed` int(11) unsigned DEFAULT NULL,
  `FollowGroundApproach` smallint(6) unsigned DEFAULT NULL,
  `Flags` int(11) unsigned DEFAULT NULL,
  `SpellMissileMotionID` smallint(6) unsigned DEFAULT NULL,
  `AnimKitID` int(11) unsigned DEFAULT NULL,
  `SpellVisualMissileSetID` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellxdescriptionvariables
DROP TABLE IF EXISTS `spellxdescriptionvariables`;
CREATE TABLE IF NOT EXISTS `spellxdescriptionvariables` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SpellID` int(11) DEFAULT NULL,
  `SpellDescriptionVariablesID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spellxspellvisual
DROP TABLE IF EXISTS `spellxspellvisual`;
CREATE TABLE IF NOT EXISTS `spellxspellvisual` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `DifficultyID` tinyint(4) unsigned DEFAULT NULL,
  `SpellVisualID` int(11) unsigned DEFAULT NULL,
  `Probability` float DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `Priority` tinyint(4) unsigned DEFAULT NULL,
  `SpellIconFileID` int(11) DEFAULT NULL,
  `ActiveIconFileID` int(11) DEFAULT NULL,
  `ViewerUnitConditionID` smallint(6) unsigned DEFAULT NULL,
  `ViewerPlayerConditionID` int(11) unsigned DEFAULT NULL,
  `CasterUnitConditionID` smallint(6) unsigned DEFAULT NULL,
  `CasterPlayerConditionID` int(11) unsigned DEFAULT NULL,
  `SpellID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.spell_locale
DROP TABLE IF EXISTS `spell_locale`;
CREATE TABLE IF NOT EXISTS `spell_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `NameSubtext_lang` mediumtext DEFAULT NULL,
  `Description_lang` mediumtext DEFAULT NULL,
  `AuraDescription_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.startupfiles
DROP TABLE IF EXISTS `startupfiles`;
CREATE TABLE IF NOT EXISTS `startupfiles` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `FileDataID` int(11) DEFAULT NULL,
  `Locale` int(11) DEFAULT NULL,
  `BytesRequired` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.startup_strings
DROP TABLE IF EXISTS `startup_strings`;
CREATE TABLE IF NOT EXISTS `startup_strings` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.startup_strings_locale
DROP TABLE IF EXISTS `startup_strings_locale`;
CREATE TABLE IF NOT EXISTS `startup_strings_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  `Message_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.stationery
DROP TABLE IF EXISTS `stationery`;
CREATE TABLE IF NOT EXISTS `stationery` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ItemID` int(11) unsigned DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `TextureFileDataID1` int(11) DEFAULT NULL,
  `TextureFileDataID2` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.summonproperties
DROP TABLE IF EXISTS `summonproperties`;
CREATE TABLE IF NOT EXISTS `summonproperties` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Control` int(11) DEFAULT NULL,
  `Faction` int(11) DEFAULT NULL,
  `Title` int(11) DEFAULT NULL,
  `Slot` int(11) DEFAULT NULL,
  `Flags` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.tactkey
DROP TABLE IF EXISTS `tactkey`;
CREATE TABLE IF NOT EXISTS `tactkey` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Key1` tinyint(4) unsigned DEFAULT NULL,
  `Key2` tinyint(4) unsigned DEFAULT NULL,
  `Key3` tinyint(4) unsigned DEFAULT NULL,
  `Key4` tinyint(4) unsigned DEFAULT NULL,
  `Key5` tinyint(4) unsigned DEFAULT NULL,
  `Key6` tinyint(4) unsigned DEFAULT NULL,
  `Key7` tinyint(4) unsigned DEFAULT NULL,
  `Key8` tinyint(4) unsigned DEFAULT NULL,
  `Key9` tinyint(4) unsigned DEFAULT NULL,
  `Key10` tinyint(4) unsigned DEFAULT NULL,
  `Key11` tinyint(4) unsigned DEFAULT NULL,
  `Key12` tinyint(4) unsigned DEFAULT NULL,
  `Key13` tinyint(4) unsigned DEFAULT NULL,
  `Key14` tinyint(4) unsigned DEFAULT NULL,
  `Key15` tinyint(4) unsigned DEFAULT NULL,
  `Key16` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.tactkeylookup
DROP TABLE IF EXISTS `tactkeylookup`;
CREATE TABLE IF NOT EXISTS `tactkeylookup` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `TACTID1` tinyint(4) unsigned DEFAULT NULL,
  `TACTID2` tinyint(4) unsigned DEFAULT NULL,
  `TACTID3` tinyint(4) unsigned DEFAULT NULL,
  `TACTID4` tinyint(4) unsigned DEFAULT NULL,
  `TACTID5` tinyint(4) unsigned DEFAULT NULL,
  `TACTID6` tinyint(4) unsigned DEFAULT NULL,
  `TACTID7` tinyint(4) unsigned DEFAULT NULL,
  `TACTID8` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.talent
DROP TABLE IF EXISTS `talent`;
CREATE TABLE IF NOT EXISTS `talent` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Description` mediumtext DEFAULT NULL,
  `TierID` tinyint(4) unsigned DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `ColumnIndex` tinyint(4) unsigned DEFAULT NULL,
  `ClassID` tinyint(4) unsigned DEFAULT NULL,
  `SpecID` smallint(6) unsigned DEFAULT NULL,
  `SpellID` int(11) unsigned DEFAULT NULL,
  `OverridesSpellID` int(11) unsigned DEFAULT NULL,
  `TabID` smallint(6) unsigned DEFAULT NULL,
  `RequiredSpellID` int(11) unsigned DEFAULT NULL,
  `CategoryMask1` tinyint(4) unsigned DEFAULT NULL,
  `CategoryMask2` tinyint(4) unsigned DEFAULT NULL,
  `SpellRank1` int(11) unsigned DEFAULT NULL,
  `SpellRank2` int(11) unsigned DEFAULT NULL,
  `SpellRank3` int(11) unsigned DEFAULT NULL,
  `SpellRank4` int(11) unsigned DEFAULT NULL,
  `SpellRank5` int(11) unsigned DEFAULT NULL,
  `SpellRank6` int(11) unsigned DEFAULT NULL,
  `SpellRank7` int(11) unsigned DEFAULT NULL,
  `SpellRank8` int(11) unsigned DEFAULT NULL,
  `SpellRank9` int(11) unsigned DEFAULT NULL,
  `PrereqTalent1` smallint(6) unsigned DEFAULT NULL,
  `PrereqTalent2` smallint(6) unsigned DEFAULT NULL,
  `PrereqTalent3` smallint(6) unsigned DEFAULT NULL,
  `PrereqRank1` smallint(6) unsigned DEFAULT NULL,
  `PrereqRank2` smallint(6) unsigned DEFAULT NULL,
  `PrereqRank3` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.talent_locale
DROP TABLE IF EXISTS `talent_locale`;
CREATE TABLE IF NOT EXISTS `talent_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Description_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.taxinodes
DROP TABLE IF EXISTS `taxinodes`;
CREATE TABLE IF NOT EXISTS `taxinodes` (
  `Name` mediumtext DEFAULT NULL,
  `PosX` float DEFAULT NULL,
  `PosY` float DEFAULT NULL,
  `PosZ` float DEFAULT NULL,
  `MapOffsetX` float DEFAULT NULL,
  `MapOffsetY` float DEFAULT NULL,
  `FlightMapOffsetX` float DEFAULT NULL,
  `FlightMapOffsetY` float DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ContinentID` smallint(6) unsigned DEFAULT NULL,
  `ConditionID` smallint(6) unsigned DEFAULT NULL,
  `CharacterBitNumber` smallint(6) unsigned DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `UiTextureKitID` int(11) DEFAULT NULL,
  `Facing` float DEFAULT NULL,
  `SpecialIconConditionID` int(11) unsigned DEFAULT NULL,
  `VisibilityConditionID` int(11) unsigned DEFAULT NULL,
  `MountCreatureID1` int(11) DEFAULT NULL,
  `MountCreatureID2` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.taxinodes_locale
DROP TABLE IF EXISTS `taxinodes_locale`;
CREATE TABLE IF NOT EXISTS `taxinodes_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.taxipath
DROP TABLE IF EXISTS `taxipath`;
CREATE TABLE IF NOT EXISTS `taxipath` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `FromTaxiNode` smallint(6) unsigned DEFAULT NULL,
  `ToTaxiNode` smallint(6) unsigned DEFAULT NULL,
  `Cost` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.taxipathnode
DROP TABLE IF EXISTS `taxipathnode`;
CREATE TABLE IF NOT EXISTS `taxipathnode` (
  `LocX` float DEFAULT NULL,
  `LocY` float DEFAULT NULL,
  `LocZ` float DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PathID` smallint(6) unsigned DEFAULT NULL,
  `NodeIndex` int(11) DEFAULT NULL,
  `ContinentID` smallint(6) unsigned DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `Delay` int(11) unsigned DEFAULT NULL,
  `ArrivalEventID` smallint(6) unsigned DEFAULT NULL,
  `DepartureEventID` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.terraintype
DROP TABLE IF EXISTS `terraintype`;
CREATE TABLE IF NOT EXISTS `terraintype` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `TerrainDesc` mediumtext DEFAULT NULL,
  `FootstepSprayRun` smallint(6) unsigned DEFAULT NULL,
  `FootstepSprayWalk` smallint(6) unsigned DEFAULT NULL,
  `SoundID` tinyint(4) unsigned DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `TerrainID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.terraintypesounds
DROP TABLE IF EXISTS `terraintypesounds`;
CREATE TABLE IF NOT EXISTS `terraintypesounds` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.texturefiledata
DROP TABLE IF EXISTS `texturefiledata`;
CREATE TABLE IF NOT EXISTS `texturefiledata` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UsageType` tinyint(4) unsigned DEFAULT NULL,
  `MaterialResourcesID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.tradeskillitem
DROP TABLE IF EXISTS `tradeskillitem`;
CREATE TABLE IF NOT EXISTS `tradeskillitem` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ItemLevel` smallint(6) unsigned DEFAULT NULL,
  `RequiredLevel` tinyint(4) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.transportanimation
DROP TABLE IF EXISTS `transportanimation`;
CREATE TABLE IF NOT EXISTS `transportanimation` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PosX` float DEFAULT NULL,
  `PosY` float DEFAULT NULL,
  `PosZ` float DEFAULT NULL,
  `SequenceID` tinyint(4) unsigned DEFAULT NULL,
  `TimeIndex` int(11) unsigned DEFAULT NULL,
  `TransportID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.uiexpansiondisplayinfo
DROP TABLE IF EXISTS `uiexpansiondisplayinfo`;
CREATE TABLE IF NOT EXISTS `uiexpansiondisplayinfo` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ExpansionLogo` int(11) DEFAULT NULL,
  `ExpansionBanner` int(11) DEFAULT NULL,
  `ExpansionLevel` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.uimap
DROP TABLE IF EXISTS `uimap`;
CREATE TABLE IF NOT EXISTS `uimap` (
  `Name` mediumtext DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ParentUiMapID` int(11) DEFAULT NULL,
  `Flags` int(11) DEFAULT NULL,
  `System` int(11) DEFAULT NULL,
  `Type` int(11) DEFAULT NULL,
  `LevelRangeMin` int(11) unsigned DEFAULT NULL,
  `LevelRangeMax` int(11) unsigned DEFAULT NULL,
  `BountySetID` int(11) DEFAULT NULL,
  `BountyDisplayLocation` int(11) unsigned DEFAULT NULL,
  `VisibilityPlayerConditionID` int(11) DEFAULT NULL,
  `HelpTextPosition` tinyint(4) DEFAULT NULL,
  `BkgAtlasID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.uimapart
DROP TABLE IF EXISTS `uimapart`;
CREATE TABLE IF NOT EXISTS `uimapart` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `HighlightFileDataID` int(11) DEFAULT NULL,
  `HighlightAtlasID` int(11) DEFAULT NULL,
  `UiMapArtStyleID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.uimapartstylelayer
DROP TABLE IF EXISTS `uimapartstylelayer`;
CREATE TABLE IF NOT EXISTS `uimapartstylelayer` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `LayerIndex` tinyint(4) unsigned DEFAULT NULL,
  `LayerWidth` smallint(6) unsigned DEFAULT NULL,
  `LayerHeight` smallint(6) unsigned DEFAULT NULL,
  `TileWidth` smallint(6) unsigned DEFAULT NULL,
  `TileHeight` smallint(6) unsigned DEFAULT NULL,
  `MinScale` float DEFAULT NULL,
  `MaxScale` float DEFAULT NULL,
  `AdditionalZoomSteps` int(11) DEFAULT NULL,
  `UiMapArtStyleID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.uimaparttile
DROP TABLE IF EXISTS `uimaparttile`;
CREATE TABLE IF NOT EXISTS `uimaparttile` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `RowIndex` tinyint(4) unsigned DEFAULT NULL,
  `ColIndex` tinyint(4) unsigned DEFAULT NULL,
  `LayerIndex` tinyint(4) unsigned DEFAULT NULL,
  `FileDataID` int(11) DEFAULT NULL,
  `UiMapArtID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.uimapassignment
DROP TABLE IF EXISTS `uimapassignment`;
CREATE TABLE IF NOT EXISTS `uimapassignment` (
  `UiMinX` float DEFAULT NULL,
  `UiMinY` float DEFAULT NULL,
  `UiMaxX` float DEFAULT NULL,
  `UiMaxY` float DEFAULT NULL,
  `Region1` float DEFAULT NULL,
  `Region2` float DEFAULT NULL,
  `Region3` float DEFAULT NULL,
  `Region4` float DEFAULT NULL,
  `Region5` float DEFAULT NULL,
  `Region6` float DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UiMapID` int(11) DEFAULT NULL,
  `OrderIndex` int(11) DEFAULT NULL,
  `MapID` int(11) DEFAULT NULL,
  `AreaID` int(11) DEFAULT NULL,
  `WMODoodadPlacementID` int(11) DEFAULT NULL,
  `WMOGroupID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.uimapxmapart
DROP TABLE IF EXISTS `uimapxmapart`;
CREATE TABLE IF NOT EXISTS `uimapxmapart` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PhaseID` int(11) DEFAULT NULL,
  `UiMapArtID` int(11) DEFAULT NULL,
  `UiMapID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.uimap_locale
DROP TABLE IF EXISTS `uimap_locale`;
CREATE TABLE IF NOT EXISTS `uimap_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Name_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.uimodelscene
DROP TABLE IF EXISTS `uimodelscene`;
CREATE TABLE IF NOT EXISTS `uimodelscene` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UiSystemType` tinyint(4) DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.uimodelsceneactor
DROP TABLE IF EXISTS `uimodelsceneactor`;
CREATE TABLE IF NOT EXISTS `uimodelsceneactor` (
  `ScriptTag` mediumtext DEFAULT NULL,
  `PositionX` float DEFAULT NULL,
  `PositionY` float DEFAULT NULL,
  `PositionZ` float DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `UiModelSceneActorDisplayID` int(11) DEFAULT NULL,
  `OrientationYaw` float DEFAULT NULL,
  `OrientationPitch` float DEFAULT NULL,
  `OrientationRoll` float DEFAULT NULL,
  `NormalizedScale` float DEFAULT NULL,
  `UiModelSceneID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.uimodelsceneactordisplay
DROP TABLE IF EXISTS `uimodelsceneactordisplay`;
CREATE TABLE IF NOT EXISTS `uimodelsceneactordisplay` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `AnimationID` int(11) unsigned DEFAULT NULL,
  `SequenceVariation` int(11) unsigned DEFAULT NULL,
  `AnimKitID` int(11) unsigned DEFAULT NULL,
  `SpellVisualKitID` int(11) unsigned DEFAULT NULL,
  `Alpha` float DEFAULT NULL,
  `Scale` float DEFAULT NULL,
  `AnimSpeed` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.uimodelscenecamera
DROP TABLE IF EXISTS `uimodelscenecamera`;
CREATE TABLE IF NOT EXISTS `uimodelscenecamera` (
  `ScriptTag` mediumtext DEFAULT NULL,
  `Target1` float DEFAULT NULL,
  `Target2` float DEFAULT NULL,
  `Target3` float DEFAULT NULL,
  `ZoomedTargetOffsetX` float DEFAULT NULL,
  `ZoomedTargetOffsetY` float DEFAULT NULL,
  `ZoomedTargetOffsetZ` float DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `CameraType` tinyint(4) unsigned DEFAULT NULL,
  `Yaw` float DEFAULT NULL,
  `Pitch` float DEFAULT NULL,
  `Roll` float DEFAULT NULL,
  `ZoomedYawOffset` float DEFAULT NULL,
  `ZoomedPitchOffset` float DEFAULT NULL,
  `ZoomedRollOffset` float DEFAULT NULL,
  `ZoomDistance` float DEFAULT NULL,
  `MinZoomDistance` float DEFAULT NULL,
  `MaxZoomDistance` float DEFAULT NULL,
  `UiModelSceneID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.uitextureatlas
DROP TABLE IF EXISTS `uitextureatlas`;
CREATE TABLE IF NOT EXISTS `uitextureatlas` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `FileDataID` int(11) DEFAULT NULL,
  `AtlasWidth` smallint(6) unsigned DEFAULT NULL,
  `AtlasHeight` smallint(6) unsigned DEFAULT NULL,
  `UiCanvasID` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.uitextureatlaselement
DROP TABLE IF EXISTS `uitextureatlaselement`;
CREATE TABLE IF NOT EXISTS `uitextureatlaselement` (
  `Name` mediumtext DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.uitextureatlasmember
DROP TABLE IF EXISTS `uitextureatlasmember`;
CREATE TABLE IF NOT EXISTS `uitextureatlasmember` (
  `CommittedName` mediumtext DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UiTextureAtlasID` smallint(6) unsigned DEFAULT NULL,
  `CommittedLeft` smallint(6) DEFAULT NULL,
  `CommittedRight` smallint(6) DEFAULT NULL,
  `CommittedTop` smallint(6) DEFAULT NULL,
  `CommittedBottom` smallint(6) DEFAULT NULL,
  `UiTextureAtlasElementID` smallint(6) unsigned DEFAULT NULL,
  `CommittedFlags` tinyint(4) DEFAULT NULL,
  `UiCanvasID` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.uitexturekit
DROP TABLE IF EXISTS `uitexturekit`;
CREATE TABLE IF NOT EXISTS `uitexturekit` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `KitPrefix` mediumtext DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.uiwidget
DROP TABLE IF EXISTS `uiwidget`;
CREATE TABLE IF NOT EXISTS `uiwidget` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `WidgetTag` mediumtext DEFAULT NULL,
  `ParentSetID` smallint(6) unsigned DEFAULT NULL,
  `VisID` int(11) DEFAULT NULL,
  `MapID` int(11) DEFAULT NULL,
  `PlayerConditionID` int(11) DEFAULT NULL,
  `OrderIndex` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.uiwidgetdatasource
DROP TABLE IF EXISTS `uiwidgetdatasource`;
CREATE TABLE IF NOT EXISTS `uiwidgetdatasource` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SourceID` smallint(6) unsigned DEFAULT NULL,
  `SourceType` tinyint(4) DEFAULT NULL,
  `ReqID` smallint(6) unsigned DEFAULT NULL,
  `ParentWidgetID` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.uiwidgetstringsource
DROP TABLE IF EXISTS `uiwidgetstringsource`;
CREATE TABLE IF NOT EXISTS `uiwidgetstringsource` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Value` mediumtext DEFAULT NULL,
  `ReqID` smallint(6) unsigned DEFAULT NULL,
  `ParentWidgetID` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.uiwidgetstringsource_locale
DROP TABLE IF EXISTS `uiwidgetstringsource_locale`;
CREATE TABLE IF NOT EXISTS `uiwidgetstringsource_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Value_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.uiwidgetvisualization
DROP TABLE IF EXISTS `uiwidgetvisualization`;
CREATE TABLE IF NOT EXISTS `uiwidgetvisualization` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `VisType` tinyint(4) DEFAULT NULL,
  `TextureKit` int(11) DEFAULT NULL,
  `FrameTextureKit` int(11) DEFAULT NULL,
  `SizeSetting` smallint(6) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.unitblood
DROP TABLE IF EXISTS `unitblood`;
CREATE TABLE IF NOT EXISTS `unitblood` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CombatBloodSpurtFront1` int(11) unsigned DEFAULT NULL,
  `CombatBloodSpurtFront2` int(11) unsigned DEFAULT NULL,
  `CombatBloodSpurtBack1` int(11) unsigned DEFAULT NULL,
  `CombatBloodSpurtBack2` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.unitbloodlevels
DROP TABLE IF EXISTS `unitbloodlevels`;
CREATE TABLE IF NOT EXISTS `unitbloodlevels` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Violencelevel1` tinyint(4) unsigned DEFAULT NULL,
  `Violencelevel2` tinyint(4) unsigned DEFAULT NULL,
  `Violencelevel3` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.unitcondition
DROP TABLE IF EXISTS `unitcondition`;
CREATE TABLE IF NOT EXISTS `unitcondition` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `Variable1` tinyint(4) unsigned DEFAULT NULL,
  `Variable2` tinyint(4) unsigned DEFAULT NULL,
  `Variable3` tinyint(4) unsigned DEFAULT NULL,
  `Variable4` tinyint(4) unsigned DEFAULT NULL,
  `Variable5` tinyint(4) unsigned DEFAULT NULL,
  `Variable6` tinyint(4) unsigned DEFAULT NULL,
  `Variable7` tinyint(4) unsigned DEFAULT NULL,
  `Variable8` tinyint(4) unsigned DEFAULT NULL,
  `Op1` tinyint(4) DEFAULT NULL,
  `Op2` tinyint(4) DEFAULT NULL,
  `Op3` tinyint(4) DEFAULT NULL,
  `Op4` tinyint(4) DEFAULT NULL,
  `Op5` tinyint(4) DEFAULT NULL,
  `Op6` tinyint(4) DEFAULT NULL,
  `Op7` tinyint(4) DEFAULT NULL,
  `Op8` tinyint(4) DEFAULT NULL,
  `Value1` int(11) DEFAULT NULL,
  `Value2` int(11) DEFAULT NULL,
  `Value3` int(11) DEFAULT NULL,
  `Value4` int(11) DEFAULT NULL,
  `Value5` int(11) DEFAULT NULL,
  `Value6` int(11) DEFAULT NULL,
  `Value7` int(11) DEFAULT NULL,
  `Value8` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.updates
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

-- Dumping structure for table classic_tc_hotfix.updates_include
DROP TABLE IF EXISTS `updates_include`;
CREATE TABLE IF NOT EXISTS `updates_include` (
  `path` varchar(200) NOT NULL COMMENT 'directory to include. $ means relative to the source directory.',
  `state` enum('RELEASED','ARCHIVED') NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if the directory contains released or archived updates.',
  PRIMARY KEY (`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='List of directories where we want to include sql updates.';

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.virtualattachment
DROP TABLE IF EXISTS `virtualattachment`;
CREATE TABLE IF NOT EXISTS `virtualattachment` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `PositionerID` smallint(6) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.virtualattachmentcustomization
DROP TABLE IF EXISTS `virtualattachmentcustomization`;
CREATE TABLE IF NOT EXISTS `virtualattachmentcustomization` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `VirtualAttachmentID` smallint(6) DEFAULT NULL,
  `FileDataID` int(11) DEFAULT NULL,
  `PositionerID` smallint(6) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.vocaluisounds
DROP TABLE IF EXISTS `vocaluisounds`;
CREATE TABLE IF NOT EXISTS `vocaluisounds` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `VocalUIEnum` tinyint(4) unsigned DEFAULT NULL,
  `RaceID` tinyint(4) unsigned DEFAULT NULL,
  `ClassID` tinyint(4) unsigned DEFAULT NULL,
  `NormalSoundID1` int(11) unsigned DEFAULT NULL,
  `NormalSoundID2` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.wbaccesscontrollist
DROP TABLE IF EXISTS `wbaccesscontrollist`;
CREATE TABLE IF NOT EXISTS `wbaccesscontrollist` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `URL` mediumtext DEFAULT NULL,
  `GrantFlags` smallint(6) unsigned DEFAULT NULL,
  `RevokeFlags` tinyint(4) unsigned DEFAULT NULL,
  `WowEditInternal` tinyint(4) unsigned DEFAULT NULL,
  `RegionID` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.wbcertwhitelist
DROP TABLE IF EXISTS `wbcertwhitelist`;
CREATE TABLE IF NOT EXISTS `wbcertwhitelist` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Domain` mediumtext DEFAULT NULL,
  `GrantAccess` tinyint(4) unsigned DEFAULT NULL,
  `RevokeAccess` tinyint(4) unsigned DEFAULT NULL,
  `WowEditInternal` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.weaponimpactsounds
DROP TABLE IF EXISTS `weaponimpactsounds`;
CREATE TABLE IF NOT EXISTS `weaponimpactsounds` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `WeaponSubClassID` tinyint(4) unsigned DEFAULT NULL,
  `ParrySoundType` tinyint(4) unsigned DEFAULT NULL,
  `ImpactSource` tinyint(4) unsigned DEFAULT NULL,
  `ImpactSoundID1` int(11) unsigned DEFAULT NULL,
  `ImpactSoundID2` int(11) unsigned DEFAULT NULL,
  `ImpactSoundID3` int(11) unsigned DEFAULT NULL,
  `ImpactSoundID4` int(11) unsigned DEFAULT NULL,
  `ImpactSoundID5` int(11) unsigned DEFAULT NULL,
  `ImpactSoundID6` int(11) unsigned DEFAULT NULL,
  `ImpactSoundID7` int(11) unsigned DEFAULT NULL,
  `ImpactSoundID8` int(11) unsigned DEFAULT NULL,
  `ImpactSoundID9` int(11) unsigned DEFAULT NULL,
  `ImpactSoundID10` int(11) unsigned DEFAULT NULL,
  `ImpactSoundID11` int(11) unsigned DEFAULT NULL,
  `CritImpactSoundID1` int(11) unsigned DEFAULT NULL,
  `CritImpactSoundID2` int(11) unsigned DEFAULT NULL,
  `CritImpactSoundID3` int(11) unsigned DEFAULT NULL,
  `CritImpactSoundID4` int(11) unsigned DEFAULT NULL,
  `CritImpactSoundID5` int(11) unsigned DEFAULT NULL,
  `CritImpactSoundID6` int(11) unsigned DEFAULT NULL,
  `CritImpactSoundID7` int(11) unsigned DEFAULT NULL,
  `CritImpactSoundID8` int(11) unsigned DEFAULT NULL,
  `CritImpactSoundID9` int(11) unsigned DEFAULT NULL,
  `CritImpactSoundID10` int(11) unsigned DEFAULT NULL,
  `CritImpactSoundID11` int(11) unsigned DEFAULT NULL,
  `PierceImpactSoundID1` int(11) unsigned DEFAULT NULL,
  `PierceImpactSoundID2` int(11) unsigned DEFAULT NULL,
  `PierceImpactSoundID3` int(11) unsigned DEFAULT NULL,
  `PierceImpactSoundID4` int(11) unsigned DEFAULT NULL,
  `PierceImpactSoundID5` int(11) unsigned DEFAULT NULL,
  `PierceImpactSoundID6` int(11) unsigned DEFAULT NULL,
  `PierceImpactSoundID7` int(11) unsigned DEFAULT NULL,
  `PierceImpactSoundID8` int(11) unsigned DEFAULT NULL,
  `PierceImpactSoundID9` int(11) unsigned DEFAULT NULL,
  `PierceImpactSoundID10` int(11) unsigned DEFAULT NULL,
  `PierceImpactSoundID11` int(11) unsigned DEFAULT NULL,
  `PierceCritImpactSoundID1` int(11) unsigned DEFAULT NULL,
  `PierceCritImpactSoundID2` int(11) unsigned DEFAULT NULL,
  `PierceCritImpactSoundID3` int(11) unsigned DEFAULT NULL,
  `PierceCritImpactSoundID4` int(11) unsigned DEFAULT NULL,
  `PierceCritImpactSoundID5` int(11) unsigned DEFAULT NULL,
  `PierceCritImpactSoundID6` int(11) unsigned DEFAULT NULL,
  `PierceCritImpactSoundID7` int(11) unsigned DEFAULT NULL,
  `PierceCritImpactSoundID8` int(11) unsigned DEFAULT NULL,
  `PierceCritImpactSoundID9` int(11) unsigned DEFAULT NULL,
  `PierceCritImpactSoundID10` int(11) unsigned DEFAULT NULL,
  `PierceCritImpactSoundID11` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.weaponswingsounds2
DROP TABLE IF EXISTS `weaponswingsounds2`;
CREATE TABLE IF NOT EXISTS `weaponswingsounds2` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SwingType` tinyint(4) unsigned DEFAULT NULL,
  `Crit` tinyint(4) unsigned DEFAULT NULL,
  `SoundID` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.weather
DROP TABLE IF EXISTS `weather`;
CREATE TABLE IF NOT EXISTS `weather` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Type` tinyint(4) unsigned DEFAULT NULL,
  `TransitionSkyBox` float DEFAULT NULL,
  `AmbienceID` int(11) unsigned DEFAULT NULL,
  `SoundAmbienceID` smallint(6) unsigned DEFAULT NULL,
  `EffectType` tinyint(4) unsigned DEFAULT NULL,
  `EffectTextureFileDataID` int(11) DEFAULT NULL,
  `WindSettingsID` tinyint(4) unsigned DEFAULT NULL,
  `Scale` float DEFAULT NULL,
  `Volatility` float DEFAULT NULL,
  `TwinkleIntensity` float DEFAULT NULL,
  `FallModifier` float DEFAULT NULL,
  `RotationalSpeed` float DEFAULT NULL,
  `ParticulateFileDataID` int(11) DEFAULT NULL,
  `VolumeEdgeFadeStart` float DEFAULT NULL,
  `OverrideColor` int(11) DEFAULT NULL,
  `OverrideColorIntensity` float DEFAULT NULL,
  `OverrideCount` float DEFAULT NULL,
  `OverrideOpacity` float DEFAULT NULL,
  `VolumeFlags` int(11) DEFAULT NULL,
  `LightningID` int(11) DEFAULT NULL,
  `Intensity1` float DEFAULT NULL,
  `Intensity2` float DEFAULT NULL,
  `EffectColor1` float DEFAULT NULL,
  `EffectColor2` float DEFAULT NULL,
  `EffectColor3` float DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.wmoareatable
DROP TABLE IF EXISTS `wmoareatable`;
CREATE TABLE IF NOT EXISTS `wmoareatable` (
  `AreaName` mediumtext DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `WMOID` smallint(6) unsigned DEFAULT NULL,
  `NameSetID` tinyint(4) unsigned DEFAULT NULL,
  `WMOGroupID` int(11) DEFAULT NULL,
  `SoundProviderPref` tinyint(4) unsigned DEFAULT NULL,
  `SoundProviderPrefUnderwater` tinyint(4) unsigned DEFAULT NULL,
  `AmbienceID` smallint(6) unsigned DEFAULT NULL,
  `UwAmbience` smallint(6) unsigned DEFAULT NULL,
  `ZoneMusic` smallint(6) unsigned DEFAULT NULL,
  `UwZoneMusic` int(11) unsigned DEFAULT NULL,
  `IntroSound` smallint(6) unsigned DEFAULT NULL,
  `UwIntroSound` smallint(6) unsigned DEFAULT NULL,
  `AreaTableID` smallint(6) unsigned DEFAULT NULL,
  `Flags` tinyint(4) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.wmoareatable_locale
DROP TABLE IF EXISTS `wmoareatable_locale`;
CREATE TABLE IF NOT EXISTS `wmoareatable_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `AreaName_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.wmominimaptexture
DROP TABLE IF EXISTS `wmominimaptexture`;
CREATE TABLE IF NOT EXISTS `wmominimaptexture` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `GroupNum` smallint(6) unsigned DEFAULT NULL,
  `BlockX` tinyint(4) unsigned DEFAULT NULL,
  `BlockY` tinyint(4) unsigned DEFAULT NULL,
  `FileDataID` int(11) DEFAULT NULL,
  `WMOID` smallint(6) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.worldmapoverlay
DROP TABLE IF EXISTS `worldmapoverlay`;
CREATE TABLE IF NOT EXISTS `worldmapoverlay` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UiMapArtID` int(11) unsigned DEFAULT NULL,
  `TextureWidth` smallint(6) unsigned DEFAULT NULL,
  `TextureHeight` smallint(6) unsigned DEFAULT NULL,
  `OffsetX` int(11) DEFAULT NULL,
  `OffsetY` int(11) DEFAULT NULL,
  `HitRectTop` int(11) DEFAULT NULL,
  `HitRectBottom` int(11) DEFAULT NULL,
  `HitRectLeft` int(11) DEFAULT NULL,
  `HitRectRight` int(11) DEFAULT NULL,
  `PlayerConditionID` int(11) unsigned DEFAULT NULL,
  `Flags` int(11) unsigned DEFAULT NULL,
  `AreaID1` int(11) unsigned DEFAULT NULL,
  `AreaID2` int(11) unsigned DEFAULT NULL,
  `AreaID3` int(11) unsigned DEFAULT NULL,
  `AreaID4` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.worldmapoverlaytile
DROP TABLE IF EXISTS `worldmapoverlaytile`;
CREATE TABLE IF NOT EXISTS `worldmapoverlaytile` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `RowIndex` tinyint(4) unsigned DEFAULT NULL,
  `ColIndex` tinyint(4) unsigned DEFAULT NULL,
  `LayerIndex` tinyint(4) unsigned DEFAULT NULL,
  `FileDataID` int(11) DEFAULT NULL,
  `WorldMapOverlayID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.worldstateexpression
DROP TABLE IF EXISTS `worldstateexpression`;
CREATE TABLE IF NOT EXISTS `worldstateexpression` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Expression` mediumtext DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.worldstateui
DROP TABLE IF EXISTS `worldstateui`;
CREATE TABLE IF NOT EXISTS `worldstateui` (
  `Icon` mediumtext DEFAULT NULL,
  `String` mediumtext DEFAULT NULL,
  `Tooltip` mediumtext DEFAULT NULL,
  `DynamicTooltip` mediumtext DEFAULT NULL,
  `ExtendedUI` mediumtext DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `MapID` smallint(6) DEFAULT NULL,
  `AreaID` smallint(6) unsigned DEFAULT NULL,
  `StateVariable` smallint(6) unsigned DEFAULT NULL,
  `Type` tinyint(4) unsigned DEFAULT NULL,
  `DynamicIconFileID` int(11) DEFAULT NULL,
  `DynamicFlashIconFileID` int(11) DEFAULT NULL,
  `OrderIndex` tinyint(4) unsigned DEFAULT NULL,
  `PhaseUseFlags` tinyint(4) unsigned DEFAULT NULL,
  `PhaseID` smallint(6) unsigned DEFAULT NULL,
  `PhaseGroupID` smallint(6) unsigned DEFAULT NULL,
  `ExtendedUIStateVariable1` smallint(6) unsigned DEFAULT NULL,
  `ExtendedUIStateVariable2` smallint(6) unsigned DEFAULT NULL,
  `ExtendedUIStateVariable3` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.worldstateui_locale
DROP TABLE IF EXISTS `worldstateui_locale`;
CREATE TABLE IF NOT EXISTS `worldstateui_locale` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(4) NOT NULL,
  `Icon_lang` mediumtext DEFAULT NULL,
  `String_lang` mediumtext DEFAULT NULL,
  `Tooltip_lang` mediumtext DEFAULT NULL,
  `DynamicTooltip_lang` mediumtext DEFAULT NULL,
  `ExtendedUI_lang` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.zoneintromusictable
DROP TABLE IF EXISTS `zoneintromusictable`;
CREATE TABLE IF NOT EXISTS `zoneintromusictable` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` mediumtext DEFAULT NULL,
  `SoundID` int(11) unsigned DEFAULT NULL,
  `Priority` tinyint(4) unsigned DEFAULT NULL,
  `MinDelayMinutes` smallint(6) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.zonemusic
DROP TABLE IF EXISTS `zonemusic`;
CREATE TABLE IF NOT EXISTS `zonemusic` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SetName` mediumtext DEFAULT NULL,
  `SilenceIntervalMin1` int(11) unsigned DEFAULT NULL,
  `SilenceIntervalMin2` int(11) unsigned DEFAULT NULL,
  `SilenceIntervalMax1` int(11) unsigned DEFAULT NULL,
  `SilenceIntervalMax2` int(11) unsigned DEFAULT NULL,
  `Sounds1` int(11) unsigned DEFAULT NULL,
  `Sounds2` int(11) unsigned DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table classic_tc_hotfix.zonestory
DROP TABLE IF EXISTS `zonestory`;
CREATE TABLE IF NOT EXISTS `zonestory` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PlayerFactionGroupID` tinyint(4) unsigned DEFAULT NULL,
  `DisplayAchievementID` int(11) unsigned DEFAULT NULL,
  `DisplayUIMapID` int(11) unsigned DEFAULT NULL,
  `PlayerUIMapID` int(11) DEFAULT NULL,
  `BuildVerified` int(8) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
