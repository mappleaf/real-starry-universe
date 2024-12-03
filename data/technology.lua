local placeholder_png = "__real-starry-universe__/graphics/planet.png"


local planet_technologies = {}
-- local PlanetTechnologies = {
--     { "sol", "太阳轨道", { "planet-discovery-mercury", "space-platform-thruster" }, true },
--     { "mercury", "水星", { "planet-discovery-venus", "space-platform-thruster" }, false },
--     { "venus", "金星", { "planet-discovery-luna", "space-platform-thruster" }, false },
--     { "earth", "地球", { "space-platform-thruster" }, false },
--     { "luna", "月球", { "planet-discovery-earth", "space-platform-thruster" }, false },
--     { "mars", "火星", { "planet-discovery-luna", "space-platform-thruster" }, false },
--     { "phobos", "火卫一", { "planet-discovery-mars", "space-platform-thruster" }, true },
--     { "deimos", "火卫二", { "planet-discovery-mars", "space-platform-thruster" }, true },
--     { "asteroid-belt-inner", "内小行星带", { "planet-discovery-mars", "space-platform-thruster" }, false },
--     { "jupiter", "木星", { "planet-discovery-asteroid-belt-inner", "space-platform-thruster" }, false },
--     { "saturn", "土星", { "planet-discovery-jupiter", "space-platform-thruster" }, false },
--     { "uranus", "天王星", { "planet-discovery-saturn", "space-platform-thruster" }, false },
--     { "neptune", "海王星", { "planet-discovery-uranus", "space-platform-thruster" }, false },
--     { "pluto", "冥王星", { "planet-discovery-neptune", "space-platform-thruster" }, false },
--     { "asteroid-belt-outer", "柯伊伯带", { "planet-discovery-pluto", "space-platform-thruster" }, false }
-- }

for _, planet in pairs(data.raw["planet"]) do
    if planet then
        if not data.raw["technology"]["planet-discovery-" .. planet.name] then -- Compatibility check to not duplicate planet discovery technologies.
            local planet_technology = {}
            planet_technology[1] = planet.name
            planet_technology[2] = {"space-platform-thruster"}
            if planet.prerequisite and data.raw["technology"][planet.prerequisite] then
                table.insert(planet_technology[2], planet.prerequisite)
            end
            if planet.icon and planet.icon == placeholder_png then
                planet_tecnology[3] = true
            else
                planet_tecnology[3] = false
            end
            table.insert(planet_technologies, planet_technology)
        end
    end
end

for i, tech in ipairs(planet_technologies) do
    local planet_name = tech[1]
    local prerequisites = tech[2]
    local is_placeholder_image = tech[3]
    local icon = is_placeholder_image and placeholder_png or "__real-starry-universe__/graphics/" .. planet_name .. ".png"

    data:extend({
        {
            type = "technology",
            name = "planet-discovery-" .. planet_name,
            icon = icon, -- 替换为行星对应的图标路径
            icon_size = 512,
            essential = true,
            effects = {
                {
                    type = "unlock-space-location",
                    space_location = planet_name,
                    use_icon_overlay_constant = true
                }
            },
            prerequisites = prerequisites,
            unit = {
                count = 10,
                ingredients = {
                    { "automation-science-pack", 1 },
                },
                time = 60
            }
        }
    })
end
