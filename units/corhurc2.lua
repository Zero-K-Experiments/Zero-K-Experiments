unitDef = {
  unitname            = [[corhurc2]],
  name                = [[Phoenix]],
  description         = [[Saturation Napalm Bomber]],
  amphibious          = true,
  buildCostMetal      = 360,
  builder             = false,
  buildPic            = [[corhurc2.png]],
  canAttack           = true,
  canFly              = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  canstop             = true,
  canSubmerge         = false,
  category            = [[FIXEDWING]],
  collide             = false,
  collisionVolumeOffsets = [[0 0 -5]],
  collisionVolumeScales  = [[55 15 70]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[box]],
  corpse              = [[DEAD]],
  cruiseAlt           = 180,

  customParams        = {
    description_bp = [[Bombardeiro de Napalm]],
    description_fr = [[Bombardier Napalm]],
	description_de = [[Napalmbomber]],
	description_pl = [[Bombowiec z napalmem]],
    helptext       = [[The Phoenix's napalm bombs decimate large clumps of units and light structures.]],
    helptext_bp    = [[Este avi?o lança várias bombas de napalm sobre o alvo, incendiando uma grande área. Foi projetado para atacar grandes números de pequenas unidades, móveis ou n?o, mas em números suficientes pode destruir bases inteiras.]],
    helptext_fr    = [[Une escardre de Phoenix est une des pires chose qui puisse apparaître sur les radars ennemis. Rapides et efficaces, le Firestorm tapisse le sol de bombes au napalm faisant des dégâts r l'impact et sur la durée.]],
	helptext_de    = [[Die Napalmbomben des Firestorms dezimieren große Haufen an Einheiten und leichten Bauwerken.]],
	helptext_pl    = [[Bomby z napalmem zrzucane przez Phoenixa podpalaja trafione cele na duzym obszarze, co jest bardzo efektywne przeciwko grupom lzejszych jednostek i budynkow.]],
	modelradius    = [[10]],
  },

  explodeAs           = [[GUNSHIPEX]],
  floater             = true,
  footprintX          = 4,
  footprintZ          = 4,
  iconType            = [[bomberraider]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  maxAcc              = 0.5,
  maxDamage           = 650,
  maxAileron          = 0.018,
  maxElevator         = 0.02,
  maxRudder           = 0.008,
  maxFuel             = 1000000,
  maxVelocity         = 8,
  minCloakDistance    = 75,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE SUB]],
  objectName          = [[firestorm.s3o]],
  script			  = [[corhurc2.lua]],
  selfDestructAs      = [[GUNSHIPEX]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:BEAMWEAPON_MUZZLE_RED]],
      [[custom:light_red]],
      [[custom:light_green]],
    },

  },

  side                = [[CORE]],
  sightDistance       = 660,
  turnRadius          = 120,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[NAPALM]],
      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
    },

  },


  weaponDefs          = {

    NAPALM = {
      name                    = [[Napalm Bombs]],
      areaOfEffect            = 216,
      avoidFeature            = false,
      avoidFriendly           = false,
      burst                   = 15,
      burstrate               = 0.09,
      collideFeature          = false,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,

	  customParams        	  = {
	    setunitsonfire = "1",
		burntime = 300,
	  },
	  
      damage                  = {
        default = 25,
        planes  = 25,
        subs    = 2.5,
      },

      edgeEffectiveness       = 0.7,
      explosionGenerator      = [[custom:napalm_phoenix]],
      fireStarter             = 250,
      impulseBoost            = 0,
      impulseFactor           = 0.1,
      interceptedByShieldType = 1,
      model                   = [[wep_b_fabby.s3o]],
      myGravity               = 0.7,
      noSelfDamage            = true,
      reloadtime              = 10,
      soundHit                = [[weapon/burn_mixed]],
      soundStart              = [[weapon/bomb_drop_short]],
      sprayangle              = 64000,
      weaponType              = [[AircraftBomb]],
    },

  },


  featureDefs         = {

    DEAD  = {
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      object           = [[firestorm_dead.s3o]],
    },

    HEAP  = {
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[4]],
      object           = [[debris3x3c.s3o]],
    },

  },

}

return lowerkeys({ corhurc2 = unitDef })
