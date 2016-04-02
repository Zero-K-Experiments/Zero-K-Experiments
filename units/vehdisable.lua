unitDef = {
  unitname            = [[vehdisable]],
  name                = [[Dominatrix]],
  description         = [[Electronic Warfare Vehicle]],
  acceleration        = 0.0444,
  brakeRate           = 0.0385,
  buildCostEnergy     = 420,
  buildCostMetal      = 420,
  builder             = false,
  buildPic            = [[capturecar.png]],
  buildTime           = 420,
  canAttack           = false,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[LAND]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[26 26 50]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[cylZ]],
  corpse              = [[DEAD]],

  customParams        = {
    description_pl = [[Pojazd wojny cybernetycznej]],
    helptext       = [[The Dominatrix progressively disables enemies with its electronic warfare attack, starting by slowing their movement and attack, then disarming them and finally paralyzing them outright.]],
	helptext_pl    = [[Dominatrix stopniowo unieszkodliwia wrogie jednostki, zaczynajac od spowolnienia ruchu i ataku, poprzez rozbrojenie, a konczac na calkowitym paralizu.]],
	modelradius    = [[13]],
  },

  explodeAs           = [[BIG_UNITEX]],
  footprintX          = 3,
  footprintZ          = 3,
  iconType            = [[vehiclespecial]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  leaveTracks         = true,
  mass                = 205,
  maxDamage           = 1120,
  maxSlope            = 18,
  maxVelocity         = 2.2,
  maxWaterDepth       = 22,
  minCloakDistance    = 75,
  movementClass       = [[TANK3]],
  moveState           = 0,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP]],
  objectName          = [[corvrad_big.s3o]],
  radarDistance       = 1200,
  radarEmitHeight     = 100,
  script              = [[vehdisable.lua]],
  seismicSignature    = 4,
  selfDestructAs      = [[BIG_UNITEX]],
  side                = [[CORE]],
  sightDistance       = 550,
  sonarDistance       = 1200,  
  trackOffset         = -7,
  trackStrength       = 5,
  trackStretch        = 1,
  trackType           = [[StdTank]],
  trackWidth          = 26,
  turninplace         = 0,
  turnRate            = 420,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[DISABLERAY]],
      badTargetCategory  = [[UNARMED FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs          = {

    DISABLERAY = {
      name                    = [[Disable Ray]],
      --avoidFriendly           = false,
      beamdecay               = 0.9,
      beamTime                = 0.1,
      beamttl                 = 1,
      --collideFriendly         = false,
      coreThickness           = 0,
      craterBoost             = 0,
      craterMult              = 0,
      
      customParams        = {
	disarmDamageMult = 4,
	disarmDamageOnly = 0,
	disarmTimer      = 5, -- seconds
      },

      damage                  = {
        default = 40,
        planes  = 40,
        subs    = 40,
      },

      explosionGenerator      = [[custom:NONE]],
      fireStarter             = 30,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 0,
      largeBeamLaser          = true,
      laserFlareSize          = 0,
      minIntensity            = 1,
      paralyzer               = true,
      paralyzeTime            = 3,
      range                   = 520,
      reloadtime              = 0.1,
      rgbColor                = [[0 0.2 0.8]],
      scrollSpeed             = 2,
      soundStart              = [[weapon/laser/pulse_laser2]],
      soundStartVolume        = 0.5,
      soundTrigger            = true,
      sweepfire               = false,
      texture1                = [[dosray]],
      texture2                = [[flare]],
      texture3                = [[flare]],
      texture4                = [[smallflare]],
      thickness               = 4.2,
      tolerance               = 5000,
      turret                  = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 500,
    },

  },


  featureDefs         = {

    DEAD = {
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[20]],
      object           = [[corvrad_big_dead.s3o]],
    },


    HEAP = {
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[4]],
      object           = [[debris2x2c.s3o]],
    },

  },

}

return lowerkeys({ vehdisable = unitDef })
