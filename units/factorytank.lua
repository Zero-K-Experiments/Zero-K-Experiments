unitDef = {
  unitname                      = [[factorytank]],
  name                          = [[Heavy Tank Factory]],
  description                   = [[Produces Heavy and Specialized Vehicles, Builds at 10 m/s]],
  acceleration                  = 0,
  brakeRate                     = 0,
  buildCostMetal                = 600,
  builder                       = true,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 10,
  buildingGroundDecalSizeY      = 8,
  buildingGroundDecalType       = [[factorytank_aoplane.dds]],

  buildoptions                  = {
    [[coracv]],
    [[logkoda]],
	[[panther]],
    [[tawf114]],
	[[correap]],
    [[corgol]],
	[[cormart]],
	[[trem]],
    [[corsent]],
  },

  buildPic                      = [[factorytank.png]],
  canMove                       = true,
  canPatrol                     = true,
  canstop                       = [[1]],
  category                      = [[SINK UNARMED]],
  corpse                        = [[DEAD]],

  customParams                  = {
    description_de = [[Produziert schwere und speziallisierte Fahrzeuge, Baut mit 10 M/s]],
    description_pl = [[Buduje czolgi, moc 10 m/s]],
    helptext       = [[The Heavy Tank Factory is the ultimate in brute force methods - nothing gets the job done quite like a sustained artillery barrage followed by a decisive push with the largest tanks in the field. Key units: Pillager, Reaper, Banisher, Goliath]],
	helptext_de    = [[Die Heavy Tank Factory ist das Ultimum für brachiale Gewalt. Nicht erledigt den Auftrag zu gut, wie ein anhaltendes Artilleriefeuer, gefolgt von einem entscheidenen Vorstoß mit den größten Panzern auf dem Feld. Wichtigste Einheiten: Pillager, Reaper, Banisher, Goliath]],
	helptext_pl    = [[Czolgi reprezentuja najprostsze podejscie do problemow - brutalna sile. Fabryka czolgow oferuje najciezsze sposrod polowych jednostek.]],
    sortName = [[6]],
  },

  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDINGEX]],
  footprintX                    = 10,
  footprintZ                    = 8,
  iconType                      = [[factank]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  maxDamage                     = 4000,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[coravp2.s3o]],
  script                        = [[factorytank.lua]],
  selfDestructAs                = [[LARGE_BUILDINGEX]],
  side                          = [[CORE]],
  sightDistance                 = 273,
  smoothAnim                    = true,
  sortbias                      = [[0]],
  TEDClass                      = [[PLANT]],
  turnRate                      = 0,
  useBuildingGroundDecal        = true,
  workerTime                    = 10,
  yardMap                       = [[oooooooooo oooooooooo oooooooooo oooccccooo oooccccooo yooccccooy yooccccooy yyoccccoyy ]],

  featureDefs                   = {

    DEAD = {
      featureDead      = [[HEAP]],
      footprintX       = 6,
      footprintZ       = 6,
      height           = [[20]],
      object           = [[CORAVP_DEAD.s3o]],
    },


    HEAP = {
      footprintX       = 6,
      footprintZ       = 6,
      height           = [[4]],
      object           = [[debris4x4a.s3o]],
    },

  },

}

return lowerkeys({ factorytank = unitDef })
