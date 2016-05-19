unitDef = {
  unitname                      = [[missiletower]],
  name                          = [[Hacksaw]],
  description                   = [[Burst Anti-Air Turret]],
  buildAngle                    = 8192,
  buildCostMetal                = 220,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 4,
  buildingGroundDecalSizeY      = 4,
  buildingGroundDecalType       = [[missiletower_aoplane.dds]],
  buildPic                      = [[missiletower.png]],
  canAttack                     = true,
  canstop                       = [[1]],
  category                      = [[FLOAT]],
  collisionVolumeOffsets        = [[0 12 0]],
  collisionVolumeScales         = [[42 53 42]],
  collisionVolumeType	        = [[CylY]],
  corpse                        = [[DEAD]],

  customParams                  = {
    description_de = [[Flugabwehrraketenturm]],
    description_pl = [[Wieza przeciwlotnicza]],
    helptext       = [[Hacksaw is loaded with 8 missiles, that can drop even the most heavily armored bomber in one volley of hits, but it takes a considerable amount of time to reload, making Hacksaw less than ideal against massive raids or tough targets.]],
	helptext_de    = [[Seine Zwillingsraketen können sogar die schwersten Bomber mit einem Schuss vom Himmel holen, brauchen aber eine beachtliche Zeit zum Nachladen, was sie gegen leichtere Ziele nicht sehr effektiv macht.]],
	helptext_pl    = [[Podwojne rakiety, ktore wystrzeliwuje Hacksaw, zadaja bardzo duze obrazenia, jednak maja rownie dlugi czas przeladowania.]],
  },

  explodeAs                     = [[SMALL_BUILDINGEX]],
  floater                       = true,
  footprintX                    = 3,
  footprintZ                    = 3,
  iconType                      = [[defenseskirmaa]],
  maxDamage                     = 580,
  maxSlope                      = 18,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  noChaseCategory               = [[FIXEDWING LAND SINK TURRET SHIP SATELLITE SWIM GUNSHIP FLOAT SUB HOVER]],
  objectName                    = [[missiletower.s3o]],
  script                        = [[missiletower.lua]],
  selfDestructAs                = [[SMALL_BUILDINGEX]],

  sfxtypes                      = {

    explosiongenerators = {
      [[custom:STORMMUZZLE]],
      [[custom:STORMBACK]],
    },

  },

  side                          = [[CORE]],
  sightDistance                 = 500,
  useBuildingGroundDecal        = true,
  waterline						= 10,
  workerTime                    = 0,
  yardMap                       = [[ooooooooo]],

  weapons                       = {

    {
      def                = [[MISSILE]],
      badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
    },

  },


  weaponDefs                    = {

    MISSILE = {
      name                    = [[Homing Missiles]],
      areaOfEffect            = 24,
      burst                   = 8,
      burstrate               = 0.125,
      canattackground         = false,
      cegTag                  = [[missiletrailbluebig]],
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting       = 3,

	  customParams        	  = {
		isaa = [[1]],
		light_color = [[0.5 0.6 0.6]],
	  },

      damage                  = {
        default = 15.1,
        planes  = 150.1,
      },

      explosionGenerator      = [[custom:FLASH2]],
      fireStarter             = 70,
      flightTime              = 3,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
	  leadLimit               = 0,
      model                   = [[wep_m_phoenix.s3o]],
      noSelfDamage            = true,
      range                   = 420,
      reloadtime              = 12,
      smokeTrail              = true,
      soundHit                = [[explosion/ex_med11]],
      soundStart              = [[weapon/missile/missile_fire3]],
      startVelocity           = 700,
      texture2                = [[AAsmoketrail]],
      tracks                  = true,
      turnRate                = 70000,
      turret                  = true,
      weaponAcceleration      = 200,
      weaponTimer             = 5,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 1000,
    },

  },


  featureDefs                   = {

    DEAD  = {
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[20]],
      object           = [[missiletower_dead.s3o]],
    },


    HEAP  = {
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[4]],
      object           = [[debris3x3a.s3o]],
    },

  },

}

return lowerkeys({ missiletower = unitDef })
