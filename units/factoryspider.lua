unitDef = {
  unitname                      = [[factoryspider]],
  name                          = [[Spider Factory]],
  description                   = [[Produces Spiders, Builds at 10 m/s]],
  acceleration                  = 0,
  brakeRate                     = 0,
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
  canMove                       = true,
  canPatrol                     = true,
  canstop                       = [[1]],
  category                      = [[SINK UNARMED]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[100 100 100]],
  collisionVolumeType	        = [[ellipsoid]],
  corpse                        = [[DEAD]],

  customParams                  = {
    description_fi = [[Taktinen robottitehdas. Rakentaa erikoistuneita robotteja 10m/s nopeudella]],
	description_fr = [[Produit des unitées arachnides, construit à 10 M/s]],
	description_de = [[Produziert Spinnen, Baut mit 10 M/s]],
	description_pl = [[Buduje pajaki, moc 10 m/s]],
    helptext       = [[Optimized for rough terrain, the Spider Factory relies primarily on range and maneuverability rather than brute force. Key units: Flea, Recluse, Hermit, Crabe]],
	helptext_fr    = [[Optimisée pour les terrains accidentés, la fabrique à araignées produit des unités exotiques centrées principalement sur la portée et la manuvrabilité au détriment de la force brute, à quelques exceptions près.]],
    helptext_fi    = [[Tuottaa pitk?lti erikoistuneita tai jalkav?kirobotteja raskaampia yksik?it?. Esimerkiksi EMP, n?kym?tt?myys ja maastokelpoisuus ovat joidenkin t?m?n tehtaan tuotoksien erikoisuuksia.]],
	helptext_de    = [[Ideal für unwegsames Gelände, liegt der Fokus der Spider Factory eher auf Einheiten mit großer Reichweite und Wendigkeit und weniger auf roher Gewalt. Wichtigste Einheiten: Flea, Recluse, Hermit, Crabe]],
	helptext_pl    = [[Pajaki to jednostki przystosowane do przemierzania nierownego terenu, skarp i klifow. W walce polegaja bardziej na mobilnosci i zasiegu, niz bezposredniej sile.]],
    sortName       = [[5]],
	modelradius    = [[50]],
  },

  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDINGEX]],
  footprintX                    = 6,
  footprintZ                    = 6,
  iconType                      = [[facspider]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  maxDamage                     = 4000,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[factory3.s3o]],
  selfDestructAs                = [[LARGE_BUILDINGEX]],
  script                        = [[factoryspider.lua]],
  sightDistance                 = 273,
  smoothAnim                    = true,
  TEDClass                      = [[PLANT]],
  turnRate                      = 0,
  useBuildingGroundDecal        = true,
  workerTime                    = 10,
  yardMap                       = [[oooooo oooooo occcco occcco occcco occcco]],

  featureDefs                   = {

    DEAD  = {
      featureDead      = [[HEAP]],
      footprintX       = 5,
      footprintZ       = 6,
      object           = [[factory3_dead.s3o]],
    },

    HEAP  = {
      footprintX       = 5,
      footprintZ       = 5,
      object           = [[debris4x4c.s3o]],
    },

  },

}

return lowerkeys({ factoryspider = unitDef })
