unitDef = {
  unitname               = [[factoryship]],
  name                   = [[Shipyard]],
  description            = [[Produces Ships, Builds at 10 m/s]],
  acceleration           = 0,
  brakeRate              = 0,
  buildCostMetal         = 600,
  builder                = true,

  buildoptions           = {
    [[shipcon]],
    [[shipscout]],
    [[subraider]],
    [[shipraider]],
    [[shiptorp]],
    [[shipskirm]],
    [[shiparty]],
    [[subarty]],
    [[shipaa]],
    [[armtboat]],
  },

  buildPic               = [[FACTORYSHIP.png]],
  canAttack              = true,
  canMove                = true,
  canPatrol              = true,
  canStop                = true,
  category               = [[UNARMED FLOAT]],
  collisionVolumeOffsets = [[-15 -20 -15]],
  collisionVolumeScales  = [[120 120 160]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
    description_de = [[Produziert Schiffe, Baut mit 10 M/s]],
    description_pl = [[Stocznia, moc 10 m/s]],
	helptext       = [[Shipyard is where both ships and submarines are built. Other waterborne units such as hovercraft and amphibious bots have separate factories.]],
	helptext_de    = [[Im Shipyard kannst du Schiffe jeder Art und f�r jeden Zweck bauen.]],
	helptext_pl    = [[Stocznia produkuje statki i lodzie podwodne; poduszkowce i boty amfibijne maja osobne fabryki.]],
    sortName       = [[7]],
	unstick_help   = 1,
  },

  energyUse              = 0,
  explodeAs              = [[LARGE_BUILDINGEX]],
  footprintX             = 9,
  footprintZ             = 14,
  iconType               = [[facship]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maxDamage              = 6000,
  maxSlope               = 15,
  maxVelocity            = 0,
  minCloakDistance       = 150,
  minWaterDepth          = 15,
  objectName             = [[seafac.s3o]],
  script				 = [[factoryship.lua]],
  selfDestructAs         = [[LARGE_BUILDINGEX]],
  side                   = [[CORE]],
  sightDistance          = 273,
  TEDClass               = [[PLANT]],
  turnRate               = 0,
  waterline              = 0,
  workerTime             = 10,
  yardMap                = [[yyyyyyyyy yoooooooy yoooooooy yooccccoy yooccccoy yooccccoy yooccccoy yooccccoy yooccccoy yooccccoy yooccccoy yooccccoy yocccccoy yocccccoy]],

  featureDefs            = {

    DEAD  = {
      featureDead      = [[HEAP]],
      footprintX       = 9,
      footprintZ       = 14,
      height           = [[4]],
      object           = [[seafac_dead.s3o]],
    },



    HEAP  = {
      footprintX       = 8,
      footprintZ       = 8,
      object           = [[debris4x4c.s3o]],
    },

  },

}

return lowerkeys({ factoryship = unitDef })
