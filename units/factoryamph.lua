unitDef = {
  unitname         = [[factoryamph]],
  name             = [[Amphibious Bot Plant]],
  description      = [[Produces Amphibious Bots, Builds at 10 m/s]],
  buildCostMetal   = 600,
  builder          = true,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 8,
  buildingGroundDecalSizeY      = 7,
  buildingGroundDecalType       = [[factoryjump_aoplane.dds]],  

  buildoptions     = {
    [[amphcon]],
    [[amphraider3]],
    [[amphraider2]],
    [[amphfloater]],
    [[amphriot]],	
    [[amphassault]],
    [[amphaa]],
	[[amphartillery]],
    [[amphtele]],
  },

  buildPic         = [[factoryamph.png]],
  canAttack        = true,
  canMove          = true,
  canPatrol        = true,
  canstop          = true,
  category         = [[UNARMED SINK]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[90 60 40]],
  collisionVolumeType    = [[box]],
  corpse           = [[DEAD]],

  customParams     = {
    description_pl = [[Buduje amfibijne boty, moc 10 m/s]],
    helptext       = [[The Amphibious Operations Plant builds the slow but sturdy amphibious bots, providing an alternative approach to land/sea warfare. Units from this factory typically regenerate while submerged.]],
    helptext_pl    = [[Ta fabryka produkuje amfibijne boty, ktore skutecznie prowadza walke zarowno na ladzie jak i w wodzie. Wiele z tutejszych jednostek regeneruje sie przy zanurzeniu w wodzie.]],
    aimposoffset   = [[0 0 -20]],
    midposoffset   = [[0 0 -20]],
    sortName = [[8]],
  },

  energyUse        = 0,
  explodeAs        = [[LARGE_BUILDINGEX]],
  footprintX       = 7,
  footprintZ       = 7,
  iconType         = [[facamph]],
  idleAutoHeal     = 5,
  idleTime         = 1800,
  maxDamage        = 4000,
  maxSlope         = 15,
  minCloakDistance = 150,
  noAutoFire       = false,
  objectName       = [[factory2.s3o]],
  script           = "factoryamph.lua",
  selfDestructAs   = [[LARGE_BUILDINGEX]],
  sightDistance    = 273,
  workerTime       = 10,
  yardMap          = [[ooooooo ooooooo ooooooo occccco occccco occccco ccccccc]],

  featureDefs      = {

    DEAD  = {
      featureDead      = [[HEAP]],
      footprintX       = 7,
      footprintZ       = 7,
      object           = [[FACTORY2_DEAD.s3o]],
    },

    HEAP  = {
      footprintX       = 7,
      footprintZ       = 7,
      object           = [[debris4x4c.s3o]],
    },

  },

}

return lowerkeys({ factoryamph = unitDef })
