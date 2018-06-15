local LegionCommander = {}
LegionCommander.optionEnable = Menu.AddOptionBool({"Hero Specific", "Legion Commander"}, "Enable", false)
LegionCommander.optionKey = Menu.AddKeyOption({"Hero Specific", "Legion Commander"}, "Combo Key", Enum.ButtonCode.KEY_Z)
LegionCommander.optionEnablePressTheAttack = Menu.AddOptionBool({"Hero Specific", "Legion Commander", "Combo"}, "Press the Attack", false)
LegionCommander.optionEnableBlademail = Menu.AddOptionBool({"Hero Specific", "Legion Commander", "Combo"}, "Blade Mail", false)
LegionCommander.optionEnableBlink = Menu.AddOptionBool({"Hero Specific", "Legion Commander", "Combo"}, "Blink", false)
LegionCommander.optionEnableBkb = Menu.AddOptionBool({"Hero Specific", "Legion Commander", "Combo"}, "BKB", false)
LegionCommander.optionEnableOrchid = Menu.AddOptionBool({"Hero Specific", "Legion Commander", "Combo"}, "Orchid", false)
LegionCommander.optionEnableBlood = Menu.AddOptionBool({"Hero Specific", "Legion Commander", "Combo"}, "Bloodthorn", false)
LegionCommander.optionEnableMjolnir = Menu.AddOptionBool({"Hero Specific", "Legion Commander", "Combo"}, "Mjolnir", false)
LegionCommander.optionEnableAlebard = Menu.AddOptionBool({"Hero Specific", "Legion Commander", "Combo"}, "Heavens Halberd", false)
LegionCommander.optionEnableCourage = Menu.AddOptionBool({"Hero Specific", "Legion Commander", "Combo"}, "Medallion of Courage", false)
LegionCommander.optionEnableSolar = Menu.AddOptionBool({"Hero Specific", "Legion Commander", "Combo"}, "Solar Crest", false)
LegionCommander.optionEnableSatanic = Menu.AddOptionBool({"Hero Specific", "Legion Commander", "Combo"}, "Satanic", false)
LegionCommander.optionEnableLotus = Menu.AddOptionBool({"Hero Specific", "Legion Commander", "Combo"}, "Lotus Orb", false)
LegionCommander.optionEnablePoopLinken = Menu.AddOptionBool({"Hero Specific", "Legion Commander", "Poop Linken"}, "Enable", false)
LegionCommander.optionEnablePoopForce = Menu.AddOptionBool({"Hero Specific", "Legion Commander", "Poop Linken"}, "Force Staff", false)
LegionCommander.optionEnablePoopHex = Menu.AddOptionBool({"Hero Specific", "Legion Commander", "Poop Linken"}, "Scythe of Vise", false)
LegionCommander.optionEnablePoopPike = Menu.AddOptionBool({"Hero Specific", "Legion Commander", "Poop Linken"}, "Hurricane Pike", false)
LegionCommander.optionEnablePoopDagon = Menu.AddOptionBool({"Hero Specific", "Legion Commander", "Poop Linken"}, "Dagon", false)
LegionCommander.optionEnablePoopOrchid = Menu.AddOptionBool({"Hero Specific", "Legion Commander", "Poop Linken"}, "Orchid", false)
LegionCommander.optionEnablePoopBlood = Menu.AddOptionBool({"Hero Specific", "Legion Commander", "Poop Linken"}, "Bloodthorn", false)
LegionCommander.optionEnablePoopEul = Menu.AddOptionBool({"Hero Specific", "Legion Commander", "Poop Linken"}, "EuL", false)
LegionCommander.optionEnablePoopHeavens = Menu.AddOptionBool({"Hero Specific", "Legion Commander", "Poop Linken"}, "Heavens Halberd", false)
LegionCommander.optionEnablePoopAbysalBlade = Menu.AddOptionBool({"Hero Specific", "Legion Commander", "Poop Linken"}, "Abyssal Blade", false)
LegionCommander.optionBlinkRange = Menu.AddOptionSlider({"Hero Specific", "Legion Commander"}, "Minimum Blink Range", 201, 1150, 500)
LastTarget = nil
lastAttackTime2 = 0
function LegionCommander.OnUpdate()
  if not Menu.IsEnabled(LegionCommander.optionEnable) or not Engine.IsInGame() or not Heroes.GetLocal() then return end
  local myHero = Heroes.GetLocal()
  if NPC.GetUnitName(myHero) ~= "npc_dota_hero_legion_commander" then return end
  local enemy = Input.GetNearestHeroToCursor(Entity.GetTeamNum(myHero), Enum.TeamType.TEAM_ENEMY)
  if Menu.IsKeyDown(LegionCommander.optionKey) then
    LegionCommander.Combo(myHero, enemy) end
  end
  function LegionCommander.Combo(myHero, enemy)
    local odds = NPC.GetAbilityByIndex(myHero, 0)
    local pressTheAttack = NPC.GetAbilityByIndex(myHero, 1)
    local duel = NPC.GetAbility(myHero, "legion_commander_duel")
    local Blademail = NPC.GetItem(myHero, "item_blade_mail", true)
    local blink = NPC.GetItem(myHero, "item_blink", true)
    local bkb = NPC.GetItem(myHero, "item_black_king_bar", true)
    local blood = NPC.GetItem(myHero, "item_bloodthorn", true)
    local mjolnir = NPC.GetItem(myHero, "item_mjollnir", true)
    local alebarda = NPC.GetItem(myHero, "item_heavens_halberd", true)
    local orchid = NPC.GetItem(myHero, "item_orchid", true)
    local solar = NPC.GetItem(myHero, "item_solar_crest", true)
    local courage = NPC.GetItem(myHero, "item_medallion_of_courage", true)
    local lotus = NPC.GetItem(myHero, "item_lotus_orb", true)
    local satanic = NPC.GetItem(myHero, "item_satanic", true)
    local myMana = NPC.GetMana(myHero)
    if enemy and Entity.IsAlive(enemy) then
      if LegionCommander.heroCanCastSpells(myHero, enemy) == true then
        if not (NPC.HasModifier(myHero, "modifier_item_invisibility_edge_windwalk") or NPC.HasModifier(myHero, "modifier_item_silver_edge_windwalk")) then
          if not NPC.IsEntityInRange(myHero, enemy, Menu.GetValue(LegionCommander.optionBlinkRange)) and Ability.IsCastable(duel, myMana) then
            if pressTheAttack and Menu.IsEnabled(LegionCommander.optionEnablePressTheAttack) and NPC.IsEntityInRange(myHero, enemy, 1199) and Ability.IsCastable(pressTheAttack, myMana) and Ability.IsCastable(duel, myMana) then
              Ability.CastTarget(pressTheAttack, myHero)
              return
            end
            if Blademail and Menu.IsEnabled(LegionCommander.optionEnableBlademail) and NPC.IsEntityInRange(myHero, enemy, 1199) and Ability.IsCastable(Blademail, myMana) and Ability.IsCastable(duel, myMana) then
              Ability.CastNoTarget(Blademail)
              return
            end
            if bkb and Menu.IsEnabled(LegionCommander.optionEnableBkb) and NPC.IsEntityInRange(myHero, enemy, 1199) and Ability.IsCastable(bkb, myMana) and Ability.IsCastable(duel, myMana) then
              Ability.CastNoTarget(bkb)
              return
            end
            if lotus and Menu.IsEnabled(LegionCommander.optionEnableLotus) and NPC.IsEntityInRange(myHero, enemy, 1199) and Ability.IsCastable(lotus, myMana) and Ability.IsCastable(duel, myMana) then
              Ability.CastTarget(lotus, myHero)
              return
            end
            if blink and Ability.IsReady(blink) and NPC.IsEntityInRange(myHero, enemy, 1199) then
              Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy))
              return
            end
            if mjolnir and Menu.IsEnabled(LegionCommander.optionEnableMjolnir) and Ability.IsCastable(mjolnir, myMana) and Ability.IsCastable(duel, myMana) then
              Ability.CastTarget(mjolnir, myHero)
              return
            end
          end
          if NPC.IsEntityInRange(myHero, enemy, 150) then
            if NPC.IsLinkensProtected(enemy) then LegionCommander.PoopLinken(myHero, enemy, duel, myMana) end
            if Blademail and Menu.IsEnabled(LegionCommander.optionEnableBlademail) and Ability.IsCastable(Blademail, myMana) and Ability.IsCastable(duel, myMana) then
              Ability.CastNoTarget(Blademail)
              return
            end
            if pressTheAttack and Menu.IsEnabled(LegionCommander.optionEnablePressTheAttack) and Ability.IsCastable(pressTheAttack, myMana) and Ability.IsCastable(duel, myMana) then
              Ability.CastTarget(pressTheAttack, myHero)
              return
            end
            if lotus and Menu.IsEnabled(LegionCommander.optionEnableLotus) and Ability.IsCastable(lotus, myMana) and Ability.IsCastable(duel, myMana) then
              Ability.CastTarget(lotus, myHero)
              return
            end
            if satanic and Menu.IsEnabled(LegionCommander.optionEnableSatanic) and Ability.IsCastable(satanic, myMana) and Ability.IsCastable(duel, myMana) then
              Ability.CastNoTarget(satanic)
              return
            end
            if bkb and Menu.IsEnabled(LegionCommander.optionEnableBkb) and Ability.IsCastable(bkb, myMana) and Ability.IsCastable(duel, myMana) then
              Ability.CastNoTarget(bkb)
              return
            end
            if blood and not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) and Menu.IsEnabled(LegionCommander.optionEnableBlood) and Ability.IsCastable(blood, myMana) and Ability.IsCastable(duel, myMana) then
              Ability.CastTarget(blood, enemy)
              return
            end
            if mjolnir and Menu.IsEnabled(LegionCommander.optionEnableMjolnir) and Ability.IsCastable(mjolnir, myMana) and Ability.IsCastable(duel, myMana) then
              Ability.CastTarget(mjolnir, myHero)
              return
            end
            if orchid and not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) and Menu.IsEnabled(LegionCommander.optionEnableOrchid) and Ability.IsCastable(orchid, myMana) and Ability.IsCastable(duel, myMana) then
              Ability.CastTarget(orchid, enemy)
              return
            end
            if solar and Menu.IsEnabled(LegionCommander.optionEnableSolar) and Ability.IsCastable(solar, myMana) and Ability.IsCastable(duel, myMana) then
              Ability.CastTarget(solar, enemy)
              return
            end
            if courage and Menu.IsEnabled(LegionCommander.optionEnableCourage) and Ability.IsCastable(courage, myMana) and Ability.IsCastable(duel, myMana) then
              Ability.CastTarget(courage, enemy)
              return
            end
            if alebarda and not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) and Menu.IsEnabled(LegionCommander.optionEnableAlebard) and Ability.IsCastable(alebarda, myMana) and Ability.IsCastable(duel, myMana) then
              Ability.CastTarget(alebarda, enemy)
              return
            end
            if duel and Ability.IsCastable(duel,myMana) and NPC.IsEntityInRange(myHero, enemy, 150) then
              Ability.CastTarget(duel,enemy)
              return
            end
          end
        end
      end
      if duel and Ability.IsReady(duel) and Ability.IsCastable(duel, myMana) and LegionCommander.heroCanCastSpells(myHero, enemy) == true and not NPC.IsEntityInRange(myHero, enemy, 150) then
        local rotationVec = Entity.GetRotation(enemy):GetForward():Normalized()
        local pos = Entity.GetAbsOrigin(enemy) + rotationVec:Scaled(100)
        	LegionCommander.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION", nil, pos)
      else
        	LegionCommander.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
      end
    end
  end
  function LegionCommander.PoopLinken(myHero, enemy, duel, myMana)
    if not Menu.IsEnabled(LegionCommander.optionEnablePoopLinken) then return end
    local Force = NPC.GetItem(myHero, "item_force_staff", true)
    local pike = NPC.GetItem(myHero, "item_hurricane_pike", true)
    local orchid = NPC.GetItem(myHero, "item_orchid", true)
    local blood = NPC.GetItem(myHero, "item_bloodthorn", true)
    local hex = NPC.GetItem(myHero, "item_sheepstick", true)
    local dagon = NPC.GetItem(myHero, "item_dagon", true)
    local eul = NPC.GetItem(myHero, "item_cyclone", true)
    local abyssal = NPC.GetItem(myHero, "item_abyssal_blade", true)
    local alebarda = NPC.GetItem(myHero, "item_heavens_halberd", true)
    if not dagon then
      for i = 2, 5 do
        dagon = NPC.GetItem(myHero, "item_dagon_" .. i, true)
        if dagon then break end
      end
    end

    if duel and Ability.IsCastable(duel, myMana) then
      if alebarda and Menu.IsEnabled(LegionCommander.optionEnablePoopHeavens) and Ability.IsCastable(alebarda, myMana) then
        Ability.CastTarget(alebarda,enemy)
        return
      end 
      if Force and Menu.IsEnabled(LegionCommander.optionEnablePoopForce) and Ability.IsCastable(Force, myMana) then
        Ability.CastTarget(Force, enemy)
        return
      end
      if pike and Menu.IsEnabled(LegionCommander.optionEnablePoopPike) and Ability.IsCastable(pike, myMana) then
        Ability.CastTarget(pike, enemy)
        return
      end
      if orchid and Menu.IsEnabled(LegionCommander.optionEnablePoopOrchid) and Ability.IsCastable(orchid, myMana) then
        Ability.CastTarget(orchid, enemy)
        return
      end
      if blood and Menu.IsEnabled(LegionCommander.optionEnablePoopBlood) and Ability.IsCastable(blood, myMana) then
        Ability.CastTarget(blood, enemy)
        return
      end
      if dagon and Menu.IsEnabled(LegionCommander.optionEnablePoopDagon) and Ability.IsCastable(dagon, myMana) then
        Ability.CastTarget(dagon, enemy)
        return
      end
      if hex and Menu.IsEnabled(LegionCommander.optionEnablePoopHex) and Ability.IsCastable(hex, myMana) then
        Ability.CastTarget(hex, enemy)
        return
      end
      if eul and Menu.IsEnabled(LegionCommander.optionEnablePoopEul) and Ability.IsCastable(eul, myMana) then
        Ability.CastTarget(eul, enemy)
        return
      end
      if abyssal and Menu.IsEnabled(LegionCommander.optionEnablePoopAbysalBlade) and Ability.IsCastable(abyssal, myMana) then
        Ability.CastTarget(abyssal, enemy)
        return
      end
    end
  end
function LegionCommander.heroCanCastSpells(myHero, enemy)

  if not myHero then return false end
  if not Entity.IsAlive(myHero) then return false end

  if NPC.IsSilenced(myHero) then return false end
  if NPC.IsStunned(myHero) then return false end
  if NPC.HasModifier(myHero, "modifier_bashed") then return false end
  if NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVULNERABLE) then return false end
  if NPC.HasModifier(myHero, "modifier_eul_cyclone") then return false end
  if NPC.HasModifier(myHero, "modifier_obsidian_destroyer_astral_imprisonment_prison") then return false end
  if NPC.HasModifier(myHero, "modifier_shadow_demon_disruption") then return false end
  if NPC.HasModifier(myHero, "modifier_invoker_tornado") then return false end
  if NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_HEXED) then return false end
  if NPC.HasModifier(myHero, "modifier_legion_commander_duel") then return false end
  if NPC.HasModifier(myHero, "modifier_axe_berserkers_call") then return false end
  if NPC.HasModifier(myHero, "modifier_winter_wyvern_winters_curse") then return false end
  if NPC.HasModifier(myHero, "modifier_bane_fiends_grip") then return false end
  if NPC.HasModifier(myHero, "modifier_bane_nightmare") then return false end
  if NPC.HasModifier(myHero, "modifier_faceless_void_chronosphere_freeze") then return false end
  if NPC.HasModifier(myHero, "modifier_enigma_black_hole_pull") then return false end
  if NPC.HasModifier(myHero, "modifier_magnataur_reverse_polarity") then return false end
  if NPC.HasModifier(myHero, "modifier_pudge_dismember") then return false end
  if NPC.HasModifier(myHero, "modifier_shadow_shaman_shackles") then return false end
  if NPC.HasModifier(myHero, "modifier_techies_stasis_trap_stunned") then return false end
  if NPC.HasModifier(myHero, "modifier_storm_spirit_electric_vortex_pull") then return false end
  if NPC.HasModifier(myHero, "modifier_tidehunter_ravage") then return false end
  if NPC.HasModifier(myHero, "modifier_windrunner_shackle_shot") then return false end
  if NPC.HasModifier(myHero, "modifier_item_nullifier_mute") then return false end
  if enemy then
    if NPC.HasModifier(enemy, "modifier_item_aeon_disk_buff") then return false end
  end
  return true
end
function LegionCommander.GenericMainAttack(myHero, attackType, target, position)

  if not myHero then return end
  if not target and not position then return end

  if LegionCommander.isHeroChannelling(myHero) == true then return end
  if LegionCommander.heroCanCastItems(myHero) == false then return end
  if LegionCommander.IsInAbilityPhase(myHero) == true then return end
  LegionCommander.GenericAttackIssuer(attackType, target, position, myHero)

end
function LegionCommander.heroCanCastItems(myHero)

  if not myHero then return false end
  if not Entity.IsAlive(myHero) then return false end

  if NPC.IsStunned(myHero) then return false end
  if NPC.HasModifier(myHero, "modifier_bashed") then return false end
  if NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVULNERABLE) then return false end
  if NPC.HasModifier(myHero, "modifier_eul_cyclone") then return false end
  if NPC.HasModifier(myHero, "modifier_obsidian_destroyer_astral_imprisonment_prison") then return false end
  if NPC.HasModifier(myHero, "modifier_shadow_demon_disruption") then return false end
  if NPC.HasModifier(myHero, "modifier_invoker_tornado") then return false end
  if NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_HEXED) then return false end
  if NPC.HasModifier(myHero, "modifier_legion_commander_duel") then return false end
  if NPC.HasModifier(myHero, "modifier_axe_berserkers_call") then return false end
  if NPC.HasModifier(myHero, "modifier_winter_wyvern_winters_curse") then return false end
  if NPC.HasModifier(myHero, "modifier_bane_fiends_grip") then return false end
  if NPC.HasModifier(myHero, "modifier_bane_nightmare") then return false end
  if NPC.HasModifier(myHero, "modifier_faceless_void_chronosphere_freeze") then return false end
  if NPC.HasModifier(myHero, "modifier_enigma_black_hole_pull") then return false end
  if NPC.HasModifier(myHero, "modifier_magnataur_reverse_polarity") then return false end
  if NPC.HasModifier(myHero, "modifier_pudge_dismember") then return false end
  if NPC.HasModifier(myHero, "modifier_shadow_shaman_shackles") then return false end
  if NPC.HasModifier(myHero, "modifier_techies_stasis_trap_stunned") then return false end
  if NPC.HasModifier(myHero, "modifier_storm_spirit_electric_vortex_pull") then return false end
  if NPC.HasModifier(myHero, "modifier_tidehunter_ravage") then return false end
  if NPC.HasModifier(myHero, "modifier_windrunner_shackle_shot") then return false end
  if NPC.HasModifier(myHero, "modifier_item_nullifier_mute") then return false end

  return true
end
function LegionCommander.IsInAbilityPhase(myHero)

  if not myHero then return false end

  local myAbilities = {}

  for i = 0, 10 do
    local ability = NPC.GetAbilityByIndex(myHero, i)
    if ability and Entity.IsAbility(ability) and Ability.GetLevel(ability) > 0 then
      table.insert(myAbilities, ability)
    end
  end

  if #myAbilities < 1 then return false end

  for _, v in ipairs(myAbilities) do
    if v then
      if Ability.IsInAbilityPhase(v) then
        return true
      end
    end
  end

  return false

end
function LegionCommander.isHeroChannelling(myHero)

  if not myHero then return true end

  if NPC.IsChannellingAbility(myHero) then return true end
  if NPC.HasModifier(myHero, "modifier_teleporting") then return true end

  return false

end
function LegionCommander.GenericAttackIssuer(attackType, target, position, npc)

  if not npc then return end
  if not target and not position then return end
  if os.clock() - lastAttackTime2 < 0.5 then return end

  if attackType == "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET" then
    if target ~= nil then
      if target ~= LastTarget then
        Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, target, Vector(0, 0, 0), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, npc)
        LastTarget = target
      end
    end
  end

  if attackType == "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_MOVE" then
    if position ~= nil then
      if not NPC.IsAttacking(npc) or not NPC.IsRunning(npc) then
        if position:__tostring() ~= LastTarget then
          Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_MOVE, target, position, ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, npc)
          LastTarget = position:__tostring()
        end
      end
    end
  end

  if attackType == "Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION" then
    if position ~= nil then
      if position:__tostring() ~= LastTarget then
        Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, position, ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, npc)
        LastTarget = position:__tostring()
      end
    end
  end

  if target ~= nil then
    if target == LastTarget then
      if not NPC.IsAttacking(npc) then
        LastTarget = nil
        lastAttackTime2 = os.clock()
        return
      end
    end
  end

  if position ~= nil then
    if position:__tostring() == LastTarget then
      if not NPC.IsRunning(npc) then
        LastTarget = nil
        lastAttackTime2 = os.clock()
        return
      end
    end
  end
end
return LegionCommander