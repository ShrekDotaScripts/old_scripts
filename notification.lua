local notification = {}
notification.optionEnable = Menu.AddOptionBool({"Awareness", "Notification"}, "Enable", false)
notification.optionChatAlertEnable = Menu.AddOptionBool({"Awareness", "Notification", "Chat Alert"}, "Enable", false)
notification.optionSkillAlertEnable = Menu.AddOptionBool({"Awareness", "Notification", "Chat Alert"}, "Skill Alert", false)
notification.optionRoshAlertEnable = Menu.AddOptionBool({"Awareness", "Notification", "Chat Alert"}, "Roshan Alert", false)
notification.optionLanguage = Menu.AddOptionCombo({"Awareness", "Notification", }, "Language", {"Русский", "English"}, 0)
notification.optionBaraAlert = Menu.AddOptionBool({"Awareness", "Notification", "Chat Alert"}, "Bara Alert", false)
notification.font = Renderer.LoadFont("Tahoma", 25, Enum.FontWeight.BOLD)
notification.font2 = Renderer.LoadFont("Tahoma", 15, Enum.FontWeight.BOLD)
notification.HeroNameTable = {}
notification.HeroNameTable["npc_dota_hero_abaddon"] = "Abaddon"
notification.HeroNameTable["npc_dota_hero_abyssal_underlord"] = "Abyssal Underlord"
notification.HeroNameTable["npc_dota_hero_alchemist"] = "Alchemist"
notification.HeroNameTable["npc_dota_hero_ancient_apparition"] = "Ancient Apparition"
notification.HeroNameTable["npc_dota_hero_antimage"] = "Anti-Mage"
notification.HeroNameTable["npc_dota_hero_arc_warden"] = "Arc Warden"
notification.HeroNameTable["npc_dota_hero_axe"] = "Axe"
notification.HeroNameTable["npc_dota_hero_bane"] = "Bane"
notification.HeroNameTable["npc_dota_hero_batrider"] = "Batrider"
notification.HeroNameTable["npc_dota_hero_beastmaster"] = "Beastmaster"
notification.HeroNameTable["npc_dota_hero_bloodseeker"] = "Bloodseeker"
notification.HeroNameTable["npc_dota_hero_bounty_hunter"] = "Bounty Hunter"
notification.HeroNameTable["npc_dota_hero_brewmaster"] = "Brewmaster"
notification.HeroNameTable["npc_dota_hero_bristleback"] = "Bristleback"
notification.HeroNameTable["npc_dota_hero_broodmother"] = "Broodmother"
notification.HeroNameTable["npc_dota_hero_centaur"] = "Centaur Warrunner"
notification.HeroNameTable["npc_dota_hero_chaos_knight"] = "Chaos Knight"
notification.HeroNameTable["npc_dota_hero_chen"] = "Chen"
notification.HeroNameTable["npc_dota_hero_clinkz"] = "Clinkz"
notification.HeroNameTable["npc_dota_hero_crystal_maiden"] = "Crystal Maiden"
notification.HeroNameTable["npc_dota_hero_dark_seer"] = "Dark Seer"
notification.HeroNameTable["npc_dota_hero_dazzle"] = "Dazzle"
notification.HeroNameTable["npc_dota_hero_death_prophet"] = "Death Prophet"
notification.HeroNameTable["npc_dota_hero_disruptor"] = "Disruptor"
notification.HeroNameTable["npc_dota_hero_doom_bringer"] = "Doom"
notification.HeroNameTable["npc_dota_hero_dragon_knight"] = "Dragon Knight"
notification.HeroNameTable["npc_dota_hero_drow_ranger"] = "Drow Ranger"
notification.HeroNameTable["npc_dota_hero_earth_spirit"] = "Earth Spirit"
notification.HeroNameTable["npc_dota_hero_earthshaker"] = "Earthshaker"
notification.HeroNameTable["npc_dota_hero_elder_titan"] = "Elder Titan"
notification.HeroNameTable["npc_dota_hero_ember_spirit"] = "Ember Spirit"
notification.HeroNameTable["npc_dota_hero_enchantress"] = "Enchantress"
notification.HeroNameTable["npc_dota_hero_enigma"] = "Enigma"
notification.HeroNameTable["npc_dota_hero_faceless_void"] = "Faceless Void"
notification.HeroNameTable["npc_dota_hero_furion"] = "Nature's Prophet"
notification.HeroNameTable["npc_dota_hero_gyrocopter"] = "Gyrocopter"
notification.HeroNameTable["npc_dota_hero_huskar"] = "Huskar"
notification.HeroNameTable["npc_dota_hero_invoker"] = "Invoker"
notification.HeroNameTable["npc_dota_hero_jakiro"] = "Jakiro"
notification.HeroNameTable["npc_dota_hero_juggernaut"] = "Juggernaut"
notification.HeroNameTable["npc_dota_hero_keeper_of_the_light"] = "Keeper of the Light"
notification.HeroNameTable["npc_dota_hero_kunkka"] = "Kunkka"
notification.HeroNameTable["npc_dota_hero_legion_commander"] = "Legion Commander"
notification.HeroNameTable["npc_dota_hero_leshrac"] = "Leshrac"
notification.HeroNameTable["npc_dota_hero_lich"] = "Lich"
notification.HeroNameTable["npc_dota_hero_life_stealer"] = "Lifestealer"
notification.HeroNameTable["npc_dota_hero_lina"] = "Lina"
notification.HeroNameTable["npc_dota_hero_lion"] = "Lion"
notification.HeroNameTable["npc_dota_hero_lone_druid"] = "Lone Druid"
notification.HeroNameTable["npc_dota_hero_luna"] = "Luna"
notification.HeroNameTable["npc_dota_hero_lycan"] = "Lycan"
notification.HeroNameTable["npc_dota_hero_magnataur"] = "Magnus"
notification.HeroNameTable["npc_dota_hero_medusa"] = "Medusa"
notification.HeroNameTable["npc_dota_hero_meepo"] = "Meepo"
notification.HeroNameTable["npc_dota_hero_mirana"] = "Mirana"
notification.HeroNameTable["npc_dota_hero_monkey_king"] = "Monkey King"
notification.HeroNameTable["npc_dota_hero_morphling"] = "Morphling"
notification.HeroNameTable["npc_dota_hero_naga_siren"] = "Naga Siren"
notification.HeroNameTable["npc_dota_hero_necrolyte"] = "Necrophos"
notification.HeroNameTable["npc_dota_hero_nevermore"] = "Shadow Fiend"
notification.HeroNameTable["npc_dota_hero_night_stalker"] = "Night Stalker"
notification.HeroNameTable["npc_dota_hero_nyx_assassin"] = "Nyx Assassin"
notification.HeroNameTable["npc_dota_hero_obsidian_destroyer"] = "Outworld Devourer"
notification.HeroNameTable["npc_dota_hero_ogre_magi"] = "Ogre Magi"
notification.HeroNameTable["npc_dota_hero_omniknight"] = "Omniknight"
notification.HeroNameTable["npc_dota_hero_oracle"] = "Oracle"
notification.HeroNameTable["npc_dota_hero_phantom_assassin"] = "Phantom Assassin"
notification.HeroNameTable["npc_dota_hero_phantom_lancer"] = "Phantom Lancer"
notification.HeroNameTable["npc_dota_hero_phoenix"] = "Phoenix"
notification.HeroNameTable["npc_dota_hero_puck"] = "Puck"
notification.HeroNameTable["npc_dota_hero_pudge"] = "Pudge"
notification.HeroNameTable["npc_dota_hero_pugna"] = "Pugna"
notification.HeroNameTable["npc_dota_hero_queenofpain"] = "Queen of Pain"
notification.HeroNameTable["npc_dota_hero_rattletrap"] = "Clockwerk"
notification.HeroNameTable["npc_dota_hero_razor"] = "Razor"
notification.HeroNameTable["npc_dota_hero_riki"] = "Riki"
notification.HeroNameTable["npc_dota_hero_rubick"] = "Rubick"
notification.HeroNameTable["npc_dota_hero_sand_king"] = "Sand King"
notification.HeroNameTable["npc_dota_hero_shadow_demon"] = "Shadow Demon"
notification.HeroNameTable["npc_dota_hero_shadow_shaman"] = "Shadow Shaman"
notification.HeroNameTable["npc_dota_hero_shredder"] = "Timbersaw"
notification.HeroNameTable["npc_dota_hero_silencer"] = "Silencer"
notification.HeroNameTable["npc_dota_hero_skeleton_king"] = "Wraith King"
notification.HeroNameTable["npc_dota_hero_skywrath_mage"] = "Skywrath Mage"
notification.HeroNameTable["npc_dota_hero_slardar"] = "Slardar"
notification.HeroNameTable["npc_dota_hero_slark"] = "Slark"
notification.HeroNameTable["npc_dota_hero_sniper"] = "Sniper"
notification.HeroNameTable["npc_dota_hero_spectre"] = "Spectre"
notification.HeroNameTable["npc_dota_hero_spirit_breaker"] = "Spirit Breaker"
notification.HeroNameTable["npc_dota_hero_storm_spirit"] = "Storm Spirit"
notification.HeroNameTable["npc_dota_hero_sven"] = "Sven"
notification.HeroNameTable["npc_dota_hero_techies"] = "Techies"
notification.HeroNameTable["npc_dota_hero_templar_assassin"] = "Templar Assassin"
notification.HeroNameTable["npc_dota_hero_terrorblade"] = "Terrorblade"
notification.HeroNameTable["npc_dota_hero_tidehunter"] = "Tidehunter"
notification.HeroNameTable["npc_dota_hero_tinker"] = "Tinker"
notification.HeroNameTable["npc_dota_hero_tiny"] = "Tiny"
notification.HeroNameTable["npc_dota_hero_treant"] = "Treant Protector"
notification.HeroNameTable["npc_dota_hero_troll_warlord"] = "Troll Warlord"
notification.HeroNameTable["npc_dota_hero_tusk"] = "Tusk"
notification.HeroNameTable["npc_dota_hero_undying"] = "Undying"
notification.HeroNameTable["npc_dota_hero_ursa"] = "Ursa"
notification.HeroNameTable["npc_dota_hero_vengefulspirit"] = "Vengeful Spirit"
notification.HeroNameTable["npc_dota_hero_venomancer"] = "Venomancer"
notification.HeroNameTable["npc_dota_hero_viper"] = "Viper"
notification.HeroNameTable["npc_dota_hero_visage"] = "Visage"
notification.HeroNameTable["npc_dota_hero_warlock"] = "Warlock"
notification.HeroNameTable["npc_dota_hero_weaver"] = "Weaver"
notification.HeroNameTable["npc_dota_hero_windrunner"] = "Windranger"
notification.HeroNameTable["npc_dota_hero_winter_wyvern"] = "Winter Wyvern"
notification.HeroNameTable["npc_dota_hero_wisp"] = "Io"
notification.HeroNameTable["npc_dota_hero_witch_doctor"] = "Witch Doctor"
notification.HeroNameTable["npc_dota_hero_zuus"] = "Zeus"
notification.HeroNameTable["npc_dota_hero_dark_willow"] = "Dark Willow"
notification.HeroNameTable["npc_dota_hero_pangolier"] = "Pangolier"
notification.smoke = nil
notification.smokestart = nil
notification.smokeend = nil
notification.vendeta = nil
notification.vendetastart = nil
notification.vendetaend = nil
notification.moonlight = nil
notification.moonlightstart = nil
notification.moonlightend = nil
notification.vendetaduration = nil
notification.beforegame = nil
notification.position = nil
notification.position2 = nil
notification.test = nil
notification.ent = nil
notification.cachedIcons = {}
notification.roshdead = false
notification.roshres = false
notification.roshrestime = 0
position2 = nil
charg = false
charghero = nil
function notification.OnUpdate()
	if not Menu.IsEnabled(notification.optionEnable) then return end
 	if not Engine.IsInGame() or not Heroes.GetLocal() then
    	notification.smoke = nil
    	notification.smokestart = nil
    	notification.smokeend = nil
    	notification.vendeta = nil
    	notification.vendetastart = nil
    	notification.vendetaend = nil
    	notification.moonlight = nil
    	notification.moonlightstart = nil
    	notification.moonlightend = nil
    	notification.vendetaduration = nil
    	notification.beforegame = nil
    	notification.pos = nil
    	notification.test = nil
    	notification.roshdead = false
    	notification.roshdietime = nil
    	time = 0
  	end
	local myHero = Heroes.GetLocal()
	if not myHero then return end
	notification.BaraAlert()
end
function notification.OnUnitAnimation(animation)
	if not Menu.IsEnabled(notification.optionEnable) then return end
  	local language = Menu.GetValue(notification.optionLanguage)
  	if animation.sequenceName == "roshan_attack" or animation.sequenceName == "roshan_attack2" then 
  		notification.roshattack = true 
    	notification.roshattacktime = GameRules.GetGameTime() 
  		if Menu.IsEnabled(notification.optionChatAlertEnable) and Menu.IsEnabled(notification.optionRoshAlertEnable) then
  			if language == 0 then 
  				Engine.ExecuteCommand("say_team Кто-то бьет рошана")
  			else
  				Engine.ExecuteCommand("say_team Roshan is under attack") 	
  			end	 
  		end
 	end
end
function notification.OnDraw()
  	if not Menu.IsEnabled(notification.optionEnable) or Heroes.GetLocal() == nil then return end
  	if notification.cachedIcons[1] == nil then
  		notification.cachedIcons[1] = Renderer.LoadImage("resource/flash3/images/items/smoke_of_deceit.png")
  	elseif notification.cachedIcons[2] == nil then
    	notification.cachedIcons[2] = Renderer.LoadImage("resource/flash3/images/spellicons/nyx_assassin_vendetta.png")
  	elseif notification.cachedIcons[3] == nil then
    	notification.cachedIcons[3] = Renderer.LoadImage("resource/flash3/images/spellicons/mirana_invis.png")
  	end
  	local x, y = Renderer.GetScreenSize()
  	if notification.roshres == true then
  	  	if GameRules.GetGameTime() - notification.roshrestime <= 5 then
  	  		Renderer.SetDrawColor(255,0,255)
  	  		Renderer.DrawText(notification.font,x/2, y/2, "Roshan Respawned")
  		else
  	  		notification.roshres = false
  	  		notification.roshrestime = 0
  		end
  	end	
  	local x1,y1
  	if notification.Round(x/y,1) >= 1.7 then
  		x1 = 950/1920 * x
  		y1 = 60/1080 * y
  		x = 1730/1920 * x
  		y = 45/1080 * y
  	elseif notification.Round(x/y,1) >= 1.5 then
  		x1 = 930/1680 * x
  		y1 = 55/1050 * y
  		x = 1480/1680 * x
  		y = 43/1050 * y
  	else
  		x1 = 900/1280 * x
  		y1 = 50/1024 * y
  		x = 1126/1280 * x
  		y = 43/1024 * y	
  	end
  	local y2 = 25
  	local time
  	local gametime = GameRules.GetGameTime() - GameRules.GetGameStartTime()
  	if notification.roshdead == true then
    	if (gametime - notification.roshdietime) <= 300 then
      		Renderer.SetDrawColor(255, 0, 255)
      		local roshtimermin = math.floor((gametime - notification.roshdietime) / 60)
      		local roshtimersec = math.floor((gametime - notification.roshdietime)%60)
      		Renderer.DrawText(notification.font2, x1, y1, 4 - roshtimermin..":"..60 - roshtimersec)
    	else
      		notification.roshdead = false
      		notification.roshdietime = nil
    	end
  	end
  	if notification.roshattack == true then
    	if GameRules.GetGameTime() - notification.roshattacktime <= 5 and GameRules.GetGameTime() - notification.roshattacktime > 0 then
      	MiniMap.DrawCircle(Vector(-2253.187500, 1704.875000, 159.968750), 195, 255, 0, 255)
    	else 
    		notification.roshattacktime = nil notification.roshattack = false
    	end
  	end
  	if notification.smokestart ~= nil then
    	if notification.beforegame == nil then
      		time = GameRules.GetGameTime() - GameRules.GetGameStartTime()
    	else 
    		time = GameRules.GetGameTime() 
    	end
    	notification.smokeend = notification.smokestart + 35.00
  	end
  	if notification.moonlightstart ~= nil then 
  		time = GameRules.GetGameTime() - GameRules.GetGameStartTime()
    	notification.moonlightend = notification.moonlightstart + 15.00
  	end
  	if notification.vendetastart ~= nil then 
  		time = GameRules.GetGameTime() - GameRules.GetGameStartTime()
    	for i = 1, Heroes.Count() do
      		local hero = Heroes.Get(i)
      		local vendeta
      		local vendetalvl
      		if NPC.GetUnitName(hero) == "npc_dota_hero_nyx_assassin" then
        		vendeta = NPC.GetAbility(hero, "nyx_assassin_vendetta")
        		vendetalvl = Ability.GetLevel(vendeta)
        		if vendetalvl == 3 then 
        			notification.vendetaduration = 60.00
        		else
         			if vendetalvl == 2 then 
         				notification.vendetaduration = 50.00
          			else 
          				notification.vendetaduration = 40.00 
          			end
        		end
        	notification.vendetaend = notification.vendetastart + notification.vendetaduration
      		end
    	end
 	end
  	if notification.smoke ~= nil and time < notification.smokeend then 
  		Renderer.SetDrawColor(255, 0, 0, 255) 
  		Renderer.DrawText(notification.font, x, y, "Smoke "..math.floor(notification.smokeend - time)) 
  		MiniMap.DrawCircle(notification.pos, 255, 0, 225, 255) 
  		Renderer.SetDrawColor(255, 255, 255, 255) 
  		Renderer.DrawImage(notification.cachedIcons[1], x - 24, y + 4, 22, 22)
  	else 
  		notification.smokestart = nil 
  		notification.smokeend = nil 
  		notification.smoke = nil 
  		notification.pos = nil 
  	end
  	if notification.moonlight ~= nil and time < notification.moonlightend then
   		if notification.smoke ~= nil then
   			y = y + y2 
   		end
    	Renderer.SetDrawColor(255, 0, 0, 255)
    	Renderer.DrawText(notification.font, x, y, "Mirana ulti "..math.floor(notification.moonlightend - time)) 
    	Renderer.SetDrawColor(255, 255, 255, 255) 
    	Renderer.DrawImage(notification.cachedIcons[3], x - 20, y + 4, 22, 22)
  	end
  	if notification.vendeta ~= nil and time < notification.vendetaend then
    	if notification.smoke ~= nil then
    		y = y + y2 
    	end
    	if notification.smoke == nil and notification.moonlight ~= nil then 
    		y = y + y2 
    	end
    	Renderer.SetDrawColor(255, 0, 0, 255)
    	Renderer.DrawText(notification.font, x, y, "Vendetta "..math.floor(notification.vendetaend - time)) 
    	Renderer.SetDrawColor(255, 255, 255, 255) 
    	Renderer.DrawImage(notification.cachedIcons[2], x - 24, y + 4, 22, 22)
    	MiniMap.DrawHeroIcon("npc_dota_hero_nyx_assassin", notification.nyxpos, 255, 0, 0, 255, 800)
  	end
end
function notification.OnModifierCreate(ent,mod)
	if not Heroes.GetLocal() or not Menu.IsEnabled(notification.optionEnable) or not Menu.IsEnabled(notification.optionChatAlertEnable) or not Menu.IsEnabled(notification.optionSkillAlertEnable) or NPC.GetUnitName(Heroes.GetLocal()) == "npc_dota_hero_invoker" then return end
	if Modifier.GetName(mod) == "modifier_invoker_sun_strike" then
		for i = 1, Heroes.Count() do
			local hero = Heroes.Get(i)
			local heroName = NPC.GetUnitName(hero)
			if heroName == "npc_dota_hero_invoker" and not Entity.IsSameTeam(Heroes.GetLocal(), hero) then
				local ss = NPC.GetAbility(hero, "invoker_sun_strike")
				Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_PING_ABILITY, ss, Vector(0,0,0), ss, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, Heroes.GetLocal())
			end
		end	
	end
end
function notification.OnParticleCreate(particle)
  	if not Menu.IsEnabled(notification.optionEnable) then return end
  	local myHero = Heroes.GetLocal()
  	local language = Menu.GetValue(notification.optionLanguage)
  	if particle.name == "dropped_aegis" then 
  		notification.roshdead = true 
  		notification.roshdietime = GameRules.GetGameTime() - GameRules.GetGameStartTime()
    	local min = math.floor(notification.roshdietime / 60)
    	local sec = math.floor(notification.roshdietime%60)
    	if Menu.IsEnabled(notification.optionChatAlertEnable) and Menu.IsEnabled(notification.optionRoshAlertEnable) then
    		if language == 0 then
    			Engine.ExecuteCommand("say_team Рошан умер - "..min..":"..sec)
   			else
    			Engine.ExecuteCommand("say_team Roshan died at - "..min..":"..sec)
    		end
    	end
  	end
  	if particle.name == "roshan_spawn" then 
  		notification.roshres = true 
  		notification.roshrestime = GameRules.GetGameTime() 
  		notification.roshdead = false 
  		if Menu.IsEnabled(notification.optionChatAlertEnable) then
  			if Menu.IsEnabled(notification.optionChatAlertEnable) and Menu.IsEnabled(notification.optionRoshAlertEnable) then
  			if language == 0 then 
    			Engine.ExecuteCommand("say_team Рошан реснулся")
    		else
    			Engine.ExecuteCommand("say_team Roshan has respawned")
    		end
   		end
  	end
  	notification.roshattack = true
  	notification.roshattacktime = GameRules.GetGameTime() end
  	if particle.name == "roshan_slam" then
    	if Menu.IsEnabled(notification.optionChatAlertEnable) and Menu.IsEnabled(notification.optionRoshAlertEnable) then
      		if language == 0 then 	
      			Engine.ExecuteCommand("say_team Кто-то бьет рошана")
      		else
      			Engine.ExecuteCommand("say_team Roshan is under attack")	
  	  		end
  		end
    	notification.roshattack = true
    	notification.roshattacktime = GameRules.GetGameTime()
    	notification.test = particle.index
    end
    if particle.name == "nyx_assassin_vendetta_start" then
      	if Menu.IsEnabled(notification.optionChatAlertEnable) and Menu.IsEnabled(notification.optionSkillAlertEnable) then
      		if language == 0 then
        		Engine.ExecuteCommand("say_team Nyx использовал ультимейт")
        	else 
        		Engine.ExecuteCommand("say_team Nyx has used ultimate")
        	end	
      	end 
      	notification.vendeta = 1
        notification.nyx = particle.index
        notification.vendetastart = GameRules.GetGameTime() - GameRules.GetGameStartTime()
    end
    if particle.name == "smoke_of_deceit" then
    	if Menu.IsEnabled(notification.optionChatAlertEnable) and Menu.IsEnabled(notification.optionSkillAlertEnable) then
        	if language == 0 then
        		Engine.ExecuteCommand("say_team Кто-то использовал смок")
      		else
      			Engine.ExecuteCommand("say_team Smoke has been used")
      		end	
        end 
        notification.smoke = 1
        notification.test = particle.index
        if GameRules.GetGameStartTime() == 0.0 then
        	notification.beforegame = 1 notification.smokestart = GameRules.GetGameTime()
        else
            notification.smokestart = GameRules.GetGameTime() - GameRules.GetGameStartTime()
        end
    end
    if particle.name == "mirana_moonlight_recipient" and not Entity.IsSameTeam(myHero, particle.entity) then
        if Menu.IsEnabled(notification.optionChatAlertEnable) and Menu.IsEnabled(notification.optionSkillAlertEnable) then
          	if language == 0 then 
            	Engine.ExecuteCommand("say_team Вражеская мирана использовала ультимейт")
        	else
        		Engine.ExecuteCommand("say_team Mirana has used ultimate")
        	end	
        end
        notification.moonlight = 1
        notification.moonlightstart = GameRules.GetGameTime() - GameRules.GetGameStartTime()
    end
end
function notification.BaraAlert()
    if not Menu.IsEnabled(notification.optionEnable) or not Menu.IsEnabled(notification.optionChatAlertEnable) or not Menu.IsEnabled(notification.optionBaraAlert) or Heroes.GetLocal() == nil then return end
    local myHero = Heroes.GetLocal()
    local myTeam = Entity.GetTeamNum(myHero)
    for i = 1, Heroes.Count() do
    	local hero = Heroes.Get(i)
       	local heroName = NPC.GetUnitName(hero)
       	local heroTeam = Entity.GetTeamNum(hero)
       	if charghero and not NPC.HasModifier(charghero,"modifier_spirit_breaker_charge_of_darkness_vision") then
          	charghero = nil
          	charg = false
          	if language == 0 then
          		Engine.ExecuteCommand("say_team Бара остановил разбег")
          	else
          		Engine.ExecuteCommand("say_team Spirit Breaker has canceled his charge")
          	end		
       	end
       	if heroName == "npc_dota_hero_nyx_assassin" then
         	notification.ent = Heroes.Get(i)
       	end
       	local language = Menu.GetValue(notification.optionLanguage)
       	if heroTeam == myTeam and NPC.HasModifier(hero, "modifier_spirit_breaker_charge_of_darkness_vision") and charg == false then
       		if language == 0 then
         		Engine.ExecuteCommand("say_team Бара разгоняется на "..notification.HeroNameTable[heroName])
         	else
         		Engine.ExecuteCommand("say_team Spirit Breaker charging in "..notification.HeroNameTable[heroName])
         	end
         	charg = true
         	charghero = hero
       	end
    end
end
function notification.OnParticleUpdate(particle)
	if particle.index == notification.nyx then notification.nyxpos = particle.position notification.nyx = nil end
    if particle.index == notification.test then notification.pos = particle.position notification.test = nil end
end
function notification.Round(num, numDecimalPlaces)
	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end
return notification
