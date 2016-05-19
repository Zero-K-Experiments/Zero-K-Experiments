unitDef = {
  unitname            = [[bomberassault]],
  name                = [[Eclipse]],
  description         = [[Assault Bomber (Anti-Static)]],
  amphibious          = true,
  --autoheal			  = 25,
  buildCostMetal      = 1000,
  builder             = false,
  buildPic            = [[bomberassault.png]],
  canAttack           = true,
  canFly              = true,
  canGuard            = true,
  canLoopbackAttack   = false,
  canMove             = true,
  canPatrol           = true,
  canSubmerge         = false,
  category            = [[FIXEDWING]],
  collide             = false,
  collisionVolumeOffsets = [[-2 0 0]],
  collisionVolumeScales  = [[32 12 40]],
  collisionVolumeType    = [[box]],
  corpse              = [[DEAD]],
  crashDrag           = 0.02,
  cruiseAlt           = 250,

  customParams        = {
    helptext       = [[The Eclipse's imposing hull can weather significant punishment while steadily blazing to deliver its massive payload of devastation, but the unguided bomb has problems with hitting mobile targets, and big size makes it an easy target.]],
    --description_bp = [[Bombardeiro de implos?o]],
    --description_de = [[Implosion Bomber]],
    --description_fr = [[Bombardier r Implosion]],
    description_pl = [[Bombowiec szturmowy (na budynki)]],
    --helptext_bp    = [[]],
    --helptext_de    = [[Licho ist ein mÃ¤chtiger Bomber, der alles in Schutt und Asche legt. Seine Schlagkraft und Ausdauer ist riesig, doch muss er nach jedem Angriff Munition nachladen, was ihn eher fÃ¼r Angriffe auf einzelne Ziele prÃ¤destiniert.]],
    --helptext_fr    = [[Le Licho est tout simplement la mort venue du ciel. Ce bombardier lourdement blindÃ© et relativement lent transporte une tete nuclÃ©aire tactique r implosion. Capable de faire des ravages dans les lignes ennemies, ou de dÃ©truire des structures lourdement blindÃ©es. Tout simplement mortel utilisÃ© en petites escadres.]],
    helptext_pl    = [[Mimo ze przez swoj rozmiar latwo go trafic, Eclipse jest w stanie wytrzymac ciezki ostrzal, by spuscic na swoj cel potezna bombe, ktora jednak spada na tyle wolno, ze nie mozna liczyc na trafienie w ruchome jednostki.]],
    modelradius    = [[10]],
  },

  explodeAs           = [[GUNSHIPEX]],
  floater             = true,
  footprintX          = 3,
  footprintZ          = 3,
  iconType            = [[bombernuke]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  maneuverleashlength = [[1280]],
  maxAcc              = 0.5,
  maxDamage           = 4000,
  maxElevator         = 0.01,
  maxRudder           = 0.003,
  maxFuel             = 1000000,
  maxVelocity         = 6,
  minCloakDistance    = 75,
  mygravity           = 1,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP SUB]],
  objectName          = [[zeppelin.dae]],
  --refuelTime		  = 16,
  script			  = [[bomberassault.lua]],
  selfDestructAs      = [[GUNSHIPEX]],
  side                = [[ARM]],
  sightDistance       = 660,
  turnRadius          = 90,
  smoothAnim          = true,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[ZEPPELIN_BOMB]],
	  badTargetCategory	 = [[GUNSHIP FIXEDWING]],
      onlyTargetCategory = [[SWIM LAND SINK SUB TURRET FLOAT SHIP HOVER GUNSHIP FIXEDWING]],
    },

  },


  weaponDefs          = {
    ZEPPELIN_BOMB = {
      name                    = [[Heavy Superbomb]],
      areaOfEffect            = 100,
      avoidFeature            = false,
      avoidFriendly           = false,
      collideFeature          = false,
      collideFriendly         = false,
      craterBoost             = 10,
      craterMult              = 1,
	  
      damage                  = {
        default = 2500,
        planes  = 2500,
        subs    = 2500,
      },

      edgeEffectiveness       = 0.7,
	  explosionGenerator      = [[custom:slam]],
      impulseBoost            = 0,
      impulseFactor           = 0.1,
      interceptedByShieldType = 1,
      model                   = [[zeppelin_bomb.dae]],
      myGravity               = 0.15,
      noSelfDamage            = true,
      range                   = 500,
      reloadtime              = 10,
      soundHit                = [[weapon/missile/liche_hit]],
      soundStart              = [[weapon/missile/liche_fire]],
      weaponType              = [[AircraftBomb]],
    },


  },


  featureDefs         = {
    DEAD  = {
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      object           = [[zeppelin_dead.dae]],
    },

    HEAP  = {
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[4]],
      object           = [[debris3x3b.s3o]],
    },

  },

}

return lowerkeys({ bomberassault = unitDef })
