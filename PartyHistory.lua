function PartyHistory_OnLoad(self)
   self:RegisterEvent("PARTY_CONVERTED_TO_RAID");
   self:RegisterEvent("PARTY_INVITE_REQUEST");
   self:RegisterEvent("PARTY_LEADER_CHANGED");
   self:RegisterEvent("PARTY_LOOT_METHOD_CHANGED");
   self:RegisterEvent("RAID_ROSTER_UPDATE");
   self:RegisterEvent("RAID_TARGET_UPDATE");
   self:RegisterEvent("READY_CHECK");
   self:RegisterEvent("READY_CHECK_FINISHED");
   self:RegisterEvent("PLAYER_ROLES_ASSIGNED");
   SlashCmdList["PH"] = PH_Command;
   SLASH_PH1 = "/ph";
   SLASH_PH2 = "/partyhistory";
   PartyHistory_Override = false;
end

--I'm currently testing this to see what the arguments are, and if it will
--even work the way I want it to.
function PartyHistory_OnEvent(self, event, ...)
   print(event); --Should print the event name
   print(...); --Should print all of the arguments
end
