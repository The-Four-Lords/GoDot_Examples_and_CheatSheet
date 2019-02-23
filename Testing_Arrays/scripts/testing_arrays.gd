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
	party.append(4)
	print(party)
	if party:
		print("true")
	else:
		print("false")
		
	print("------Find value into array------")
	party.append("Mars")
	party.append("Moon")
	party.append("Earth")
	print(party)
	if "Saturn" in party:
		print ("Saturn appears!")
	if "Moon" in party:
		print ("Moon appears!")