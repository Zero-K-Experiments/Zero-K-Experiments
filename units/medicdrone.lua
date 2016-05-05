unitDef = {
  unitname            = [[medicdrone]],
  name                = [[Medic]],
  description         = [[Care Drone]],
  acceleration        = 0.3,
  airHoverFactor      = 4,
  amphibious          = true,
  brakeRate           = 0.3,
  buildCostMetal      = 50,
  buildDistance       = 180,  
  builder             = true,
  buildPic            = [[attackdrone.png]],
  buildRange3D        = false,
  canAttack           = false,
  canFly              = true,
  canGuard            = true,
  canMove             = true,
  canAssist           = false,
  --canBeAssisted       = false,
  canPatrol           = true,
  canRepair           = true,
  canReclaim          = false,
  canSubmerge         = false,
  category            = [[GUNSHIP UNARMED]],
  collide             = false,
  cruiseAlt           = 100,
  explodeAs           = [[TINY_BUILDINGEX]],
  floater             = true,
  footprintX          = 2,
  footprintZ          = 2,
  hoverAttack         = true,
  iconType            = [[builderair]],
  maxDamage           = 180,
  maxVelocity         = 7,
  minCloakDistance    = 75,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK TURRET]],
  objectName          = [[attackdrone.s3o]],
  reclaimable         = false,
  refuelTime          = 10,
  script              = [[medicdrone.lua]],
  selfDestructAs      = [[TINY_BUILDINGEX]],
  
  customParams        = {
	description_de  = [[]],
	description_fr  = [[]],
	description_pl  = [[]],
	helptext        = [[]],
	helptext_de	    = [[]],
	helptext_fr	    = [[]],
	helptext_pl     = [[]],

	is_drone = 1,
  },
  
  
  sfxtypes            = {

    explosiongenerators = {
    },

  },

  side                = [[ARM]],
  sightDistance       = 500,
  turnRate            = 792,
  upright             = true,
  workertime          = 5,
}

return lowerkeys({ medicdrone = unitDef })
