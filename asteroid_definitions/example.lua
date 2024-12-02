-- An example file of what the planet and moon specific lua scripts should look like. This is not and should not be included in star systems, but could be copied for other planets and moons.
local ExampleDefinitions = {} -- An empty table which will contain all data referencing this planet directly.
ExampleDefinitions.name = "example" -- The name of the planet or moon this file defines the asteroid data for. Here it's just "example".
ExampleDefinitions.inner = {} -- This shouldn't be empty, but contain about half of the definition between a planet and the planet closer to the star it orbits, if any. This only affects planets.
ExampleDefinitions.outer = {} -- This shouldn't be empty, but contain about half of the definition between a planet and the planet further from the star it orbits, if any. This only affects planets.
ExampleDefinitions.moon_inner = {} -- This shouldn't be empty, but contain about half of the definition between a moon and the moon closer to the planet it orbits. This includes the planet it orbits as the innermost moon. This only affects moons.
ExampleDefinitions.moon_outer = {} -- This shouldn't be empty, but contain about half of the definition between a moon and the moon further from the planet it orbits. This includes the two planets closer and further from the star the planet this moon orbits as the outermost moons. This affects both planets and moons.

return ExampleDefinitions -- Return the ExampleDefinitions table. The actual data in the table can be provided however you want.
