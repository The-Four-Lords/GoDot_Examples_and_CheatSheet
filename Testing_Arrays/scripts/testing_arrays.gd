extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	var party : Array = []
	
	print("------Empty Array return false------")
	print(party)
	if party:
		print("true")
	else:
		print("false")
	
	
	print("------Filled Array return true------")
	party.append("Pluton")
	print(party)
	if party:
		print("true")
	else:
		print("false")
		
	print("------Find value into array------")
	party.append("Mars")
	party.append("Moon")
	party.append("Earth")
	party.append("Mercury")
	party.append("Sun")
	print(party)
	if "Saturn" in party:
		print ("Saturn appears!")
	if "Moon" in party:
		print ("Moon appears!")
		
	print("------Check array values (foreach/forin)------")
	for member in party:
		print (member)
		
	print("------for in range(1, 3) is [a,b)------")
	for k in range(1, 3):
		print (party[k])
	
