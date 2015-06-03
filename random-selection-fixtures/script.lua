-- For select a random fixtures in the selection
-- Created by Corentin Azelart, 03-Jun-2015, v3.1.0.8

-- Extract some vars
local internal_name		= select(1,...);
local visible_name		= select(2,...);

-- Declare a logger
local E = gma.feedback;

-- Declare a gma command
local C = gma.cmd;

-- Init...
E("Plugin " .. internal_name .. " successfully loaded.")
E("Plugin will appear as " .. visible_name .. " in plugin pool.")

local function NewRandomFixturesSelection()
	local selectedFixtures = gma.show.getvar("SELECTEDFIXTURESCOUNT");
	if(tonumber(selectedFixtures) > 0) then
		for count = 0, selectedFixtures, 1 do
      		C("Next");
      		if(math.random(0, 1) == 0) then
				C("At 100");
      		end
      	end
	else
		gma.gui.confirm("Unable to find fixture selected", "Please select more groups and/or fixtures");
	end
end

return NewRandomFixturesSelection;