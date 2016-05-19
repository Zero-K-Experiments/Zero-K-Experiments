unitDef = {
  unitname                      = [[amgeo]],
  name                          = [[Advanced Geothermal]],
  description                   = [[Produces Energy (100) - HAZARDOUS]],
  activateWhenBuilt             = true,
  buildCostMetal                = 1500,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 9,
  buildingGroundDecalSizeY      = 9,
  buildingGroundDecalType       = [[amgeo_aoplane.dds]],
  buildPic                      = [[AMGEO.png]],
  category                      = [[SINK UNARMED]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[90 70 90]],
  collisionVolumeType           = [[Box]],
  corpse                        = [[DEAD]],

  customParams                  = {
    description_de = [[Erzeugt Energie (100) - RISKANT]],
    description_fr = [[Produit de l'énergie (100) - DANGEREUX]],
    description_pl = [[Produkuje Energie (100) - NIEBEZPIECZNE]],
    helptext       = [[The Moho Geothermal Powerplant produces a massive amount of energy. It requires protection, though, as destroying it results in a devastating explosion.]],
    helptext_de    = [[Das Moho Geothermisches Kraftwerk erzeugt eine große Menge an Energie, doch stellt es auch ein lohnendes Angriffsziel dar.]],
    helptext_fr    = [[La centrale géothermique Moho produit une quantité important d'énergie. Son explosion peut être catastrophique selon son emplacement.]],
    helptext_pl    = [[Elektrownia Moho-geotermiczna wytwarza ogromne ilosci energii, jednak wymaga ochrony, jako ze jej zniszczenie wiaze sie z katastroficznym wybuchem.]],
    pylonrange     = 150,
	removewait     = 1,
  },

  energyMake                    = 100,
  energyUse                     = 0,
  energyStorage                 = 500,    
  explodeAs                     = [[NUCLEAR_MISSILE]],
  footprintX                    = 5,
  footprintZ                    = 5,
  iconType                      = [[energymohogeo]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  maxDamage                     = 3250,
  maxSlope                      = 255,
  metalStorage                  = 500,  
  minCloakDistance              = 150,
  objectName                    = [[amgeo.dae]],
  script                        = [[amgeo.lua]],
  selfDestructAs                = [[NUCLEAR_MISSILE]],
  sightDistance                 = 273,
  useBuildingGroundDecal        = true,
  yardMap                       = [[ooooo ogggo ogggo ogggo ooooo]],

  featureDefs                   = {

    DEAD  = {
      featureDead      = [[HEAP]],
      footprintX       = 5,
      footprintZ       = 5,
      object           = [[amgeo_dead.dae]],
    },

    HEAP  = {
      footprintX       = 5,
      footprintZ       = 5,
      object           = [[debris4x4a.s3o]],
    },

  },

}

return lowerkeys({ amgeo = unitDef })
