if mods["visible-planets"] then
    for _,space_location in pairs(data.raw["space-location"]) do
        if space_location.mod and space_location.mod == "rsu" then
            if string.find(space_location.name, "asteroid%-belt") then
                vp_add_planets_to_blacklist({space_location.name})
            end
        end
    end
    for _,planet in pairs(data.raw["planet"]) do
        if planet.mod and planet.mod == "rsu" then
            if string.find(planet.name, "asteroid%-belt") then
                vp_add_planets_to_blacklist({planet.name})
            end
        end
    end
end