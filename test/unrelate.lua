local RotationUtil = require("data.rotation_util")

local Earth = {
    distance = 10,
    orientation = 180 / 360,
    magnitude = 1
}

local Moon = {
    distance = 1,
    orientation = 270 / 360
}

RotationUtil.Unrelate(Moon, Earth)

log("Moon in earth's coordinate system: " .. serpent.block(Moon))