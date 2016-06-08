unitDef = {
  unitname            = [[chicken_sporeshooter]],
  name                = [[Sporeshooter]],
  description         = [[All-Terrain Spores (Anti-Air/Skirm)]],
  acceleration        = 0.36,
  brakeRate           = 0.205,
  buildCostMetal      = 0,
  builder             = false,
  buildPic            = [[chicken_sporeshooter.png]],
  canAttack           = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[LAND]],

  customParams        = {
    description_fr = [[Lanceur de spores tout terrain (Anti-Air/Skirm)]],
	description_de = [[Gel�ndeg�ngige Sporen (Luftabwehr/Skirmish)]],
	description_pl = [[Zarodniki przeciwlotnicze]],
    helptext       = [[The Sporeshooter shoots spores to drop aircraft and hit land targets from a distance. Can climb walls for surprise attacks.]],
    helptext_fr    = [[Le Sporeshooter lance des salves de spores ? t?te chercheuse sur les unit?s adverses, tant terrestres qu'a?riennes, tout en ?tant tr?s mobile et pouvant grimper m?me les parois les plus escarp?es afin de surprendre l'adversaire.]],
	helptext_de    = [[Der Sporeshooter verschie�t Sporen, um Flugzeuge und Landziele aus der Distanz zu vernichten. Kann auch W�nde erklimmen und somit �Eerraschende Angriffe ausf�Eren.]],
	helptext_pl    = [[Sporeshooter wystrzeliwuje zarodniki, sluzac jako obrona przeciwlotnicza, ale moze tez skutecznie atakowac cele naziemne dzieki dobremu zasiegowi. Moze wspinac sie na strome wzniesienia.]],
  },

  explodeAs           = [[NOWEAPON]],
  footprintX          = 3,
  footprintZ          = 3,
  iconType            = [[spiderskirm]],
  idleAutoHeal        = 20,
  idleTime            = 300,
  leaveTracks         = true,
  maxDamage           = 1800,
  maxSlope            = 72,
  maxVelocity         = 2.2,
  maxWaterDepth       = 22,
  minCloakDistance    = 75,
  movementClass       = [[ATKBOT3]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM LAND SINK TURRET SHIP SATELLITE SWIM FLOAT SUB HOVER STUPIDTARGET]],
  objectName          = [[chicken_sporeshooter.s3o]],
  selfDestructAs      = [[NOWEAPON]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:blood_spray]],
      [[custom:blood_explode]],
      [[custom:dirt]],
    },

  },

  side                = [[THUNDERBIRDS]],
  sightDistance       = 512,
  smoothAnim          = true,
--  sonarDistance       = 450,
  trackOffset         = 0.5,
  trackStrength       = 9,
  trackStretch        = 1,
  trackType           = [[ChickenTrackPointy]],
  trackWidth          = 70,
  turnRate            = 1200,
  upright             = false,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[SPORES]],
      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs          = {

    SPORES = {
      name                    = [[Spores]],
      areaOfEffect            = 24,
      avoidFriendly           = false,
      burst                   = 8,
      burstrate               = 0.1,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,
      
      customParams            = {
        light_radius = 0,
      },
      
      damage                  = {
        default = 75,
        planes  = 75,
        subs    = 7.5,
      },

      dance                   = 60,
      explosionGenerator      = [[custom:NONE]],
      fireStarter             = 0,
      fixedlauncher           = 1,
      flightTime              = 5,
      groundbounce            = 1,
      heightmod               = 0.5,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      metalpershot            = 0,
      model                   = [[chickeneggpink.s3o]],
      noSelfDamage            = true,
      range                   = 600,
      reloadtime              = 6,
      smokeTrail              = true,
      startVelocity           = 100,
      texture1                = [[]],
      texture2                = [[sporetrail]],
      tolerance               = 10000,
      tracks                  = true,
      turnRate                = 24000,
      turret                  = true,
      waterweapon             = true,
      weaponAcceleration      = 100,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 500,
      wobble                  = 32000,
    },

  },

}

return lowerkeys({ chicken_sporeshooter = unitDef })
