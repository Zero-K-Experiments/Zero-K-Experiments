unitDef = {
  unitname                      = [[armmstor]],
  name                          = [[Storage]],
  description                   = [[Stores Metal and Energy (1000)]],
  activateWhenBuilt             = true,
  buildCostMetal                = 100,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 5,
  buildingGroundDecalSizeY      = 5,
  buildingGroundDecalType       = [[armmstor_aoplane.dds]],
  buildPic                      = [[ARMMSTOR.png]],
  category                      = [[SINK UNARMED]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[60 60 60]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[ellipsoid]], 
  corpse                        = [[DEAD]],
  energyStorage                 = 1000,
  explodeAs                     = [[SMALL_BUILDINGEX]],
  footprintX                    = 3,
  footprintZ                    = 3,
  iconType                      = [[storage]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  maxDamage                     = 700,
  maxSlope                      = 18,
  metalStorage                  = 1000,
  minCloakDistance              = 150,
  objectName                    = [[pylon.s3o]],
  script                        = "armmstor.lua",
  selfDestructAs                = [[SMALL_BUILDINGEX]],
  sightDistance                 = 273,
  useBuildingGroundDecal        = true,
  yardMap                       = [[ooo ooo ooo]],

  customParams                  = {
    description_de = [[Lagert Energie und Metall (1000)]],
    description_pl = [[Przechowuje surowce (1000)]],
    helptext       = [[Storages act as a buffer when one expects a big influx of metal, such as reclaiming a vast wreckage field. However, longer periods of increased metal income are better dealt with by acquiring more buildpower.]],
    helptext_de    = [[Dieser Energie- und Metallspeicher erweitert deine Lagermöglichkeiten um 1000.]],
    helptext_pl    = [[Magazyn pozwala na przechowywanie surowcow na wypadek, gdy nie masz wystarczajaco duzo budowniczych, by je wykorzystac. Lepiej jest jednak zbudowac wiecej budowniczych, a magazynu uzywac bardziej jako bufora na wypadek duzych, niespodziewanych zyskow, na przyklad zbierania duzego zlomowiska.]],
    modelradius    = [[30]],
	removewait     = 1,
  },

  featureDefs                   = {

    DEAD  = {
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[storage_d.dae]],
    },

    HEAP  = {
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris4x4c.s3o]],
    },

  },

}

return lowerkeys({ armmstor = unitDef })
