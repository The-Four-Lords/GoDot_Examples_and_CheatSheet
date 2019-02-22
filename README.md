# GoDot_Examples_and_CheatSheet
A bunch of GoDot examples to play and test the engine elements and tools. Documentation and cheatsheet.

## 1. Install GoDot
Install GoDot is possible from Steam application or from [GoDot 3.0 download](https://godotengine.org/download/windows) web. In the web appears the normal version (GDScript) and mono version (C# support).<br>
Currently a beta version that support typed programming can be downloaded from [GoDot 3.1 download](https://downloads.tuxfamily.org/godotengine/3.1/beta1/)<br>
GoDot use a own language based in Python, it is GDScript:
* GDScript is optimized for run loops
* GDScript has a similar sintax than Python
* GDScript is a dynamically typed language (easy and fast)
* GDScript no is a compiled language
* GDscript is written in C ++, it has a high performance

## 2. Variables
The variables are a symbol/tag to represent a number value, text, sprite(image) or object, are declared with **var** keyword.<br>
A variable is a tag where set values or a container.<br>
According to convention of programmers they are written in lowercase and separating words by low bar.
```gdscript
var variable_name : variable_type = variable_value #typed
var variable_name = variable_value #dynamic
```
If a variable that points to a primitive is declared and then another variable with the same value is created, a copy will be made.<br>
If you declare a variable that points to an object and then create another object pointing to the same object, a reference will be made.<br>
If you define (in a typed way) a variable of a type then it can not be changed.<br>
GDScript can be dynamic or typed according to the variables declared.<br>
**GDScript can interpret the type directly, with the ":" character.**<br>
```gdscript
var variable_name : = 100
var variable_name : int = 100
```

|FEATURES | DYNAMIC | TYPED|
|---------|:-------:|:----:|
|Fast implementation | + | - |
|Small apps | + | - |
|Error control | - | + |
|Scalability | - | + |
|Big apps | - | + |


## 3. Constants
Constants are declared with **const** keyword, by dynamic or typed way.<br>
According to convention of programmers they are written in capital letters and separating words by low bar.
```gdscript
const CONSTANT_NAME = value #dynamic
const CONSTANT_NAME : type = value #typed
const CONSTANT_NAME : = value #typed
```

## 4. Operations and operators
It is popssible use common math operators like: **+ - * / %** (module operator like Java).<br
The operator + is used to string concatenation too.<br>
There are special operator for binary data.<br>

## 5. Comparing values
In GDScript there are comparators like Java language: **> < == >= <= !=**<br>
To concatenate comparators it is possible use **and** and **or** keywords.<br>
With comparators is possible build conditions used in control structures.

## 6. Structure controls
### 6.1. If structure control
Used to control the program flow
```gdscript
if condition:
  "code"
elif otherCondition:
  "otherCode"
else:
  "otherOne"
```
### 6.2. Loop structure control
The **for in** loop behavior is similar to the Java **for each** behavior.
```gdscript
for element in list:
  if element.dead:
    continue #got to the next loop
   element.experience += earned_experience
   
for item in item_list:
  if item.isFire:
    break #go out the loop
 print("The fire element was found!")
```
The **continue** keyword void the next code to the loop's end and go to the next iteration.<br>
The **break** keyword stop the loop and go out to the next code after loop.

## 7. Evaluating like booleans
An empty string is interpreted as a false (like JS).<br>
A number that is 0 is interpreted as a false (like JS).<br>
Even if this is allowed, it is advisable to make the sentences more readable by making them explicit.<br>
A sentence is denied by typing the keyword "not" in front of it.<br>
```gdscript
var character_name : = ""
if not character_name: #true
  ...
var active_count : = 0
if active_count: #false
  ...
```

## 8. Values lists
The lists in GDScript are defnied like **Array** or with **[]**.<br>
In GDScript is possible build list with several values type
```gdscript
var empty_list : Array = [] #typed
var other_empty_list = [] #dynamic
var other_list : = [3, 5.0, "name", []]
```
GDScript interprets the arrays within the conditions according to their value
```gdscript
var party_A : = [] #false in a condition
var party_B : = [2, "chips"] #true in a condition
var my_var = 2
var my_other_var = "Moon"
if my var in party_B #true
  do_things()
elif my_other_var in party_B #false
  do_other_things()
```

## 9. Dictionaries
In GDScript, dictionary is a element type compound by **key** and **value** pairs. It is similar to JSON structure and JS object as the **:** keyword can be changed by **=** to set values to the keys.
Dictionaries are so useful to store many data with indexes in the script.<br>
The keyword **{}** are used to define dictionaries.<br>
```gdscript
var my_dictonary : = {key : value, key : value}
var other_dictionary : = {"name" : "Excalibur", "damage" : 150} #with : keyword
var similar_dictionary : = {"name" = "Excalibur", "damage" = 150} #with = keyword
var big_dictionary : = {
              "promp" : ["a name", "a place"],
              "story" : "%s go to %s tomorrow"
}
```
It is possible add new elements to dictionaries like new fields to JS object, setting the new field name and value.
```gdscript
var car_dictionary : = {
              "firm" : "Ferrari",
              "name" : "F40",
              "model" : "Shine"
}
car_dictionary.cv = 500 #new field cv inside
car_dictionary["doors"] = 5 #new field doors inside
```

## 10. Objects
The objects let store variables and functions inside reusable container. The object variables determine how is the objet while the function determine the object behavior, the **func** key word is used to define functions.<br>
YOu build objects from a class throuhg instantiation, a process that takes a plan and produces a concrete object yo can work with:
```gdscript
var object : = Object.new()
```

## 11. Classes
The objects that are created are of a certain class. To create a new class you must create a **.gd** file<br>
You can inherit from existing classes using the keyword **extended** at the beginning of the **.gd** file code<br>
The structure is similar to a Java class (var variables, const constants and func functions)
```gdscript
extends Node2D

var MAX_HEALTH = 100
var MAX_MANA = 50
var health
var mana

#Called when node is created
func _ready():
  health = MAX_HEALTH
  mana = MAX_MANA

func _trhow_spell(spell_name):
  if (spell_name == "expelliarmus"):
    mana -= 20    
```

## 12. CheatSheet
### Elements
Element | Description
--------|------------
TextureRect | Draws a sprite or a texture inside a User Interface. The texture can tile or not. Use TextureRect to draw icons and sprites in your User Interfaces. To create panels and menu boxes, take a look at NinePatchFrame. Its Stretch Mode property controls the texture’s scale and placement. It can scale, tile and stay centered inside its bounding rectangle. TextureRect is one of the 5 most common nodes to create game UI
RichTextLabel | Label that displays rich text. Rich text can contain custom text, fonts, images and some basic formatting. The label manages these as an internal tag stack. It also adapts itself to given width/heights
LineEdit | Control that provides single line string editing.
TextureButton | Texture-based button. Supports Pressed, Hover, Disabled and Focused states. TextureButton has the same functionality as Button, except it uses sprites instead of Godot’s Theme resource. It is faster to create, but it doesn’t support localization like more complex Controls. The Normal state’s texture is required. Others are optional

### Functions
Function | Description
---------|------------
\_enter\_tree() | When the node enters the \_Scene Tree\_, it becomes active and  this function is called. Children nodes have not entered the active scene yet. In general, it's better to use \_ready() for most cases
\_ready() | This function is called after \_enter\_tree, but it ensures that all children nodes have also entered the \_Scene Tree\_, and became active
\_exit\_tree() | When the node exits the \_Scene Tree\_, this function is called. Children nodes have all exited the \_Scene Tree\_ at this point and all became inactive
\_process(delta) | This function is called every frame
\_physics\_process(delta) | This is called every physics frame
print(message) | Show the message into GoDot console
max(a,b) | return the maximum value between a and b
min(a,b) | return the minimum value between a and b
randomize() | Randomizes the seed (or the internal state) of the random number generator. Current implementation reseeds using a number based on time.
randi() | Returns a random 32 bit integer. Use remainder to obtain a random value between 0 and N
queue_free() | On node, free it from the scene
get_tree().reload_current_scene() | Reload the current scene
file.open(fileName, MODE) | Try open the file in the mode "MODE". Return the action code (0 is success)
file.get_as_text() | Return the file content as text
parse_json(text) | Return the text enter like json object

### Hot Keys
Function | Description
:-------:|------------
Crl+shift+F11 | Maximizes the script edition area
Ctrl+a | Add new object/node
F6 | Run the curren scene
F5 | Run the main project scene
F4 | Open GoDot API dialog
