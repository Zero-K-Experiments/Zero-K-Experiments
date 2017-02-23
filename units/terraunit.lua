unitDef = {
  unitname               = [[terraunit]],
  name                   = [[Terraform]],
  description            = [[Spent: 0]],
  acceleration           = 0,
  brakeRate              = 0,
  buildCostEnergy        = 1000000,
  buildCostMetal         = 1000000,
  builder                = false,
  buildPic               = [[levelterra.png]],
  buildTime              = 1000000,
  canAttack              = false,
  capturable             = false,
  category               = [[TERRAFORM STUPIDTARGET]],
  collisionVolumeOffsets = [[0 -3000 0]],
  collisionVolumeScales  = [[32 32 32]],
  collisionVolumeType    = [[box]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[32 16 32]],
  selectionVolumeType    = [[box]],

  customParams           = {
    dontcount      = [[1]],
    mobilebuilding = [[1]],
	cannotcloak    = [[1]],
  },

  footprintX             = 2,
  footprintZ             = 2,
  idleAutoHeal           = 0,
  idleTime               = 1800,
  isFeature              = false,
  kamikaze               = true,
  kamikazeDistance       = 0,
  kamikazeUseLOS         = true,
  levelGround            = false,
  maxDamage              = 1000000,
  maxSlope               = 255,
  maxVelocity            = 0,
  minCloakDistance       = 0,
  objectName             = [[debris1x1b.s3o]],
  reclaimable            = false,
  script                 = [[nullscript.lua]],
  seismicSignature       = 4,
  selfDestructCountdown  = 1,
  sightDistance          = 0,
  stealth                = true,
  turnRate               = 0,
  upright                = false,
  workerTime             = 0,
  yardMap                = [[yyyy]],
}

return lowerkeys({ terraunit = unitDef })
