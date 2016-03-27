unitDef = {
  unitname               = [[spherecloaker]],
  name                   = [[Eraser]],
  description            = [[Area Cloaker/Jammer Walker]],
  acceleration           = 0.25,
  activateWhenBuilt      = true,
  brakeRate              = 0.25,
  buildCostMetal         = 600,
  buildPic               = [[spherecloaker.png]],
  canAttack              = false,
  canMove                = true,
  category               = [[LAND UNARMED]],
  corpse                 = [[DEAD]],

  customParams           = {
    description_de = [[Tarn-/Störsenderroboter]],
    description_bp = [[Robô camuflador e gerador de interfer?ncia.]],
    description_fi = [[N?kym?tt?myyskent?n luova tutkanh?iritsij?robotti]],
    description_fr = [[Marcheur Brouille/Camoufleur]],
    description_pl = [[Bot maskujaco-zaklocajacy]],
    helptext       = [[The Eraser has a jamming device to conceal your units' radar returns. It also has a small cloak shield to hide friendly nearby units from enemy sight.]],
    helptext_bp    = [[Geradores de interfer?ncia como estes interferem com as ondas de radar inimigas, impedindo a localizaç?o das unidades protegidas. Alguns s?o capazes de gerar falsos sinais de radar.]],
    helptext_fi    = [[Eraser kykenee piilottamaan muut yksikk?si vastustajaltasi h?iritsem?ll? t?m?n tutkasignaalia ja luomalla pienen n?kym?tt?myyskent?n ymp?rilleen.]],
    helptext_fr    = [[L'Eraser est munis d'un brouilleur d'onde qui permet de cacher vos unités des radars enemis. Il est aussi munis d'un petit bouclier de camouflage qui permet de cacher vos unités du champ de vision enemis]],
    helptext_pl    = [[Eraser wyposazony jest w zaklocacz radaru, ktory ukrywa jednostki przed radarem. Posiada takze pole maskujace, która ukrywa pobliskie przyjazne jednostki przed wzrokiem wroga.]],
    helptext_de    = [[Der Eraser besitzt ein Gerät zum Stören feindlicher Radarwellen. Des Weiteren ist er mit einem kleinen Tarnschild ausgestattet, um nahe, freundliche Einheiten zu tarnen.]],

    morphto = [[armjamt]],
    morphtime = 30,

    area_cloak = 1,
    area_cloak_upkeep = 15,
    area_cloak_radius = 440,
    area_cloak_decloak_distance = 75,
	
	priority_misc = 2, -- High
  },

  energyUse              = 1.5,
  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 2,
  footprintZ             = 2,
  iconType               = [[kbotjammer]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  leaveTracks            = true,
  maxDamage              = 600,
  maxSlope               = 36,
  maxVelocity            = 1.9,
  minCloakDistance       = 180,
  movementClass          = [[AKBOT2]],
  objectName             = [[spherecloaker.s3o]],
  onoffable              = true,
  pushResistant          = 0,
  script                 = [[spherecloaker.lua]],
  radarDistanceJam       = 440,
  selfDestructAs         = [[BIG_UNITEX]],
  sightDistance          = 400,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ComTrack]],
  trackWidth             = 18,
  turnRate               = 2100,

  featureDefs            = {

    DEAD = {
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[eraser_d.dae]],
    },

    HEAP = {
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2a.s3o]],
    },

  },

}

return lowerkeys({ spherecloaker = unitDef })
