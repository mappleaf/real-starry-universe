local function CombineDefinitions(InnerDefinition, OuterDefinition)
	-- Code which combines two asteroid definitions. Note that the input definitions are both partial, only containing about half of the total definition.
	return CombinedDefinition
end

local DefinitionsUtil = {}

local function StarSystem(Planets, Moons)
	-- Now, loop through every planet and moon, then merge together the inner, outer, moon_inner and moon_outer asteroid definitions to create a definition for each traversable space connection.
	for i,Planet in pairs(Planets) do
  		if Planet ~= nil then
  			if Planets[i - 1] ~= nil then
  				-- If there's a planet which is closer to the star it orbits than this one, and both planets have a sub-definition, create a new full-definition.
  				local InnerPlanet = Planets[i - 1]
  				if InnerPlanet.outer ~= nil and Planet.inner ~= nil and SolarSystem[InnerPlanet.name .. "_" .. Planet.name] == nil then
  					SolarSystem[InnerPlanet.name .. "_" .. Planet.name] = CombineDefinitions(InnerPlanet.outer, Planet.inner)
	  			end
  			end
 	 		if Planets[i + 1] ~= nil then
		  		-- If there's a planet which is further from the star it orbits than this one, and both planets have a sub-definition, create a new full-definition.
				local OuterPlanet = Planets[i + 1]
	  			if Planet.outer ~= nil and OuterPlanet.inner ~= nil and SolarSystem[Planet.name .. "_" .. OuterPlanet.name] == nil then
	  				SolarSystem[Planet.name .. "_" .. OuterPlanet.name] = CombineDefinitions(Planet.outer, OuterPlanet.inner)
	  			end
	  		end
  			if Moons[i] ~= nil and Moons[i] ~= {} then
  				-- If this planet has moons, loop over every moon.
	  			local PlanetMoons = Moons[i]
	  			for j,Moon in pairs(PlanetMoons) do
	  				if Moon ~= nil then
		  				if PlanetMoons[j - 1] == nil then
		  					-- If there isn't a moon closer to the planet it orbits than this one, and both the planet and moon have a sub-definition, create a new full-definition.
		  					if Moon.moon_inner ~= nil and Planet.moon_outer ~= nil and SolarSystem[Planet.name .. "_" .. Moon.name] == nil then
		  						SolarSystem[Planet.name .. "_" .. Moon.name] = CombineDefinitions(Planet.moon_outer, Moon.moon_inner)
			  				end
			  			else
				  			-- If there is a moon closer to the planet it orbits than this one, and both moons have a sub-definition, create a new full-definition.
				  			local InnerMoon = PlanetMoons[j - 1]
				  			if Moon.moon_inner ~= nil and InnerMoon.moon_outer ~= nil and SolarSystem[InnerMoon.name .. "_" .. Moon.name] == nil then
				  				SolarSystem[InnerMoon.name .. "_" .. Moon.name] = CombineDefinitions(InnerMoon.moon_outer, Moon.moon_inner)
				  			end
				  		end
				  		if PlanetMoons[j + 1] ~= nil then
				  			-- If there is a moon further from the planet it orbits than this one, and both moons have a sub-definition, create a new full-definition.
				  			local OuterMoon = PlanetMoons[j + 1]
				  			if Moon.moon_outer ~= nil and OuterMoon.moon_inner ~= nil and SolarSystem[Moon.name .. "_" .. OuterMoon.name] == nil then
				  				SolarSystem[Moon.name .. "_" .. OuterMoon.name] = CombineDefinitions(Moon.moon_outer, OuterMoon.moon_inner)
				  			end
				  		elseif Planets[i + 1] ~= nil then
				  			-- If there isn't a moon further from the planet it orbits than this one, there is a planet further from the star than the planet this moon orbits, and both the planet and moon have a sub-definition, create a new full-definition.
				  			local OuterPlanet = Planets[i + 1]
			  				if Moon.moon_outer ~= nil and OuterPlanet.inner ~= nil and SolarSystem[Moon.name .. "_" .. OuterPlanet.name] == nil then
			  					SolarSystem[Moon.name .. "_" .. OuterPlanet.name] = CombineDefinitions(Moon.moon_outer, OuterPlanet.inner)
			  				end
						elseif Planets[i - 1] ~= nil then
							-- If there isn't a moon further from the planet it orbits than this one, there is a planet closer to the star than the planet this moon orbits, and both the planet and moon have a sub-definition, create a new full-definition.
				  			local InnerPlanet = Planets[i + 1]
			  				if Moon.moon_outer ~= nil and InnerPlanet.outer ~= nil and SolarSystem[Moon.name .. "_" .. InnerPlanet.name] == nil then
			  					SolarSystem[Moon.name .. "_" .. InnerPlanet.name] = CombineDefinitions(InnerPlanet.outer, Moon.moon_outer)
			  				end
						end
					end
				end
			end
		end
	end
end

DefinitionsUtil.StarSystem = StarSystem

return DefinitionsUtil
