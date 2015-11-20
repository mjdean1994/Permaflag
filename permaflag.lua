print("Permaflag loaded. Don't blame me if you forget and get yourself killed.")


local function onUpdate(self,elapsed)
	if GetPVPDesired()==0 then
		TogglePVP()   
	end
end

local EventFrame = CreateFrame("Frame")
EventFrame:RegisterEvent("UNIT_FACTION")
EventFrame:SetScript("OnEvent", onUpdate)