

require("prototypes.gravel")
require("prototypes.sand") -- New Raw Resources
require("prototypes.clay") -- New Raw Resources





--Disable and Modify some of the early game tech to make it a little harder

table.insert(data.raw["technology"]["steel-processing"].effects, {type = "unlock-recipe", recipe = "pig-iron"})