unitDef = {
  unitname               = [[fighter]],
  name                   = [[Swift]],
  description            = [[Multi-role Fighter]],
  amphibious             = true,
  buildCostMetal         = 150,
  buildPic               = [[fighter.png]],
  canAttack              = true,
  canFly                 = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canstop                = [[1]],
  canSubmerge            = false,
  category               = [[FIXEDWING]],
  collide                = false,
  collisionVolumeOffsets = [[0 0 5]],
  collisionVolumeScales  = [[25 8 40]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[box]],
  corpse                 = [[DEAD]],
  crashDrag              = 0.02,
  cruiseAlt              = 200,

  customParams           = {
    description_bp = [[Caça básico]],
    description_fr = [[Chasseur Multirôle]],
	description_de = [[Mehrzweck-Tarnkappenjäger]],
    helptext       = [[The Swift can hit both land and air. It is effective against air units with its guided missiles and lasers, but enemy AA and air superiority fighters will kill it quickly. In numbers, it can harass land units and is suitable for raiding. Perhaps most notably, they are equipped with afterburner jets that can be used to give the Swift a massive speed boost, allowing them to execute incredible combat and evasive maneuvers.]],
    helptext_bp    = [[Este caça pode atacar unidades aéreas e terrestres e protege bem outras unidades contra unidades aéreas, mas é morto rapidamente por fogo anti-aéreo e caças de superioridade aérea. Funciona melhor contra unidades terrestres quando em grandes números.]],
    helptext_fr    = [[Capable de tirer en l'air ou au sol le Swift n'est efficace qu'en groupe. Sa puissance de feu limité le rends moins éfficace qu'un aeronef dédié au combat Air/Sol ou au Air/Air.]],
	helptext_de    = [[Der Swift kann sowohl Land-, als auch Lufteinheiten treffen. Er eignet sich gut zur Verteidigung gegen Lufteinheiten, aber feindliche Flugabwehr und Luftüberlegenheitsjäger werden ihn schnell erlegen. Zuhauf kann er aber Landeinheiten durchaus auf die Nerven gehen.]],

	specialreloadtime = [[850]],
	boost_speed_mult = 5,
	boost_accel_mult = 6,
	boost_duration = 30, -- frames

	midposoffset   = [[0 3 0]],
	modelradius    = [[5]],
	refuelturnradius = [[80]],
  },

  defaultmissiontype     = [[VTOL_standby]],
  explodeAs              = [[GUNSHIPEX]],
  fireState              = 2,
  floater                = true,
  footprintX             = 2,
  footprintZ             = 2,
  frontToSpeed           = 0,
  iconType               = [[fighter]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maneuverleashlength    = [[1280]],
  maxAcc                 = 0.5,
  maxDamage              = 300,
  maxVelocity            = 13,
  minCloakDistance       = 75,
  mygravity              = 1,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM SATELLITE SUB LAND SINK TURRET SHIP SWIM FLOAT HOVER]],
  objectName             = [[fighter.s3o]],
  script                 = [[fighter.lua]],
  selfDestructAs         = [[GUNSHIPEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:MUZZLE_ORANGE]],
      [[custom:FF_PUFF]],
      [[custom:BEAMWEAPON_MUZZLE_RED]],
      [[custom:FLAMER]],
    },

  },

  side                   = [[CORE]],
  sightDistance          = 520,
  smoothAnim             = true,
  speedToFront           = 0,
  turnRate               = 839,

  weapons                = {

    {
      def                = [[SWIFT_GUN]],
      badTargetCategory  = [[FIXEDWING]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 60,
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
	  badTargetCategory  = [[LAND SINK TURRET SHIP SWIM FLOAT HOVER]],
    },


    {
      def                = [[MISSILE]],
      badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
    },

  },


  weaponDefs             = {

    SWIFT_GUN  = {
      name                    = [[Mini Laser Blaster]],
      areaOfEffect            = 8,
      collideFriendly         = false,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,

      customparams = {
		light_camera_height = 1500,
        light_ground_height = 120,
		light_radius = 100,
      },

      damage                  = {
        default = 7.1,
        subs    = 0.36,
      },

      duration                = 0.012,
      edgeEffectiveness       = 1,
      explosionGenerator      = [[custom:BEAMWEAPON_HIT_RED]],
      fireStarter             = 10,
      impactOnly              = true,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      lodDistance             = 10000,
      range                   = 700,
      reloadtime              = 0.2,
      rgbColor                = [[1 0 0]],
      soundHit                = [[weapon/laser/lasercannon_hit]],
      soundStart              = [[weapon/laser/small_laser_fire3]],
      soundTrigger            = true,
      sweepfire               = false,
      thickness               = 2.85043856274785,
      tolerance               = 2000,
      turret                  = true,
      weaponType              = [[LaserCannon]],
      weaponVelocity          = 2000,
    },


    MISSILE = {
      name                    = [[Guided Missiles]],
      areaOfEffect            = 48,
      avoidFriendly           = true,
      canattackground         = false,
      cegTag                  = [[missiletrailblue]],
      collideFriendly         = false,
      craterBoost             = 1,
      craterMult              = 2,
      cylinderTargeting       = 6,

	  customParams        	  = {
		isaa = [[1]],
		light_color = [[0.5 0.6 0.6]],
	  },

      damage                  = {
        default = 13.5,
        planes  = 135,
        subs    = 13.5,
      },

      explosionGenerator      = [[custom:WEAPEXP_PUFF]],
      fireStarter             = 70,
      flightTime              = 3,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      metalpershot            = 0,
      model                   = [[wep_m_fury.s3o]],
      noSelfDamage            = true,
      range                   = 530,
      reloadtime              = 5.2,
      smokeTrail              = true,
      soundHit                = [[weapon/missile/rocket_hit]],
      soundStart              = [[weapon/missile/missile_fire7]],
      startVelocity           = 200,
      texture2                = [[AAsmoketrail]],
      tolerance               = 22000,
      tracks                  = true,
      turnRate                = 40000,
      weaponAcceleration      = 550,
      weaponTimer             = 5,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 750,
    },

  },


  featureDefs            = {

    DEAD  = {
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      object           = [[fighter_dead.s3o]],
    },


    HEAP  = {
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[4]],
      object           = [[debris2x2c.s3o]],
    },

  },

}

return lowerkeys({ fighter = unitDef })
