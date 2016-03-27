unitDef = {
  unitname              = [[chicken_dodo]],
  name                  = [[Dodo]],
  description           = [[Chicken Bomb]],
  acceleration          = 6,
  activateWhenBuilt     = true,
  brakeRate             = 0.205,
  buildCostMetal        = 0,
  builder               = false,
  buildPic              = [[chicken_dodo.png]],
  canGuard              = true,
  canHover              = false,
  canMove               = true,
  canPatrol             = true,
  canstop               = [[1]],
  category              = [[SWIM]],

  customParams          = {
    description_fr = [[Chicken kamikaze]],
	description_de = [[Chicken Bombe]],
	description_pl = [[Bomba]],
    helptext       = [[The Dodo's body contains a volatile mixture of organic explosives. At the slightest provocation, it explodes spectacularly, with the resulting shockwave throwing nearby units into the air. Beware as its flying limbs and spikes will do residual damage.]],
    helptext_fr    = [[Le corps du Dodo renferme un m?lange hautement volatile d'explosifs organiques. Au moindre choc il explose spectaculairement en produisant une onde de choc repoussant avec force les unit?s ? proximit?. Attention en explosant il ?parpille divers restes solides provoquant des dommages supl?mentaires.]],
	helptext_de    = [[Dodos K�rper besteht aus einer impulsiven Mixtur von organichen Sprengstoffen. Die kleinste Penetration und Dodo explodiert spektakul�r mit einer Schockwelle, die nahegelegene Einheiten zur�ck schleudert. H�te dich vor den fliegenden Gliedma�en, die bleibende Sch�den hinterlassen k�nnen.]],
	helptext_pl    = [[Dodo zawiera w sobie niestabilna mieszanke i jest w stanie wybuchnac; rozrzucone wokolo kolce z jego skorupy takze zadaja obrazenia.]],
  },

  explodeAs             = [[DODO_DEATH]],
  footprintX            = 2,
  footprintZ            = 2,
  iconType              = [[chickendodo]],
  idleAutoHeal          = 20,
  idleTime              = 300,
  kamikaze              = true,
  kamikazeDistance      = 80,
  leaveTracks           = true,
  maxDamage             = 200,
  maxSlope              = 36,
  maxVelocity           = 7,
  minCloakDistance      = 75,
  movementClass         = [[BHOVER3]],
  movestate             = 2,
  noAutoFire            = false,
  noChaseCategory       = [[FIXEDWING SATELLITE GUNSHIP SUB]],
  objectName            = [[chicken_dodo.s3o]],
  onoffable             = true,
  selfDestructAs        = [[DODO_DEATH]],
  selfDestructCountdown = 0,

  sfxtypes              = {

    explosiongenerators = {
      [[custom:blood_spray]],
      [[custom:green_goo]],
      [[custom:dirt]],
    },

  },

  side                  = [[THUNDERBIRDS]],
  sightDistance         = 256,
  smoothAnim            = true,
  trackOffset           = 1,
  trackStrength         = 6,
  trackStretch          = 1,
  trackType             = [[ChickenTrack]],
  trackWidth            = 10,
  turnRate              = 2000,
  upright               = false,
  waterline             = 4,
  workerTime            = 0,
}

return lowerkeys({ chicken_dodo = unitDef })
