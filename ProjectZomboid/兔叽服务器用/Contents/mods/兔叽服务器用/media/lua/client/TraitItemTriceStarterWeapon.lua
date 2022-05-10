require('NPCs/MainCreationMethods');

local function initTriWepStartTrait()	
	local tristartwep = TraitFactory.addTrait("tristartwep", getText("UI_trait_trice_starterweapon"), 5, getText("UI_trait_trice_starterweapon_desc"), false, false);
end

local function initTriWepStartStuff(player, square)
	if player:HasTrait("tristartwep") then
	local inv = player:getInventory();	
        inv:AddItem("trice_items.startwepchest");	
   end
end

Events.OnGameBoot.Add(initTriWepStartTrait);
Events.OnNewGame.Add(initTriWepStartStuff);
