unitDef = {
  unitname               = [[funnelweb]],
  name                   = [[Funnelweb]],
  description            = [[Drone/Shield Support Strider]],
  acceleration           = 0.0552,
  activateWhenBuilt      = true,
  brakeRate              = 0.1375,
  builder                = true,  
  buildCostMetal         = 4500,
  buildDistance          = 440, --slight leeway vs 500
  buildPic               = [[funnelweb.png]],
  buildRange3D           = false,
  canAttack              = false,
  canAssist              = false,
  --canBeAssisted          = false,
  canFight               = true,
  canGuard               = true,  
  canMove                = true,
  canPatrol              = true,
  canRepair              = true,
  canReclaim             = false,    
  category               = [[LAND UNARMED]],
  collisionVolumeScales  = [[84 84 84]],
  collisionVolumeOffsets = [[0 0 -5]],
  collisionVolumeType    = [[CylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
    description_pl = [[]],
    helptext       = [[]],
    helptext_pl    = [[]],
	priority_misc  = 1, -- Medium
  },

  explodeAs              = [[ESTOR_BUILDING]],
  footprintX             = 4,
  footprintZ             = 4,
  iconType               = [[t3special]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  leaveTracks            = true,
  maxDamage              = 11000,
  maxSlope               = 36,
  maxVelocity            = 1.5,
  maxWaterDepth          = 22,
  minCloakDistance       = 150,
  movementClass          = [[TKBOT4]],
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE SUB]],
  objectName             = [[funnelweb.s3o]],
  onoffable              = true,  
  selfDestructAs         = [[ESTOR_BUILDING]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:emg_shells_l]],
      [[custom:flashmuzzle1]],
    },

  },
  script                 = [[funnelweb.lua]],
  sightDistance          = 650,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ChickenTrackPointy]],
  trackWidth             = 85,
  turnRate               = 240,
  workerTime             = 0.001,

  weapons                = {
    {
      def                = [[SHIELD]],
    },
  },


  weaponDefs             = {	
    SHIELD = {
      name                    = [[Energy Shield]],

      damage                  = {
        default = 10,
      },

      exteriorShield          = true,
      shieldAlpha             = 0.2,
      shieldBadColor          = [[1 0.1 0.1]],
      shieldGoodColor         = [[0.1 0.1 1]],
      shieldInterceptType     = 3,
      shieldPower             = 3600,
      shieldPowerRegen        = 50,
      shieldPowerRegenEnergy  = 12,
      shieldRadius            = 500,
      shieldRepulser          = false,
      smartShield             = true,
      texture1                = [[shield3mist]],
      visibleShield           = true,
      visibleShieldHitFrames  = 4,
      visibleShieldRepulse    = true,
      weaponType              = [[Shield]],
    },	
  },


  featureDefs            = {

    DEAD  = {
      featureDead      = [[HEAP]],
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[funnelweb_dead.s3o]],
    },

    HEAP  = {
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[debris4x4a.s3o]],
    },

  },

}

return lowerkeys({ funnelweb = unitDef })
