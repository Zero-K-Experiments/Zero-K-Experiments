unitDef = {
  unitname               = [[armrectr]],
  name                   = [[Conjurer]],
  description            = [[Cloaked Construction Bot, Builds at 5 m/s]],
  acceleration           = 0.5,
  activateWhenBuilt      = true,
  brakeRate              = 0.5,
  buildCostMetal         = 140,
  buildDistance          = 90,
  builder                = true,

  buildoptions           = {
  },

  buildPic               = [[ARMRECTR.png]],
  canAssist              = true,
  canBuild               = true,
  canMove                = true,
  canPatrol              = true,
  canreclamate           = [[1]],
  canstop                = [[1]],
  category               = [[LAND UNARMED]],
  cloakCost              = 0.1,
  cloakCostMoving        = 0.5,
  collisionVolumeOffsets = [[0 4 0]],
  collisionVolumeScales  = [[28 40 28]],
  collisionVolumeType    = [[cylY]],
  corpse                 = [[DEAD]],

  customParams           = {
    description_bp = [[Robô de contru??o e captura, constrói a 5 m/s]],
    description_de = [[Getarnter Konstruktionsroboter, Baut mit 5 M/s]],
    description_es = [[Robot de Construccion/Captura, Construye a 5 m/s]],
    description_fi = [[Rakentaja/kaappaajarobotti, rakentaa 5m/s  nopeudella]],
    description_fr = [[Robot de Construction/Capture, Construit ? 5 m/s]],
    description_it = [[Robot da Costruzzione/Cattura, Costruisce a 5 m/s]],
    description_pl = [[Bot konstruktor z maskowaniem, moc 5 m/s]],
    helptext       = [[The Conjurer packs a short-ranged jammer and a cloaking device for stealthy expansion and base maintenance.]],
    helptext_bp    = [[]],
    helptext_fi    = [[Pystyy rakentamisen lis?ksi kaappaamaan yksik?t koodaamalla ne nurin.]],
    helptext_fr    = [[]],
    helptext_de    = [[Der Conjurer besitzt einen Störsender mit kurzer Reichweite und ein Tarngerät, um geheim und unerkannt expandieren zu können.]],
    helptext_pl    = [[Conjurer moze sie maskowac i ma zaklocacz radaru bardzo krotkiego zasiegu, co pozwala mu pracowac w ukryciu.]],
	modelradius    = [[14]],
  },

  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 2,
  footprintZ             = 2,
  iconType               = [[builder]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  initCloaked            = true,
  leaveTracks            = true,
  maxDamage              = 450,
  maxSlope               = 36,
  maxVelocity            = 1.9,
  maxWaterDepth          = 22,
  minCloakDistance       = 75,
  movementClass          = [[KBOT2]],
  objectName             = [[spherecon.s3o]],
  radarDistanceJam       = 256,
  selfDestructAs         = [[BIG_UNITEX]],
  showNanoSpray          = true,
  sightDistance          = 375,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ComTrack]],
  trackWidth             = 18,
  turnRate               = 2200,
  upright                = true,
  workerTime             = 5,

  featureDefs            = {

    DEAD  = {
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[spherejeth_dead.s3o]],
    },

    HEAP  = {
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
    },

  },

}

return lowerkeys({ armrectr = unitDef })
