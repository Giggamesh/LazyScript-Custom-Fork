lazyWarriorLoad.metadata:updateRevisionFromKeyword("$Revision: 740 $")

function lazyWarriorLoad.LoadParseWarrior()

	lazyWarrior.actions.battleShout        = lazyWarrior.Action:New("battleShout",            "Ability_Warrior_BattleShout")
	lazyWarrior.actions.berserkerRage      = lazyWarrior.Action:New("berserkerRage",          "Spell_Nature_AncestralGuardian")
	lazyWarrior.actions.bloodrage          = lazyWarrior.Action:New("bloodrage",              "Ability_Racial_BloodRage", nil, false)
	lazyWarrior.actions.bloodthirst        = lazyWarrior.Action:New("bloodthirst",            "Spell_Nature_BloodLust")
	lazyWarrior.actions.challengingShout   = lazyWarrior.Action:New("challengingShout",       "Ability_BullRush")
	lazyWarrior.actions.charge             = lazyWarrior.Action:New("charge",                 "Ability_Warrior_Charge", true)
	lazyWarrior.actions.cleave             = lazyWarrior.Action:New("cleave",                 "Ability_Warrior_Cleave")
	lazyWarrior.actions.concussionBlow     = lazyWarrior.Action:New("concussionBlow",         "Ability_ThunderBolt", nil, nil, true)
	lazyWarrior.actions.deathWish          = lazyWarrior.Action:New("deathWish",              "Spell_Shadow_DeathPact")
	lazyWarrior.actions.demoShout          = lazyWarrior.Action:New("demoShout",              "Ability_Warrior_WarCry", nil, nil, true)
	lazyWarrior.actions.disarm             = lazyWarrior.Action:New("disarm",                 "Ability_Warrior_Disarm", nil, nil, true)
	lazyWarrior.actions.execute            = lazyWarrior.Action:New("execute",                "INV_Sword_48")
	lazyWarrior.actions.fj                 = lazyWarrior.Action:New("fj",                     "Ability_Warrior_Riposte")
	lazyWarrior.actions.hamstring          = lazyWarrior.Action:New("hamstring",              "Ability_ShockWave")
	lazyWarrior.actions.heroicStrike       = lazyWarrior.Action:New("heroicStrike",           "Ability_Rogue_Ambush")
	lazyWarrior.actions.intercept          = lazyWarrior.Action:New("intercept",              "Ability_Rogue_Sprint", nil, nil, true)
	lazyWarrior.actions.intervene          = lazyWarrior.Action:New("intervene",              "Ability_Warrior_Intervene")
	lazyWarrior.actions.intimidatingShout  = lazyWarrior.Action:New("intimidatingShout",      "Ability_GolemThunderClap")
	lazyWarrior.actions.lastStand          = lazyWarrior.Action:New("lastStand",              "Spell_Holy_AshesToAshes")
	lazyWarrior.actions.mockingBlow        = lazyWarrior.Action:New("mockingBlow",            "Ability_Warrior_PunishingBlow")
	lazyWarrior.actions.mortalStrike       = lazyWarrior.Action:New("mortalStrike",           "Ability_Warrior_SavageBlow")
	lazyWarrior.actions.overpower          = lazyWarrior.Action:New("overpower",              "Ability_MeleeDamage", nil, nil, true)
	lazyWarrior.actions.piercingHowl       = lazyWarrior.Action:New("piercingHowl",           "Spell_Shadow_DeathScream")
	lazyWarrior.actions.pummel             = lazyWarrior.Action:New("pummel",                 "INV_Gauntlets_04", nil, nil, true)
	lazyWarrior.actions.recklessness       = lazyWarrior.Action:New("recklessness",           "Ability_CriticalStrike")
	lazyWarrior.actions.rend               = lazyWarrior.Action:New("rend",                   "Ability_Gouge")
	lazyWarrior.actions.retaliation        = lazyWarrior.Action:New("retaliation",            "Ability_Warrior_Challange")
	lazyWarrior.actions.revenge            = lazyWarrior.Action:New("revenge",                "Ability_Warrior_Revenge")
	lazyWarrior.actions.shieldBash         = lazyWarrior.Action:New("shieldBash",             "Ability_Warrior_ShieldBash", true)
	lazyWarrior.actions.shieldBlock        = lazyWarrior.Action:New("shieldBlock",            "Ability_Defend", nil, false, true)
	lazyWarrior.actions.shieldSlam         = lazyWarrior.Action:New("shieldSlam",             "INV_Shield_05")
	lazyWarrior.actions.shieldWall         = lazyWarrior.Action:New("shieldWall",             "Ability_Warrior_ShieldWall")
	lazyWarrior.actions.slam               = lazyWarrior.Action:New("slam",                   "Ability_Warrior_DecisiveStrike_New")
	lazyWarrior.actions.sunder             = lazyWarrior.Action:New("sunder",                 "Ability_Warrior_Sunder")
	lazyWarrior.actions.sweepingStrikes    = lazyWarrior.Action:New("sweepingStrikes",        "Ability_Rogue_SliceDice")
	lazyWarrior.actions.taunt              = lazyWarrior.Action:New("taunt",                  "Spell_Nature_Reincarnation")
	lazyWarrior.actions.thunderClap        = lazyWarrior.Action:New("thunderClap",            "Spell_Nature_ThunderClap")
	lazyWarrior.actions.whirlwind          = lazyWarrior.Action:New("whirlwind",              "Ability_Whirlwind")

	lazyWarrior.shapeshift.battle          = lazyWarrior.ShapeshiftForm:New("battle",         "Ability_Warrior_OffensiveStance", false)
	lazyWarrior.shapeshift.berserk         = lazyWarrior.ShapeshiftForm:New("berserk",        "Ability_Racial_Avatar", false)
	lazyWarrior.shapeshift.defensive       = lazyWarrior.ShapeshiftForm:New("defensive",      "Ability_Warrior_DefensiveStance", false)




	-- Special Warrior actions
	-------------------------
	-- Only include actions that require additional implicit conditions or non-standard action entries
	-- e.g. lazyWarrior.comboActions.<actionName> or lazyWarrior.items.<itemName>, otherwise an entry in
	-- the list above should be sufficient.


	-- Shapeshift actions (AKA stances)
	function lazyWarrior.bitParsers.battle(bit, actions, masks)
		if (not lazyWarrior.rebit(bit, lazyWarrior.shapeshift.battle.codePattern)) then
			return false
		end

		table.insert(actions, lazyWarrior.shapeshift.battle)
		return true
	end

	function lazyWarrior.bitParsers.berserk(bit, actions, masks)
		if (not lazyWarrior.rebit(bit, lazyWarrior.shapeshift.berserk.codePattern)) then
			return false
		end

		table.insert(actions, lazyWarrior.shapeshift.berserk)
		return true
	end

	function lazyWarrior.bitParsers.defensive(bit, actions, masks)
		if (not lazyWarrior.rebit(bit, lazyWarrior.shapeshift.defensive.codePattern)) then
			return false
		end

		table.insert(actions, lazyWarrior.shapeshift.defensive)
		return true
	end



	-- Simple Warrior specific masks
	-------------------------------
	-- These masks do not require parameters and return the check directly so we can omit the function
	--  call and just refer to the mask by name i.e. lazyWarrior.masks.<functionName> instead of
	-- lazyWarrior.masks.<functionName>().
	-- I try to keep the mask and the bitParser that refers to said mask together for ease
	-- of reading.

	-- NONE

	-- Complex Warrior masks
	-----------------------
	-- These are masks which require additional parameters or have a structure optimized for run-time
	-- efficiency. The mask function must be executed e.g. lazyWarrior.masks.<functionName>(parameters).
	-- The portion of the code that needs to be executed when the button is pressed should appear within
	-- "return function() ... end" inside the mask function, everything else will be evaluated at
	-- the time that the mask is parsed.

	function lazyWarrior.masks.IsBloodthirstKillShot(goalPct, bloodFuryTrue)
		return function(sayNothing)
			local targetMaxHP = MobHealth_GetTargetMaxHP()
			if not targetMaxHP then
				return false
			end

			local targethp = 0
			targetHp = MobHealth_GetTargetMaxHP() * (goalPct / 100)
			local currentHp = lazyWarrior.masks.GetUnitHealth("target", false, false, sayNothing)

			if not currentHp then
				return false
			end

			local base, posBuff, negBuff = UnitAttackPower("player");
			if (bloodFuryTrue) then
				base = base * 1.25;
			end
			local bloodthirstDamage = (base + posBuff + negBuff) * 0.45;

			if ((currentHp - bloodthirstDamage) <= targethp) then
				lazyWarrior.d(WARRIOR_EARLY_BLOODTHIRST)
				return true
				else
				return false
			end
		end
	end

	function lazyWarrior.bitParsers.ifBloodthirstKillShot(bit, actions, masks)
		if (not lazyWarrior.rebit(bit, "^if(Fury)?BloodthirstKillShot(%d?%d?%d?)(%%hp)?$")) then
			return false
		end

		local goalPct = 0
		local bloodFuryTrue = (lazyWarrior.match1 == "Fury")
		if (lazyWarrior.match2 ~= "") then
			goalPct = tonumber(lazyWarrior.match2)
		end

		table.insert(masks, lazyWarrior.masks.HaveTarget)
		table.insert(masks, lazyWarrior.masks.IsBloodthirstKillShot(goalPct, bloodFuryTrue))
		return true
	end


	function lazyWarrior.masks.IsStance(stance)
		return function(sayNothing)
			local activeStance = lazyWarrior.FindActiveShapeshift()

			if not activeStance then
				return false
			end

			return (GetShapeshiftFormInfo(activeStance) == lazyWarrior.shapeshift[stance].texture)
		end
	end

	function lazyWarrior.bitParsers.ifStance(bit, actions, masks)
		if (not lazyWarrior.rebit(bit, "^if(Not)?Stance=(.+)$")) then
			return false
		end
		local negate = lazyWarrior.negate1()
		local stances = string.lower(lazyWarrior.match2)

		local subMasks = {}
		for stance in string.gfind(stances, "[^,]+") do
			if stance ~= "battle" and stance ~= "defensive" and stance ~= "berserk" then
				lazyWarrior.p(WARRIOR_STANCE..stance..WARRIOR_NOT_RECOGNISED)
				return nil
			end

			table.insert(subMasks, lazyWarrior.masks.IsStance(stance))
		end
		table.insert(masks, lazyWarrior.orWrapper(subMasks, negate))
		return true
	end
	
	-- Custom Mask: Sunderable
    -- Returns true if another Sunder Armor stack would reduce the target's armor by its full amount
    -- Uses UnitResistance("target", 0) which returns current effective armor (with debuffs applied)
   
    -- Sunder Armor reduction per rank (Vanilla 1.12 values)
    local sunderReductionByRank = {
      [1] = 90,   -- Rank 1, learned at level 10
      [2] = 180,  -- Rank 2, learned at level 22
      [3] = 270,  -- Rank 3, learned at level 34
      [4] = 360,  -- Rank 4, learned at level 46
      [5] = 450   -- Rank 5, learned at level 58
    }
   
    -- Function to get the current sunder reduction value based on player's level (highest available rank)
    function lazyWarrior.masks.GetSunderReduction()
      local level = UnitLevel("player")
      local rank = 1
      if level >= 58 then
        rank = 5
      elseif level >= 46 then
        rank = 4
      elseif level >= 34 then
        rank = 3
      elseif level >= 22 then
        rank = 2
      elseif level >= 10 then
        rank = 1
      end
      return sunderReductionByRank[rank]
    end
   
    -- Function to get the number of sunder stacks on the target (using 1.12 API: texture and count)
    function lazyWarrior.masks.GetSunderStacks()
      if not UnitExists("target") then return 0 end
      for i = 1, 16 do
        local texture, count = UnitDebuff("target", i)
        if texture and string.find(texture, "Ability_Warrior_Sunder") then
          return count or 0
        end
      end
      return 0
    end
   
    -- Main mask for the condition (called during evaluation)
    function lazyWarrior.masks.isSunderable(gtLtEq, val, wantPct)
	  return function()
      -- Basic checks
      if not UnitExists("target") or UnitIsDeadOrGhost("target") or not UnitCanAttack("player", "target") then
        return false
      end
   
      local currentArmor = UnitResistance("target", 0) or 0
      local stacks = lazyWarrior.masks.GetSunderStacks()
      local reductionPerStack = lazyWarrior.masks.GetSunderReduction()
	   
	  if stacks >= 5 then
		return false
	  end
	  
	  if (wantPct) then
		local baseArmor = currentArmor + (reductionPerStack * stacks)
		if (baseArmor <= 0) then
			return false
		end
		
		local percentReduction = (100 - ((currentArmor / baseArmor) * 100))
		
		if (gtLtEq == ">") then
			return (percentReduction > val)
		elseif (gtLtEq == "=") then
			return (percentReduction == val)
		else
			return (percentReduction < val)
		end
	  else 
		if (gtLtEq == ">") then
			return (currentArmor > val)
		elseif (gtLtEq == "=") then
			return (currentArmor == val)
		else
			return (currentArmor < val)
		end
	  end
	end  
   
      -- Can't apply more than 5 stacks
    --  if stacks >= 5 then
    --    return false  -- Already max stacks → cannot reduce further
    --  end
   
      -- If armor is already 0 or below the next full reduction, no point
   --   if percentReduction >= 0.4 then
   --     return false  -- Next sunder would be partial or do nothing
    --  end
   
      -- Otherwise: we can apply a full-value sunder
    --  return true
    end
	
	function lazyWarrior.bitParsers.ifArmorReduction(bit, actions, masks)
		if (not lazyWarrior.rebit(bit, "^ifArmorReduction([<=>])(%d+)(%%?)$")) then
			return false
		end
		local gtLtEq = lazyScript.match1
		local val = tonumber(lazyScript.match2)
		local wantPct = (lazyScript.match3 == "%")
		table.insert(masks, lazyWarrior.masks.isSunderable(gtLtEq, val, wantPct))
		return true
	end

	function lazyWarrior.pseudoActions.stopCasting:IsUsable(sayNothing)
		return true
	end

	-- checks to see if a shield is equipped (get from Zorlen)
	function lazyWarrior.masks.isShieldEquipped()
		local slot = GetInventorySlotInfo("SecondaryHandSlot")
		local link = GetInventoryItemLink("player", slot)
		if link then
			local id, name = lazyScript.IdAndNameFromLink(link)
			local _, _, _, _, _, itemSubType = GetItemInfo(id)
			if itemSubType == ITEM_SUBTYPE_SHIELDS then
				if GetInventoryItemBroken("player", slot) then
					return false
				end
				return true
			end
		end
		return false
	end

	function lazyScript.bitParsers.ifShieldEquipped(bit, actions, masks)
		if (not lazyScript.rebit(bit, "^if(Not)?ShieldEquipped$")) then
			return false
		end
		local negate = lazyScript.negate1()
		table.insert(masks, lazyScript.negWrapper(lazyWarrior.masks.isShieldEquipped, negate))
		return true
	end
	
-- FIXED: Hook BOTH UseAction (main for bar spells) + CastSpellByName (fallback/no bar)
-- Replace your ENTIRE appended code in ParseWarrior.lua with this (includes slash fix)

-- Sunder Armor Counter - FINAL WORKING VERSION (Combat Log Method - Reliable in Turtle WoW)
-- Replace your entire appended code with this.
-- This uses the actual combat log message in Turtle WoW: "Target is affected by Sunder Armor."
-- But we only count it if it's YOUR spell (by checking if you are currently casting/using Sunder)





	-- Warrior utility functions
	---------------------------
	-- These are functions that are never called by a form but are used within other mask functions.
	-- Technically, they are not masks, but we'll leave them alone for now.

	-- NONE

	-- Custom AutoAttack
	--------------------
	-- Finally, include any modifications to the autoAttack function. If this omitted, lazyWarrior
	-- will use the default auto-attack behaviour in Parse.lua. The function must be called
	-- CustomAutoAttackMode.



	-- Custom command line arguments
	--------------------------------



	-- Custom minimap entries
	-------------------------



	-- Default forms
	----------------
	-- Specify any default forms if they exist.

	lazyWarrior.defaultForms = {}

	lazyWarrior.defaultForms.tank = {
		"berserkerRage-ifPlayerIs=Feared",
		"use=Major Healing Potion-ifInCombat-ifPlayer<10%hp",
		"battleShout-ifNotInCombat-ifNotHistory<5=battleShout",
		"stopAll-ifTargetIs=CCd",
		"taunt-ifNotTargetOfTarget-ifTargetHasTarget",
		"mockingBlow-ifNotTargetOfTarget-ifTargetHasTarget",
		"battleShout-ifNotPlayerHasBuff=battleShout",
		"demoShout-ifNotTargetHasDebuff=demoShout",
		"sunder-ifTargetHasDebuff<5=sunder",
		"heroicStrike",
	}

	-- Custom data
	---------------
	-- Place any other tables of data unique to the class here.


	-- Custom initialization
	------------------------


	-- Custom help text
	-------------------
	-- Place any help text that pertains to class specific masks here.
	-- Because of formatting restrictions we place this last so that it does not mess up the indentation.
	function lazyWarrior.CustomHelp()
		return [[
			<P>-if[Fury]BloodthirstKillShot[XX%hp]</P>
			<P>-if[Not]Stance={battle,berserk,defensive}</P>
			<P>-if[Not]ShieldEquipped</P>
			<P>-if[Not]Moving |cffffff00(need MonkeySpeed)|r</P>
			<P>-ifArmorReduction{&lt;,=,&gt;}XX[%]armor</P>
		]]
	end

end -- lazyWarriorLoad.LoadParseWarrior()