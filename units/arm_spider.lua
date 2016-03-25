unitDef = {
  unitname               = [[arm_spider]],
  name                   = [[Weaver]],
  description            = [[Construction Spider, Builds at 7.5 m/s]],
  acceleration           = 0.2,
  activateWhenBuilt      = true,
  brakeRate              = 0.2,
  buildCostEnergy        = 200,
  buildCostMetal         = 200,
  buildDistance          = 220,
  builder                = true,

  buildoptions           = {
  },

  buildPic               = [[arm_spider.png]],
  buildTime              = 200,
  canAttack              = false,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canreclamate           = [[1]],
  canstop                = [[1]],
  category               = [[LAND UNARMED]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[30 30 30]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[ellipsoid]], 
  corpse                 = [[DEAD]],

  customParams           = {
    description_bp = [[Aranha e de construçao, Constrói a 7.5 m/s]],
    description_de = [[Konstruktionsspinne, Baut mit 7.5 M/s]],
    description_es = [[Aranha de construcción, construye a 7.5 m/s]],
    description_fi = [[Rakentaja/kaikuluotainkiipeilij?, rakentaa 7.5m/s nopeudella]],
    description_fr = [[Araignée de Construction, construit à 7.5 m/s]],
    description_it = [[Ragno do costruzione, costruisce a 7.5 m/s]],
    description_pl = [[Pajak konstruktor, moc 7.5 m/s]],
    helptext       = [[The Weaver is a constructor that can climb over any obstacle and build defenses on high ground. It is also equipped with a short range radar.]],
    helptext_bp    = [[Weaver é o construtor escalador. Pode subir qualquer obstáculo, mas constrói mais devagar que construtores normais.]],
    helptext_de    = [[Der Weaver ist eine bauende Einheit, die Hindernisse überwinden und somit Verteidigungsanlagen auf Erhöhungen bauen kann. Er hat auch ein Radar.]],
    helptext_es    = [[El Weaver es el constructor que puede treparse sobre qualquier obstáculo y construir defensas en terreno alto]],
    helptext_fi    = [[Weaver pystyy liikkumaan vaikeakulkuisimmassakin maastossa ja rakentamaan vaivatta my?s useimmille muille rakentajille saavuttamattomiin paikkoihin.]],
    helptext_fr    = [[Le Weaver est un robot de construction arachnide tout terrain pouvant atteindre des zones élevées. Il a un radar.]],
    helptext_it    = [[Il Weaver é un costruttore che puo arrampicarsi su qualunque ostacolo e costruire difese nel terreno alto ed ha un radar.]],
    helptext_pl    = [[Weaver jest konstruktorem mogacym wspinac sie po kazdej powierzchni. Jest wyposazony w radar krotkiego zasiegu.]],
	modelradius    = [[15]],
  },

  energyMake             = 0.225,
  energyUse              = 0,
  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 3,
  footprintZ             = 3,
  iconType               = [[builder]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  leaveTracks            = true,
  maxDamage              = 820,
  maxSlope               = 72,
  maxVelocity            = 1.8,
  maxWaterDepth          = 22,
  metalMake              = 0.225,
  minCloakDistance       = 75,
  movementClass          = [[TKBOT3]],
  objectName             = [[weaver.s3o]],
  radarDistance          = 1200,
  radarEmitHeight        = 100,
  script                 = [[arm_spider.lua]],
  seismicSignature       = 16,
  selfDestructAs         = [[BIG_UNITEX]],
  showNanoSpray          = false,
  sightDistance          = 380,
  sonarDistance			 = 1200,
  trackOffset            = 0,
  trackStrength          = 10,
  trackStretch           = 1,
  trackType              = [[ChickenTrackPointyShort]],
  trackWidth             = 54,
  terraformSpeed         = 450,
  turnRate               = 1400,
  workerTime             = 7.5,

  featureDefs            = {

    DEAD  = {
      description      = [[Wreckage - Weaver]],
      blocking         = true,
      damage           = 820,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      metal            = 80,
      object           = [[weaver_wreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 80,
    },

    HEAP  = {
      description      = [[Debris - Weaver]],
      blocking         = false,
      damage           = 820,
      footprintX       = 3,
      footprintZ       = 3,
      metal            = 40,
      object           = [[debris3x3b.s3o]],
      reclaimable      = true,
      reclaimTime      = 40,
    },

  },

}

return lowerkeys({ arm_spider = unitDef })
