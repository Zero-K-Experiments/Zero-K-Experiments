unitDef = {
  unitname               = [[destroyer]],
  name                   = [[Daimyo]],
  description            = [[Destroyer (Riot/Antisub)]],
  acceleration           = 0.0417,
  activateWhenBuilt      = true,
  brakeRate              = 0.142,
  buildAngle             = 16384,
  buildCostMetal         = 700,
  builder                = false,
  buildPic               = [[destroyer.png]],
  canAttack              = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[SHIP]],
  collisionVolumeOffsets = [[0 0 3]],
  collisionVolumeScales  = [[32 46 102]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[box]],
  corpse                 = [[DEAD]],

  customParams           = {
    description_fr = [[Destroyer]],
    description_pl = [[Niszczyciel]],
	description_de = [[Zerst�rer]],
    helptext       = [[The Daimyo class destroyer packs a wallop with its main gun, a powerful riot cannon. It also features missiles that can hit submarines and surface targets alike. The Daimyo is best attacked from afar, using surface ships or hovercraft with long-range weapons.]],
    helptext_pl    = [[Glowna bronia Daimyo jest mocne dzialo; jest takze wyposazony w rakiety, ktore moga zanurzyc sie i uderzac w cele podwodne. Walczac przeciwko Daimyo, najlepiej atakowac z bezpiecznej odleglosci.]],
	extradrawrange = 420,
  },

  explodeAs              = [[BIG_UNITEX]],
  floater                = true,
  footprintX             = 4,
  footprintZ             = 4,
  iconType               = [[destroyer]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maxDamage              = 3300,
  maxVelocity            = 2.9,
  minCloakDistance       = 75,
  minWaterDepth          = 10,
  movementClass          = [[BOAT4]],
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE]],
  objectName             = [[destroyer.s3o]],
  script				 = [[destroyer.lua]],
  selfDestructAs         = [[BIG_UNITEX]],
  side                   = [[ARM]],
  sightDistance          = 500,
  
  sfxtypes               = {

    explosiongenerators = {
	  [[custom:LARGE_MUZZLE_FLASH_FX]],
      [[custom:PULVMUZZLE]],
    },

  },  
  
  smoothAnim             = true,
--  sonarDistance          = 700,
  turninplace            = 0,
  turnRate               = 311,
  waterline              = 0,
  workerTime             = 0,

  weapons                = {

    {
      def                = [[PLASMA]],
      badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[SWIM LAND SHIP SINK TURRET FLOAT GUNSHIP HOVER]],
    },


    {
      def                = [[MISSILE]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[SWIM FIXEDWING LAND SUB SINK TURRET FLOAT SHIP GUNSHIP HOVER]],
    },

  },


  weaponDefs             = {

    PLASMA      = {
      name                    = [[Medium Plasma Cannon]],
      accuracy                = 200,
      areaOfEffect            = 160,
      craterBoost             = 1,
      craterMult              = 2,

      damage                  = {
        default = 350,
        planes  = 350,
        subs    = 17.5,
      },

      explosionGenerator      = [[custom:bigbulletimpact]],
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      noSelfDamage            = true,
      range                   = 350,
      reloadtime              = 2,
      soundHit                = [[weapon/cannon/cannon_hit2]],
      soundStart              = [[weapon/cannon/heavy_cannon]],
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 330,
    },
	
	MISSILE      = {
      name                    = [[Destroyer Missiles]],
      areaOfEffect            = 48,
      cegTag                  = [[missiletrailyellow]],
      craterBoost             = 1,
      craterMult              = 2,

      damage                  = {
        default = 160,
        subs    = 160,
      },

      edgeEffectiveness       = 0.5,
      fireStarter             = 100,
	  fixedLauncher			  = true,	  
      flightTime              = 4,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      model                   = [[wep_m_hailstorm.s3o]],
      noSelfDamage            = true,
      range                   = 420,
      reloadtime              = 2,
      smokeTrail              = true,
      soundHit                = [[weapon/missile/missile_fire12]],
      soundStart              = [[weapon/missile/missile_fire10]],
      startVelocity			  = 100,
      tolerance               = 4000,
	  tracks				  = true,
	  turnrate				  = 30000,
	  turret				  = true,	  
	  waterWeapon			  = true,
      weaponAcceleration      = 300,
      weaponTimer             = 1,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 1800,
    },
  },


  featureDefs            = {

    DEAD  = {
	  collisionVolumeOffsets = [[0 0 3]],
	  collisionVolumeScales  = [[32 46 102]],
	  collisionVolumeTest    = 1,
	  collisionVolumeType    = [[box]],	  
      featureDead      = [[HEAP]],
      footprintX       = 5,
      footprintZ       = 5,
      height           = [[4]],
      object           = [[destroyer_dead.s3o]],
    },

    
    HEAP  = {
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[debris4x4b.s3o]],
    },

  },

}

return lowerkeys({ destroyer = unitDef })
