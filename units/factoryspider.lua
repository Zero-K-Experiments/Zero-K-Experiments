unitDef = {
  unitname                      = [[factoryspider]],
  name                          = [[Spider Factory]],
  description                   = [[Produces Spiders, Builds at 10 m/s]],
  acceleration                  = 0,
  brakeRate                     = 0,
  buildCostEnergy               = 600,
  buildCostMetal                = 600,
  builder                       = true,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 7,
  buildingGroundDecalSizeY      = 7,
  buildingGroundDecalType       = [[factoryspider_aoplane.dds]],

  buildoptions                  = {
    [[arm_spider]],
    [[armflea]],
	[[spiderassault]],
    [[arm_venom]],
	[[spiderriot]],
    [[armsptk]],
    [[armcrabe]],
    [[spideraa]],
    [[armspy]],
  },

  buildPic                      = [[factoryspider.png]],
  buildTime                     = 600,
  canMove                       = true,
  canPatrol                     = true,
  canstop                       = [[1]],
  category                      = [[SINK UNARMED]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[104 50 36]],
  collisionVolumeType           = [[box]],
  selectionVolumeOffsets        = [[0 0 30]],
  selectionVolumeScales         = [[104 50 96]],
  selectionVolumeType           = [[box]],
  corpse                        = [[DEAD]],

  customParams                  = {
	description_fr = [[Produit des unitées arachnides, construit à 10 M/s]],
	description_de = [[Produziert Spinnen, Baut mit 10 M/s]],
    helptext       = [[Optimized for rough terrain, the Spider Factory relies primarily on range and maneuverability rather than brute force. Key units: Flea, Recluse, Hermit, Crabe]],
	helptext_fr    = [[Optimisée pour les terrains accidentés, la fabrique à araignées produit des unités exotiques centrées principalement sur la portée et la manuvrabilité au détriment de la force brute, à quelques exceptions près.]],
	helptext_de    = [[Ideal für unwegsames Gelände, liegt der Fokus der Spider Factory eher auf Einheiten mit großer Reichweite und Wendigkeit und weniger auf roher Gewalt. Wichtigste Einheiten: Flea, Recluse, Hermit, Crabe]],
    aimposoffset   = [[0 0 -26]],
    midposoffset   = [[0 0 -26]],
    sortName       = [[5]],
	modelradius    = [[38]],
	solid_factory = [[3]],
  },

  energyMake                    = 0.3,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDINGEX]],
  footprintX                    = 7,
  footprintZ                    = 7,
  iconType                      = [[facspider]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  maxDamage                     = 4000,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  metalMake                     = 0.3,
  minCloakDistance              = 150,
  moveState        				= 1,
  noAutoFire                    = false,
  objectName                    = [[factory3.s3o]],
  seismicSignature              = 4,
  selfDestructAs                = [[LARGE_BUILDINGEX]],
  showNanoSpray                 = false,
  script                        = [[factoryspider.lua]],
  sightDistance                 = 273,
  turnRate                      = 0,
  useBuildingGroundDecal        = true,
  workerTime                    = 10,
  yardMap                       = [[ooooooo ooooooo ooooooo ccccccc ccccccc ccccccc ccccccc]],

  featureDefs                   = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 5,
      footprintZ       = 6,
      object           = [[factory3_dead.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 5,
      footprintZ       = 5,
      object           = [[debris4x4c.s3o]],
    },

  },

}

return lowerkeys({ factoryspider = unitDef })
