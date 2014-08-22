/*
Only change stuff in here!
*/
NPCSHOP = NPCSHOP or {}
NPCSHOP.CarSpawn = {}
NPCSHOP.NPCSpawn = {}

/*
Edit stuff below this line
**************************
*/
// Model of the NPC, can be changed to whatever you want, as long as it follows this path of models/<modelname>.mdl
NPCSHOP.NPCModel = "models/Barney.mdl"

//Position of the NPC, in YOUR console, type getpos to get positioning co-ordinates

NPCSHOP.NPCSpawn["rp_downtown_v4c_v3"] = { //Put the actual map name in
	pos = Vector(-2124.552979, -646.710999, -131.968750),
	ang = Angle(4.620006, -88.380402, 0.000000)
}

//Position for the carspawn

NPCSHOP.CarSpawn["rp_downtown_v4c_v3"] = {
	pos = Vector(-2255.105469, -401.511292, -1.598579),
	ang = Angle(13.420005, -91.840012, 0.000000)
}


//Which ULX usergroups are considered "Donator"
NPCSHOP.UserGroups = {"donator", "admin", "superadmin"}

/*=-=-=-=-=-=-=-=-=-=-==--=-=-=-=-=-=HOW TO ADD VEHICLES=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
Add vehicles here.

The jobrestriction is abit wonky, in darkrp you can just do like {TEAM_POLICE, TEAM_CHIEF, TEAM_MAYOR} but it doesn't really work the same here.
Jobrestriction is put with {1,2,3} where 1, 2 and 3 are the team numbers of those teams, in order to get the team numbers, just go ingame, open console
using F11 and type "lua_run_cl print(TEAM_CITIZEN)" which will give you the team number for citizen. You can also get the teamnumber of your current
team by typing "lua_run_cl print(LocalPlayer():Team())"
If you add or remove darkrp teams, this process (in some cases) have to be done again!

NPCSHOP.AddVehicle(name, class, model, price, jobrestriction, donatoronly)
name: Name of the vehicle in the npcshop menu
class: Vehicle-class of the vehicle. Use "rp_getvehicles" to find these.
model: Model which will appear in the npcshop menu
price: How much it costs
jobrestriction: What jobs will be able to buy this (type nil if its available to all jobs)
donatoronly: Is this vehicle only available for donator's? true/false
Display name > Class (rp_getvehicles in console) > Model directory > Price > Jobs > Donator/Not Donator - False = Not Donator, True = Donator
*/
NPCSHOP.AddVehicle("Jeep", "Jeep", "models/buggy.mdl", 75000, nil, false )
NPCSHOP.AddVehicle("GoKart", "sw_gokart", "sw_gokart.mdl", 100000, nil, false )
NPCSHOP.AddVehicle("Freight Truck 1", "sw_truck_v2_001", "models/sligwolf/truck/sw_truck003.mdl", 200000, nil, false )
NPCSHOP.AddVehicle("Freight Truck 2", "sw_truck_v2_002", "models/sligwolf/truck/sw_truck004.mdl", 150000, nil, false )


