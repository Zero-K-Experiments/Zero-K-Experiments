unitDef = {
  unitname            = [[amphcon]],
  name                = [[Conch]],
  description         = [[Amphibious Construction Bot, Builds at 7.5 m/s]],
  acceleration        = 0.4,
  activateWhenBuilt   = true,
  brakeRate           = 0.25,
  buildCostMetal      = 180,
  buildDistance       = 120,
  builder             = true,

  buildoptions        = {
  },

  buildPic            = [[amphcon.png]],
  canAssist           = true,
  canBuild            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[LAND UNARMED]],
  corpse              = [[DEAD]],

  customParams        = {
    amph_regen = 10,
    amph_submerged_at = 40,
    description_pl = [[Amfibijny konstruktor, moc 7.5 m/s]],
    helptext       = [[The Conch is a sturdy constructor that can build or reclaim in the deep sea as well as it does on land.]],
    helptext_pl    = [[Conch to wytrzymaly konstruktor, ktory moze wykonywac swoje obowiazki zarowno na ladzie, jak i gleboko pod woda.]],
  },

  explodeAs           = [[BIG_UNITEX]],
  footprintX          = 2,
  footprintZ          = 2,
  iconType            = [[builder]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  leaveTracks         = true,
  maxDamage           = 850,
  maxSlope            = 36,
  maxVelocity         = 1.7,
  minCloakDistance    = 75,
  movementClass       = [[AKBOT2]],
  objectName          = [[amphcon.s3o]],
  selfDestructAs      = [[BIG_UNITEX]],
  script              = [[amphcon.lua]],
  sightDistance       = 375,
--  sonarDistance       = 400,
  trackOffset         = 0,
  trackStrength       = 8,
  trackStretch        = 1,
  trackType           = [[ChickenTrackPointy]],
  trackWidth          = 22,
  turnRate            = 1000,
  upright             = false,
  workerTime          = 7.5,

  featureDefs         = {

    DEAD  = {
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[amphcon_dead.s3o]],
    },

    HEAP  = {
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2a.s3o]],
    },

  },

}

return lowerkeys({ amphcon = unitDef })
