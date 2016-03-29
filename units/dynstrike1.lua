unitDef = {
  unitname               = [[dynstrike1]],
  name                   = [[Strike Commander]],
  description            = [[Mobile Assault Commander]],
  acceleration           = 0.18,
  activateWhenBuilt      = true,
  amphibious             = [[1]],
  brakeRate              = 0.375,
  buildCostMetal         = 1200,
  buildDistance          = 120,
  builder                = true,

  buildoptions           = {
  },

  buildPic               = [[commstrike.png]],
  canAttack              = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canreclamate           = [[1]],
  canstop                = [[1]],
  category               = [[LAND]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[45 50 45]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[CylY]],
  commander              = true,
  corpse                 = [[DEAD]],

  customParams           = {
	cloakstealth = [[1]],
	description_de = [[Mobiler Sturmkommandant]],
	description_pl = [[Wszechstronny Dowodca]],
	helptext       = [[The Strike Commander is a well-balanced command platform that can mount most modules, with decent speed, armor, and regeneration.]],
	helptext_de    = [[Der Strike Commander bietet ein sehr ausgeglichenes Gerüst, das mit den meisten Modulen ausgerüstet werden kann, mit anständiger Geschwindigkeit, Panzerung und Selbstreparierung.]],
	helptext_pl    = [[Strike to wszechstronny Dowodca, ktory moze uzywac wiekszosci modulow i ma dobra predkosc, wytrzymalosc i samonaprawe.]],
	level = [[1]],
	statsname = [[dynstrike1]],
	soundok = [[heavy_bot_move]],
	soundselect = [[bot_select]],
	soundbuild = [[builder_start]],
	commtype = [[1]],
	--decorationicons = {chest = "friendly", shoulders = "arrows-dot"},
    aimposoffset   = [[0 15 0]],
	dynamic_comm   = 1,
  },
  
  energyMake             = 0,
  energyUse              = 0,
  explodeAs              = [[ESTOR_BUILDINGEX]],
  footprintX             = 2,
  footprintZ             = 2,
  hideDamage             = false,
  iconType               = [[commander1]],
  idleAutoHeal           = 5,
  idleTime               = 0,
  leaveTracks            = true,
  losEmitHeight          = 40,
  maxDamage              = 2500,
  maxSlope               = 36,
  maxVelocity            = 1.35,
  maxWaterDepth          = 5000,
  metalMake              = 0,
  minCloakDistance       = 75,
  movementClass          = [[AKBOT2]],
  noChaseCategory        = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK TURRET]],
  norestrict             = [[1]],
  objectName             = [[strikecom.dae]],
  script                 = [[dynstrike.lua]],
  selfDestructAs         = [[ESTOR_BUILDINGEX]],

  sfxtypes               = {

    explosiongenerators = {
    	[[custom:BEAMWEAPON_MUZZLE_BLUE]],
		[[custom:NONE]],
    },

  },

  showNanoSpray          = true,
  sightDistance          = 500,
--  sonarDistance          = 300,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ComTrack]],
  trackWidth             = 26,
  turnRate               = 1148,
  upright                = true,
  workerTime             = 10,

  featureDefs            = {

    DEAD      = {
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[strikecom_dead_1.dae]],
    },

    HEAP      = {
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
    },


  },

}

return lowerkeys({ dynstrike1 = unitDef })
