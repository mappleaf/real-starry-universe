local Sol = require("asteroid_definitions.sol")

local Mercury = require("asteroid_definitions.mercury")

local Venus = require("asteroid_definitions.venus")

local Earth = require("asteroid_definitions.earth")
local Luna = require("asteroid_definitions.luna")

local Mars = require("asteroid_definitions.mars")
local Phobos = require("asteroid_definitions.phobos")
local Deimos = require("asteroid_definitions.deimos")

local AsteroidBeltInner = require("asteroid_definitions.asteroid-belt-inner")
local Ceres = require("asteroid_definitions.ceres")
local Vesta = require("asteroid_definitions.vesta")
local Pallas = require("asteroid_definitions.pallas")
local Hygiea = require("asteroid_definitions.hygiea")

local Jupiter = require("asteroid_definitions.jupiter")
local Io = require("asteroid_deinitions.io")
local Europa = require("asteroid_definitions.europa")
local Ganymede = require("asteroid_definitions.ganymede")
local Callisto = require("asteroid_deinitions.callisto")

local Saturn = require("asteroid_definitions.saturn")
local Mimas = require("asteroid_definitions.mimas")
local Enceladus = require("asteroid_definitions.enceladus")
local Tethys = require("asteroid_definitions.tethys")
local Dione = require("asteroid_definitions.dione")
local Rhea = require("asteroid_definitions.rhea")
local Titan = require("asteroid_definitions.titan")
local Iapetus = require("asteroid_definitions.iapetus")

local Uranus = require("asteroid_definitions.uranus")
local Ariel = require("asteroid_definitions.ariel")
local Umbirel = require("asteroid_definitions.umbirel")
local Titania = require("asteroid_definitions.titania")
local Oberon = require("asteroid_definitions.oberon")
local Miranda = require("asteroid_definitions.miranda")

local Neptune = require("asteroid_definitions.neptune")
local Triton = require("asteroid_definitions.triton")

local AsteroidBeltOuter = require("asteroid_definitions.asteroid-belt-outer")
local Pluto = require("asteroid_definitions.pluto")
local Charon = require("asteroid_definitions.charon")
local MakeMake = require("asteroid_definitions.makemake")
local Eris = require("asteroid_definitions.eris")
local Haumea = require("asteroid_definitions.haumea")
local GongGong = require("asteroid_definitions.gonggong")
local DefinitionsUtil = require("asteroid_definitions.definitions_util")
-- Return all asteroid definitions for the solar system.

-- Planets are sorted by the distance from the star they orbit.
-- For instance, Earth is labelled under 3 - meaning that it's the third planet that orbits the Sun.
-- Nil is currently representing planets which don't exist yet, such as the outer asteroid belt. These nils are defined in their respective asteroid definitions file.
local Planets = {
    [0] = Sol,
    [1] = Mercury,
    [2] = Venus,
    [3] = Earth,
    [4] = Mars,
    [5] = AsteroidBeltInner,
    [6] = Jupiter,
    [7] = Saturn,
    [8] = Uranus,
    [9] = Neptune,
    [10] = AsteroidBeltOuter
}

-- Moons are sorted by the planet they orbit.
-- For instance, Luna is labelled under 3,1 - meaning that it's the first moon of the third planet, Earth.
-- Nil is currently representing moons which don't exist yet, such as the moons of jupiter.
-- Empty tables represent planets with no moons, such as mercury.
local Moons = {
    [0] = {}, -- Sol
    [1] = {}, -- Mercury
    [2] = {}, -- Venus
    [3] = { -- Earth
        [1] = Luna
    },
    [4] = { -- Mars
        [1] = Phobos,
        [2] = Deimos
    },
    [5] = { -- Inner Asteroid Belt
        [1] = Ceres,
        [2] = Vesta,
        [3] = Pallas,
        [4] = Hygiea
    },
    [6] = { -- Jupiter
        [1] = Io,
        [2] = Europa,
        [3] = Ganymede,
        [4] = Callisto
    },
    [7] = { -- Saturn
        [1] = Mimas,
        [2] = Enceladus,
        [3] = Tethys,
        [4] = Dione,
        [5] = Rhea,
        [6] = Titan,
        [7] = Iapetus
    },
    [8] = { -- Uranus
        [1] = Ariel,
        [2] = Umbirel,
        [3] = Titania,
        [4] = Oberon,
        [5] = Miranda
    },
    [9] = { -- Neptune
        [1] = Triton
    },
    [10] = { -- Outer Asteroid Belt
        [1] = Pluto,
        [2] = Charon,
        [3] = MakeMake,
        [4] = Eris,
        [5] = Haumea,
        [6] = GongGong
    }
}

-- Use the Planet + Moon definition function to create the solar system.
local SolarSystem = DefinitionsUtil.StarSystem(Planets, Moons)

return SolarSystem
