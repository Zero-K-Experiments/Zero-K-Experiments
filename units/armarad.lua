unitDef = {
  unitname                      = [[armarad]],
  name                          = [[Advanced Radar]],
  description                   = [[Long-Range Radar, Halves Radar Wobble]],
  activateWhenBuilt             = true,
  buildCostEnergy               = 500,
  buildCostMetal                = 500,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 4,
  buildingGroundDecalSizeY      = 4,
  buildingGroundDecalType       = [[armarad_aoplane.dds]],
  buildPic                      = [[armarad.png]],
  buildTime                     = 500,
  canAttack                     = false,
  category                      = [[UNARMED FLOAT]],
  collisionVolumeOffsets        = [[0 -8 0]],
  collisionVolumeScales         = [[32 83 32]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[CylY]],
  corpse                        = [[DEAD]],

  customParams                  = {
    description_de = [[Langstreckenradar, halbiert Radarungenauigkeit]],
    description_pl = [[Radar Dalekiego Zasiegu z ulepszeniem dokladnosci]],
    helptext       = [[The advanced Radar Tower has a considerably greater range than the basic version. In addition each advanced radar tower halves the radar wobble of units. This works globally and affects all allied radars. Building one or two can be of great help, at a price.]],
    helptext_de    = [[Der erweiterte Radarturm hat eine weitaus größere Radarreichweite als die Standardvariante. Zusätzlich wird das hin und her wackeln von Zielen halbiert. Dieser Effekt ist global und wirkt such auf alle verbündeten Radartürme aus. Ein, zwei solcher Türme können sehr nützlich sein, haben allerdings ihren Preis.]],
    helptext_pl    = [[Ten radar ma zdecydowanie wiekszy zasieg niz podstawowa wersja. Ponadto, kazdy taki budynek zwieksza dokladnosc namiaru wszystkich wlasnych i sprzymierzonych radarow.]],
    modelradius    = [[16]],
	removewait     = 1,
	priority_misc  = 2, -- High
  },

  energyUse                     = 3,
  explodeAs                     = [[SMALL_BUILDINGEX]],
  floater                       = true,
  footprintX                    = 2,
  footprintZ                    = 2,
  iconType                      = [[advradar]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  isTargetingUpgrade            = true,
  levelGround                   = false,
  maxDamage                     = 330,
  maxSlope                      = 36,
  minCloakDistance              = 150,
  objectName                    = [[novaradar.s3o]],
  script                        = [[armarad.lua]],
  onoffable                     = true,
  radarDistance                 = 4000,
  radarEmitHeight               = 120,
  seismicSignature              = 4,
  selfDestructAs                = [[SMALL_BUILDINGEX]],
  sightDistance                 = 800,
  sonarDistance			 		= 4000,  
  useBuildingGroundDecal        = true,
  yardMap                       = [[oooo]],

  featureDefs                   = {

    DEAD  = {
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[novaradar_dead.s3o]],
    },

    HEAP  = {
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2b.s3o]],
    },

  },

}

return lowerkeys({ armarad = unitDef })
