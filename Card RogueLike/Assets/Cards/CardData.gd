
# Unitinfo = [Type, Cost, Damage, Name, Type of atack, Info]
# DefenceInfo = [Type, Cost, Armor, Name, Effect]
# Eventinfo = [Type, Cost, Name, Effect]
enum {Stab, Shield, Run}

const DATA = {
	Stab : 
		["Atack", 1, 3, "Stab", "Melee", "Appear behind the target, deal 3 damage."],
	Shield :
		["Defence", 5, 10, "Shield", "Raise your shield, get 10 armor points"],
	Run :
		["Event", 4, "Run", "Move 5 tiles."],
	}
