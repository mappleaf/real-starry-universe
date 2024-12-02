local RotationUtil = {}

-- Change coordinate systems from that of the first paramater to that of the second. Expects a "space-location" or "planet" Prototype for each paramater, with the first paramater's distance and orientation being relative to that of the second.
local function Unrelate(Planet, ParentObject)
    local AB = ParentObject.distance
    local BC = Planet.distance
    local AB_BC = Planet.orientation

    local AB_BC_Radians = AB_BC * 2 * math.pi

    local AC = math.sqrt(AB^2 + BC^2 - 2 * AB * BC * math.cos(AB_BC_Radians))

    local COS_AB_AC_Radians = (AB^2 + AC^2 - BC^2) / (2 * AB * AC)
    local AB_AC_Radians = math.acos(COS_AB_AC_Radians)

    local AB_AC = AB_AC_Radians / (2 * math.pi)

    Planet.orientation = AB_AC + ParentObject.orientation
    Planet.distance = AC + ParentObject.magnitude
    if Planet.orientation > 1 then
        Planet.orientation = Planet.orientation % 1 -- Orientation cannot be greater than 1.
    end
    return Planet
end

RotationUtil.Unrelate = Unrelate

return RotationUtil
