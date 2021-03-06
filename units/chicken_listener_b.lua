unitDef = {
  unitname            = [[chicken_listener_b]],
  name                = [[Listener (burrowed)]],
  description         = [[Burrowing Mobile Seismic Detector]],
  acceleration        = 0.16,
  activateWhenBuilt   = false,
  brakeRate           = 0.205,
  buildCostEnergy     = 0,
  buildCostMetal      = 0,
  builder             = false,
  buildPic            = [[chicken_listener.png]],
  buildTime           = 300,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[LAND UNARMED]],

  customParams        = {
    description_fr = [[Detecteur sismic mobile enfoui]],
	description_de = [[Grabender, mobiler Körperschallmelder]],
    helptext       = [[The Listener is an evolved form of the Digger. While it has lost all fighting ability, it has gained a unique sense of hearing that allows it to pinpoint the location of enemy ground forces.]],
    helptext_fr    = [[Le Listener est une forme ?volu?e du Digger. Ayant perdu ses capacit?s d'attaque il a en retour gagn? une puissante ouie qui lui permet de d?terminer avec pr?cision l'emplacement des troupes terrestres enemies.]],
	helptext_de    = [[Der Listener ist eine weiterentwickelte Form des Diggers. Zwar hat er seine Kampffertigkeiten verloren, doch im Gegenzug eine einzigartige Sinnesempfindung im Hören erhalten, was es ihm erlaubt gegnerische Bodentruppen haargenau zu lokalisieren.]],
  },

  explodeAs           = [[SMALL_UNITEX]],
  floater             = false,
  footprintX          = 1,
  footprintZ          = 1,
  iconType            = [[chicken]],
  idleAutoHeal        = 20,
  idleTime            = 300,
  maxDamage           = 700,
  maxSlope            = 72,
  maxVelocity         = 0.3,
  maxWaterDepth       = 15,
  minCloakDistance    = 75,
  movementClass       = [[TKBOT1]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK TURRET]],
  objectName          = [[chicken_listener_b.s3o]],
  onoffable           = true,
  power               = 300,
  seismicDistance     = 2350,
  seismicSignature    = 4,
  selfDestructAs      = [[SMALL_UNITEX]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:blood_spray]],
      [[custom:blood_explode]],
      [[custom:dirt]],
    },

  },
  sightDistance       = 0,
  stealth             = true,
  turnRate            = 806,
  upright             = false,
  waterline           = 8,
  workerTime          = 0,
}

return lowerkeys({ chicken_listener_b = unitDef })
