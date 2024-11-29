local RotationUtil = {}

-- Change coordinate systems from that of the first paramater to that of the second. Expects a "space-location" or "planet" Prototype for each paramater, with the first paramater's distance and orientation being relative to that of the second.
local function Unrelate(Planet, ParentObject)
    local AB = ParentObject.distance
    local BC = Planet.distance
    local AB_BC = Planet.orientation
    log("Length of line AB: " .. tostring(AB) .. " Length of line BC: " .. tostring(BC) .. " Angle of AB_BC: " .. tostring(AB_BC))

    local AB_BC_Radians = AB_BC * 2 * math.pi
    log("Angle of AB_BC in radians: " .. tostring(AB_BC_Radians))

    local AC = math.sqrt(AB^2 + BC^2 - 2 * AB * BC * math.cos(AB_BC_Radians))
    log("Length of line AC: " .. tostring(AC))

    local COS_AB_AC_Radians = (AB^2 + AC^2 - BC^2) / (2 * AB * AC)
    local AB_AC_Radians = math.acos(COS_AB_AC_Radians)
    log("Angle of AB_AC in radians: " .. tostring(AB_AC_Radians))

    local AB_AC = AB_AC_Radians / (2 * math.pi)
    log("Angle of AB_AC: " .. tostring(AB_AC))

    Planet.orientation = AB_AC + ParentObject.orientation
    Planet.distance = AC
    return Planet
end

RotationUtil.Unrelate = Unrelate

return RotationUtil
