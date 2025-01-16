if item_available("Crepuscular Knife") then
	gear.offhand_dagger = "Crepuscular Knife"	
else
	gear.offhand_dagger = "Gleti's Knife"
end

if item_available("Skulk. Earring +2") then
	gear.empy_earring = "Skulk. Earring +2"
elseif item_available("Skulk. Earring +1") then
	gear.empy_earring = "Skulk. Earring +1"
elseif item_available("Skulker's Earring") then
	gear.empy_earring = "Skulker's Earring"
else
	gear.empy_earring = "Telos Earring"
end

if item_available("Skulker's Poulaines +3") then
	gear.jse_empy_feet = "Skulker's Poulaines +3"
elseif item_available("Skulker's Poulaines +2") then
	gear.jse_empy_feet = "Skulker's Poulaines +2"
else
	gear.jse_empy_feet = "Skulker's Poulaines +1"
end

sets.TreasureHunter = set_combine(sets.TreasureHunterTHF, {hands="Plunderer's Armlets +3", waist="Chaac Belt", feet=gear.jse_empy_feet})
sets.Kiting = {feet="Jute Boots +1"}

sets.buff.Doom = set_combine(sets.buff.Doom, {})

sets.buff['Sneak Attack'] = {}
sets.buff['Trick Attack'] = {}
	
-- Extra Melee sets.  Apply these on top of melee sets.
sets.Knockback = {}
sets.Ambush = {}

-- Weapons sets
sets.weapons.Aeneas = {main="Aeneas",sub=gear.offhand_dagger}
sets.weapons.TH = {main="Aeneas",sub="Taming Sari"}
sets.weapons.Naegling = {main="Naegling",sub=gear.offhand_dagger}
sets.weapons.KajaKnuckles = {main="Karambit",sub=empty}

-- Actions we want to use to tag TH.
sets.precast.Step = sets.TreasureHunter
sets.precast.JA['Violent Flourish'] = sets.TreasureHunter
sets.precast.JA['Animated Flourish'] = sets.TreasureHunter
sets.precast.JA.Provoke = sets.TreasureHunter

--------------------------------------
-- Precast sets
--------------------------------------
sets.precast.JA['Collaborator'] = {}
sets.precast.JA['Accomplice'] = {}
sets.precast.JA['Flee'] = {}
sets.precast.JA['Hide'] = {}
sets.precast.JA['Conspirator'] = {}
sets.precast.JA['Steal'] = {}
sets.precast.JA['Mug'] = {}
sets.precast.JA['Despoil'] = {feet=gear.jse_empy_feet}
sets.precast.JA['Perfect Dodge'] = {hands="Plunderer's Armlets +3"}
sets.precast.JA['Feint'] = {}

sets.precast.JA['Sneak Attack'] = sets.buff['Sneak Attack']
sets.precast.JA['Trick Attack'] = sets.buff['Trick Attack']

sets.precast.Waltz = {}
sets.Self_Waltz = {}
sets.precast.Waltz['Healing Waltz'] = {}

-- Fast cast sets for spells
sets.precast.FC = {
	ammo="Sapience Orb",
	head={ name="Nyame Helm", augments={'Path: B',}},
	body="Adhemar Jacket +1",
	hands={ name="Nyame Gauntlets", augments={'Path: B',}},
	legs={ name="Rawhide Trousers", augments={'MP+50','"Fast Cast"+5','"Refresh"+1',}},
	feet={ name="Nyame Sollerets", augments={'Path: B',}},
	neck="Baetyl Pendant",
	waist="Fotia Belt",
	left_ear="Loquac. Earring",
	right_ear="Etiolation Earring",
	left_ring=gear.weather_ring,
	right_ring="Medada's Ring",
	back=gear.jse_tp_back,
}

sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {neck="Magoraga Beads"})

-- Weaponskill sets
sets.precast.WS = {
	ammo="Oshasha's Treatise",
	head={ name="Nyame Helm", augments={'Path: B',}},
	body={ name="Nyame Mail", augments={'Path: B',}},
	hands={ name="Nyame Gauntlets", augments={'Path: B',}},
	legs={ name="Nyame Flanchard", augments={'Path: B',}},
	feet={ name="Nyame Sollerets", augments={'Path: B',}},
	neck="Fotia Gorget",
	waist="Fotia Belt",
	left_ear="Ishvara Earring",
	right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
	left_ring="Regal Ring",
	right_ring="Beithir Ring",
	back=gear.jse_wsd_back,
}

sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast.WS, {})
sets.precast.WS['Aeolian Edge'].TH = set_combine(sets.precast.WS['Aeolian Edge'], sets.TreasureHunter)

sets.precast.RA = {
	head="Taeon Chapeau",					-- 10
	feet="Meghanada Jambeaux +2",			-- 10
	waist="Yemaya Belt",
	left_ring="Crepuscular Ring",			-- 3
}

-- Swap to these on Moonshade using WS if at 3000 TP
sets.MaxTP = {ear1="Ishvara Earring",ear2="Telos Earring"}
sets.AccMaxTP = {ear1="Ishvara Earring",ear2="Telos Earring"}

--------------------------------------
-- Midcast sets
--------------------------------------

sets.midcast.FastRecast = sets.precast.FC

sets.midcast.Utsusemi = set_combine(sets.midcast.FastRecast, {})
sets.midcast.Dia = set_combine(sets.midcast.FastRecast, sets.TreasureHunter)
sets.midcast.Diaga = set_combine(sets.midcast.FastRecast, sets.TreasureHunter)
sets.midcast['Dia II'] = set_combine(sets.midcast.FastRecast, sets.TreasureHunter)
sets.midcast.Bio = set_combine(sets.midcast.FastRecast, sets.TreasureHunter)
sets.midcast['Bio II'] = set_combine(sets.midcast.FastRecast, sets.TreasureHunter)

-- Ranged gear
sets.midcast.RA = {
	head="Malignance Chapeau",
	body="Malignance Tabard",
	hands="Malignance Gloves",
	legs="Malignance Tights",
	feet="Malignance Boots",
	neck="Iskur Gorget",
	waist="Yemaya Belt",
	left_ear="Telos Earring",
	right_ear="Crep. Earring",
	left_ring="Dingir Ring",
	right_ring="Ilabrat Ring",
	back=gear.jse_tp_back,
}

 --------------------------------------
-- Idle/resting/defense sets
--------------------------------------

sets.idle = {
	ammo=gear.dt_ammo,
	head="Null Masque",
	body="Gleti's Cuirass",
	hands="Gleti's Gauntlets",
	legs="Malignance Tights",
	feet="Malignance Boots",
	neck="Sanctity Necklace",
	waist=gear.dt_waist,
	left_ear="Infused Earring",
	right_ear="Etiolation Earring",
	left_ring="Defending Ring",
	right_ring="Gelatinous Ring +1",
	back=gear.jse_tp_back,
}

sets.idle.DT = set_combine(sets.idle, {
	head="Null Masque",
	legs="Nyame Flanchard",
	feet="Nyame Sollerets",
	neck="Loricate Torque +1",
})

sets.idle.Town = set_combine(sets.idle, {
	head="Nyame Helm",
	body="Nyame Mail",
	hands="Nyame Gauntlets",
	legs="Nyame Flanchard",
	feet="Nyame Sollerets",
})

sets.DayIdle = {}
sets.NightIdle = {}

-- Defense sets
sets.defense.PDT = {
	ammo=gear.dt_ammo,
	head="Nyame Helm",
	body="Adamantite Armor",
	hands="Nyame Gauntlets",
	legs="Nyame Flanchard",
	feet="Nyame Sollerets",
	neck="Loricate Torque +1",
	waist=gear.dt_waist,
	left_ear="Odnowa Earring +1",
	right_ear="Etiolation Earring",
	left_ring="Defending Ring",
	right_ring="Gelatinous Ring +1",
	back=gear.dt_moon_back,
}

sets.defense.MDT = sets.defense.PDT
sets.defense.MEVA = sets.defense.PDT

sets.idle.Weak = sets.defense.PDT
sets.resting = sets.idle	
--------------------------------------
-- Melee sets
--------------------------------------

-- Normal melee group
sets.engaged = {
	ammo="Coiste Bodhar",
	head="Malignance Chapeau",
	body="Malignance Tabard",
	hands="Malignance Gloves",
	legs="Malignance Tights",
	feet="Malignance Boots",
	neck="Combatant's Torque",
	waist="Reiki Yotai",
	left_ear="Sherida Earring",
	right_ear=gear.empy_earring,
	left_ring="Chirich Ring +1",
	right_ring="Gere Ring",
	back=gear.jse_tp_back,
}
	
sets.engaged.DT ={
	ammo=gear.dt_ammo,
	head="Nyame Helm",
	body="Malignance Tabard",
	hands="Malignance Gloves",
	legs="Malignance Tights",
	feet="Nyame Sollerets",
	neck="Combatant's Torque",
	waist="Reiki Yotai",
	left_ear="Sherida Earring",
	right_ear=gear.empy_earring,
	left_ring="Chirich Ring +1",
	right_ring="Gere Ring",
	back=gear.jse_tp_back,
}
