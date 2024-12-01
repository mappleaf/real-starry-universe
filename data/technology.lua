local placeholder_png = "__real-starry-universe__/graphics/planet.png"



local PlanetTechnologies = {
    { "mercury", "水星", { "planet-discovery-venus", "space-platform-thruster" }, false },
    { "venus", "金星", { "planet-discovery-luna", "space-platform-thruster" }, false },
    { "earth", "地球", { "space-platform-thruster" }, false },
    { "luna", "月球", { "planet-discovery-earth", "space-platform-thruster" }, false },
    { "mars", "火星", { "planet-discovery-luna", "space-platform-thruster" }, false },
    { "phobos", "火卫一", { "planet-discovery-mars", "space-platform-thruster" }, true },
    { "deimos", "火卫二", { "planet-discovery-mars", "space-platform-thruster" }, true },
    { "asteroid-belt-inner", "内小行星带", { "planet-discovery-mars", "space-platform-thruster" }, false },
    { "jupiter", "木星", { "planet-discovery-asteroid-belt-inner", "space-platform-thruster" }, false },
    { "saturn", "土星", { "planet-discovery-jupiter", "space-platform-thruster" }, false },
    { "uranus", "天王星", { "planet-discovery-saturn", "space-platform-thruster" }, false },
    { "neptune", "海王星", { "planet-discovery-uranus", "space-platform-thruster" }, false },
    { "pluto", "冥王星", { "planet-discovery-neptune", "space-platform-thruster" }, false },
    { "asteroid-belt-outer", "柯伊伯带", { "planet-discovery-pluto", "space-platform-thruster" }, false }
}

for i, tech in ipairs(PlanetTechnologies) do
    local planet_name = tech[1]
    local planet_description = tech[2]
    local prerequisites = tech[3]
    local IconIsBlank = tech[4]
    local Icon = IconIsBlank and placeholder_png or "__real-starry-universe__/graphics/" .. planet_name .. ".png"

    data:extend({
        {
            type = "technology",
            name = "planet-discovery-" .. planet_name,
            icon = Icon, -- 替换为行星对应的图标路径
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
