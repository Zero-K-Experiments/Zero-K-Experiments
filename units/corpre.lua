unitDef = {
  unitname                      = [[corpre]],
  name                          = [[Scorcher]],
  description                   = [[Anti-Swarm Heat Ray (weaker at range)]],
  buildCostMetal                = 220,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 5,
  buildingGroundDecalSizeY      = 5,
  buildingGroundDecalType       = [[corpre_aoplane.dds]],
  buildPic                      = [[corpre.png]],
  canAttack                     = true,
  canstop                       = [[1]],
  category                      = [[FLOAT]],
  collisionVolumeTest           = 1,
  corpse                        = [[DEAD]],

  customParams                  = {
    description_fr = [[Rayon ? Chaleur Anti-Nu?e]],
	description_de = [[Anti-Schwarm Heat Ray]],
	description_pl = [[Wiezyczka wsparcia]],
    helptext       = [[The Scorcher is armed with the Heat Ray. It is incredibly powerful close up, but unfortunately the beam gradually dissipates as it travels and loses most of its lethality at long range.]],
    helptext_fr    = [[Le Scorcheur est une tourelle ?quip?e d'un rayon ? chaleur dense. Une pr?cision instantan?e pour des d?g?ts croissant avec la proximit?, il est la d?fense absolue contre les nu?es de petits (et moins petit) ennemis.]],
	helptext_de    = [[Der Scorcher ist mit einem Heat Ray ausgerüstet, welcher auf kurze Distanz extremst wirksam ist, aber auf längere Distanz von seiner Kraft einbüßt.]],
	helptext_pl    = [[Scorcher jest uzbrojony w promien cieplny, ktory jest niesamowicie silny z bliska, lecz traci moc w miare oddalania sie od wiezyczki.]],
  },

  defaultmissiontype            = [[GUARD_NOMOVE]],
  explodeAs                     = [[MEDIUM_BUILDINGEX]],
  floater                       = true,
  footprintX                    = 3,
  footprintZ                    = 3,
  healtime                      = [[-1]],
  iconType                      = [[defenseriot]],
  levelGround                   = false,
  maxDamage                     = 1500,
  maxSlope                      = 18,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  noChaseCategory               = [[FIXEDWING LAND SHIP SATELLITE SWIM GUNSHIP SUB HOVER]],
  objectName                    = [[corpre]],
  selfDestructAs                = [[MEDIUM_BUILDINGEX]],
  shootme                       = [[1]],
  side                          = [[CORE]],
  sightDistance                 = 506,
  TEDClass                      = [[FORT]],
  useBuildingGroundDecal        = true,
  workerTime                    = 0,
  yardMap                       = [[ooooooooo]],

  weapons                       = {

    {
      def                = [[HEATRAY]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs                    = {

    HEATRAY = {
      name                    = [[Heat Ray]],
      accuracy                = 512,
      areaOfEffect            = 20,
      cegTag                  = [[HEATRAY_CEG]],
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 75,
        planes  = 75,
        subs    = 3.75,
      },

      duration                = 0.3,
      dynDamageExp            = 1,
      dynDamageInverted       = false,
      explosionGenerator      = [[custom:HEATRAY_HIT]],
      fallOffRate             = 0.9,
      fireStarter             = 90,
      heightMod               = 1,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      lodDistance             = 10000,
      noSelfDamage            = true,
      proximityPriority       = 4,
      range                   = 460,
      reloadtime              = 0.1,
      rgbColor                = [[1 0.1 0]],
      rgbColor2               = [[1 1 0.25]],
      soundStart              = [[weapon/heatray_fire]],
      thickness               = 3.95284707521047,
      tolerance               = 10000,
      turret                  = true,
      weaponType              = [[LaserCannon]],
      weaponVelocity          = 500,
    },

  },


  featureDefs                   = {

    DEAD  = {
      featureDead      = [[HEAP]],
      footprintX       = 5,
      footprintZ       = 5,
      height           = [[25]],
      object           = [[corpre_dead]],
    },

    HEAP  = {
      footprintX       = 5,
      footprintZ       = 5,
      height           = [[4]],
      object           = [[debris4x4c.s3o]],
    },

  },

}

return lowerkeys({ corpre = unitDef })
