unitDef = {
  unitname            = [[armca]],
  name                = [[Crane]],
  description         = [[Construction Aircraft, Builds at 4 m/s]],
  acceleration        = 0.1,
  airStrafe           = 0,
  amphibious          = true,
  brakeRate           = 0.1,
  buildCostMetal      = 220,
  buildDistance       = 160,
  builder             = true,

  buildoptions        = {
  },

  buildPic            = [[ARMCA.png]],
  buildRange3D        = false,
  canFly              = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  canSubmerge         = false,
  category            = [[GUNSHIP UNARMED]],
  collisionVolumeOffsets        = [[0 0 -5]],
  collisionVolumeScales         = [[42 8 42]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[cylY]],
  collide             = true,
  corpse              = [[DEAD]],
  cruiseAlt           = 80,

  customParams        = {
    airstrafecontrol = [[0]],
    description_bp = [[Aeronave de construÃ§?o, constrÃ³i a 4 m/s]],
	description_de = [[Konstruktionsflugzeug, Baut mit 4 m/s]],
    description_es = [[AviÃ³n de construcciÃ³n, construye a 4 m/s]],
    description_fr = [[Avion de Construction, Construit ? 4 m/s]],
    description_it = [[Aereo da costruzzione, costruisce a 4 m/s]],
    description_pl = [[Latajacy konstruktor, moc 4 m/s]],
    helptext       = [[The Crane flies quickly over any terrain, but is fragile to any AA. Though it has relatively poor nano power compared to other constructors, it is able to build in many hard to reach places and expand an air players territory in a nonlinear fashion. Due to its mobility, it is ideal for reclaiming wrecks and other repetetitive tasks.]],
    helptext_bp    = [[Crane voa rapidamente sobre qualquer terreno mas Ã© derrubada facilmente por qualquer fogo anti-aÃ©reo. Embora seu poder de construÃ§?o seja ligeiramente mais baixo que o damaioria dos contrutores, sua agilidade e capacidade de voar sobre obstÃ¡culos permite a um jogador aÃ©reo expandir seu territÃ³rio de forma n?o-linear. Sua mobilidade alta tamb?m a torna eficiente em reclamar destroÃ§os e outras atividades nas quais construtores terrestres gastariam mais tempo viajando que trabalhando.]],
	helptext_de    = [[Der Crane bewegt sich flink Ã¼ber das Terrain, ist aber auch anfÃ¤llig gegenÃ¼ber AA. Obwohl er ziemlich wenig Baukraft hat, ist er in der Lage auch auf auÃergewÃ¶hnlichen PlÃ¤tzen zu bauen. Durch seine MobilitÃ¤t ist er ideal dafÃ¼r geschaffen, Wracks zu absorbieren und daraus das Metall zu gewinnen.]],
    helptext_es    = [[El Crane vuela rÃ¡pidamente sobre qualquier terreno, pero es frÃ¡gil a qualquier AA. Aunque tenga relativamente poco nano comparado con otros constructores, pude construir en muchos lugares inaccesibles y puede ampliar el territorio de un jugador en una manera no linear. Gracias a su mobilidad, es ideal para reclamar pecios.]],
    helptext_fr    = [[Le Crane vole rapidement au dessus de tous les obstacles. Tr?s vuln?rable ? la d?fense a?rienne, il est id?al pour construire dans des endroits tres difficile d'acces ou pour r?cup?rer le m?tal des carcasses sur le champ de bataille.]],
    helptext_it    = [[Il Crane vola velocemnte su qualunque terreno, ma ? fragile a qualunque AA. Anche se ha relativamente poco nano rispetto ad altri costruttori, riesce a costruire un posti inaccessibili e pu? espandere il territorio di un giocatore un una maniera non lineare. Grazie alla sua mobilit? ? ideale pere reclamare relitti.]],
    helptext_pl    = [[Crane moze przelatywac z dosc duza predkoscia nad dowolnym terenem. Choc w porownaniu do pozostalych konstruktorow ma niska moc, jego wysoka ruchliwosc pozwala mu budowac w trudno dostepnych miejscach, szybko przeczesywac pole bitwy w poszukiwaniu zlomu i wykonywac inne wymagajace mobilnosci czynnosci.]],
	modelradius    = [[10]],
	midposoffset   = [[0 4 0]],
  },

  energyUse           = 0,
  explodeAs           = [[GUNSHIPEX]],
  floater             = true,
  footprintX          = 2,
  footprintZ          = 2,
  hoverAttack         = true,
  iconType            = [[builderair]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  maxDamage           = 240,
  maxVelocity         = 6,
  minCloakDistance    = 75,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK TURRET]],
  objectName          = [[crane.s3o]],
  script              = [[armca.lua]],
  selfDestructAs      = [[GUNSHIPEX]],
  side                = [[ARM]],
  sightDistance       = 380,
  smoothAnim          = true,
  turnRate            = 500,
  workerTime          = 4,

  featureDefs         = {

    DEAD  = {
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      object           = [[crane_d.dae]],
    },


    HEAP  = {
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[4]],
      object           = [[debris2x2b.s3o]],
    },

  },

}

return lowerkeys({ armca = unitDef })
