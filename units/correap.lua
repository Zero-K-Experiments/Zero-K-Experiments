unitDef = {
  unitname            = [[correap]],
  name                = [[Reaper]],
  description         = [[Assault Tank]],
  acceleration        = 0.0237,
  brakeRate           = 0.04786,
  buildCostEnergy     = 850,
  buildCostMetal      = 850,
  builder             = false,
  buildPic            = [[correap.png]],
  buildTime           = 850,
  canAttack           = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[LAND]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[50 50 50]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[ellipsoid]],  
  corpse              = [[DEAD]],

  customParams        = {
    description_bp = [[Tanque de assalto]],
    description_fr = [[Tank d'Assaut]],
	description_de = [[Sturmpanzer]],
	description_pl = [[Czolg szturmowy]],
    helptext       = [[A heavy duty battle tank. The Reaper excels at absorbing damage in pitched battles, but its low rate of fire means it is not so good at dealing with swarms, and its heavy armor comes at the price of manuverability.]],
    helptext_bp    = [[Reaper é um tanque de batalha pesado que excede em absorver danos e servir de escudo para unidades mais fracas, mas sua baixa velocidade de disparo e agilidade o tornam pouco eficiente contra grandes grupos de pequenas unidades inimigas.]],
    helptext_fr    = [[Le Reaper est un tank d'assaut lourd. Lourd par le blindage, lourd par les dégâts. La lente cadence de tir de son double canon plasma ne conviendra pas aux situations d'encerclement et aux nuées d'ennemis et son blindage le rends peu maniable.]],
	helptext_de    = [[Der Reaper ist ein schwerer Kampfpanzer, der sich durch die Absorbtion von Schaden auszeichnet. Seine niedrige Feuerrate führt dazu, dass er mit großen Gruppen von Einheiten nicht gut klar kommt und seine schwere Panzerung wirkt sich negativ auf die Manövrierfähigkeit aus.]],
	helptext_pl    = [[Reaper to ciezki czolg bojowy, ktory jest w stanie przyjac duze obrazenia. Jego niska szybkostrzelnosc przeszkadza mu w walce z lekkimi jednostkami; ponadto, nie jest zbyt mobilny.]],
	aimposoffset   = [[0 0 0]],
	midposoffset   = [[0 0 0]],
	modelradius    = [[25]],
  },

  explodeAs           = [[BIG_UNITEX]],
  footprintX          = 4,
  footprintZ          = 4,
  iconType            = [[tankassault]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  leaveTracks         = true,
  mass                = 430,
  maxDamage           = 6800,
  maxSlope            = 18,
  maxVelocity         = 2.45,
  maxWaterDepth       = 22,
  minCloakDistance    = 75,
  movementClass       = [[TANK4]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE SUB]],
  objectName          = [[correap.s3o]],
  script	      = [[correap.cob]],
  seismicSignature    = 4,
  selfDestructAs      = [[BIG_UNITEX]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:LARGE_MUZZLE_FLASH_FX]],
    },

  },

  side                = [[CORE]],
  sightDistance       = 506,
  smoothAnim          = true,
  trackOffset         = 8,
  trackStrength       = 8,
  trackStretch        = 1,
  trackType           = [[StdTank]],
  trackWidth          = 42,
  turninplace         = 0,
  turnRate            = 364,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[COR_REAP]],
      badTargetCategory  = [[FIXEDWING GUNSHIP]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs          = {

    COR_REAP = {
      name                    = [[Medium Plasma Cannon]],
      areaOfEffect            = 32,
      burst                   = 2,
      burstRate               = 0.2,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 320,
        planes  = 320,
        subs    = 16,
      },

      explosionGenerator      = [[custom:DEFAULT]],
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      noSelfDamage            = true,
      range                   = 360,
      reloadtime              = 4,
      soundHit                = [[weapon/cannon/reaper_hit]],
      soundStart              = [[weapon/cannon/cannon_fire5]],
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 255,
    },

  },


  featureDefs         = {

    DEAD  = {
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[20]],
      object           = [[correap_dead.s3o]],
    },

    HEAP  = {
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[4]],
      object           = [[debris3x3b.s3o]],
    },

  },

}

return lowerkeys({ correap = unitDef })
