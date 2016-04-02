unitDef = {
  unitname                      = [[nest]],
  name                          = [[Nest]],
  description                   = [[Spawns Chickens]],
  acceleration                  = 0,
  brakeRate                     = 0,
  buildAngle                    = 4096,
  buildCostMetal                = 0,
  builder                       = true,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 9,
  buildingGroundDecalSizeY      = 9,
  buildingGroundDecalType       = [[nest_aoplane.dds]],

  buildoptions                  = {
    [[chicken_drone]],
    [[chicken_pigeon]],
    [[chicken]],
    [[chicken_leaper]],
    [[chickens]],
    [[chicken_dodo]],
    [[chickenf]],
    [[chicken_digger]],
    [[chickena]],
    [[chickenr]],
    [[chicken_spidermonkey]],
    [[chicken_listener]],
  },

  buildPic                      = [[roost.png]],
  CanBeAssisted                 = 0,
  canMove                       = true,
  canPatrol                     = true,
  canstop                       = [[1]],
  category                      = [[SINK UNARMED]],
  commander                     = false,

  customParams                  = {
    description_de = [[Erzeugt Chicken]],
    description_pl = [[Rozmnaza kurczaki]],
	helptext       = [[Nests such as this one are where the basic Thunderbirds are hatched.]],
	helptext_de    = [[In den Nestern der Chicken wird die Brut herangezogen und nach einer gewissen Zeit auf die restliche Welt losgelassen.]],
	helptext_pl    = [[W tym gniezdzie rodza sie podstawowe kurczaki.]],
    chickenFac = [[true]],
  },

  energyStorage                 = 50,
  energyUse                     = 0,
  explodeAs                     = [[NOWEAPON]],
  footprintX                    = 6,
  footprintZ                    = 6,
  iconType                      = [[factory]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  maxDamage                     = 2000,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  metalMake                     = 0,
  metalStorage                  = 50,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[roost]],
  script                        = [[roost.cob]],
  selfDestructAs                = [[NOWEAPON]],

  sfxtypes                      = {

    explosiongenerators = {
      [[custom:dirt2]],
      [[custom:dirt3]],
      [[custom:Nano]],
    },

  },

  side                          = [[THUNDERBIRDS]],
  sightDistance                 = 273,
  smoothAnim                    = true,
  TEDClass                      = [[PLANT]],
  turnRate                      = 0,
  useBuildingGroundDecal        = true,
  workerTime                    = 21,
  yardMap                       = [[occcco occcco occcco occcco occcco occcco]],

  featureDefs                   = {
  },

}

return lowerkeys({ nest = unitDef })
