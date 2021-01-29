# GoDot_Examples_and_CheatSheet
A bunch of GoDot examples to play and test the engine elements and tools. Documentation and cheatsheet.

## Table of contents
- [GoDot_Examples_and_CheatSheet](#godot_examples_and_cheatsheet)
  - [Table of contents](#table-of-contents)
  - [1. Install GoDot](#1-install-godot)
  - [2. Variables](#2-variables)
  - [3. Constants](#3-constants)
  - [4. Operations and operators](#4-operations-and-operators)
  - [5. Comparing values](#5-comparing-values)
  - [6. Structure controls](#6-structure-controls)
    - [6.1. If structure control](#61-if-structure-control)
    - [6.2. Loop structure control](#62-loop-structure-control)
  - [7. Evaluating like booleans](#7-evaluating-like-booleans)
  - [8. Values lists](#8-values-lists)
  - [9. Dictionaries](#9-dictionaries)
  - [10. Objects](#10-objects)
  - [11. Classes and Nodes](#11-classes-and-nodes)
    - [11.1. File](#111-file)
    - [11.2. TileSet and TileMap](#112-tileset-and-tilemap)
    - [11.3. Autotiling](#113-autotiling)
  - [12. Exporting projects](#12-exporting-projects)
    - [12.1. From Godot to Android](#121-from-godot-to-android)
  - [13. IDE tools](#13-ide-tools)
    - [13.1. Define inputs](#131-define-inputs)
    - [13.2. Intance scene like node](#132-intance-scene-like-node)
    - [13.3. Singletons](#133-singletons)
    - [13.4. Adding elements](#134-adding-elements)
    - [13.5. Collision Layer and Collision Mask](#135-collision-layer-and-collision-mask)
    - [13.6 Parallax effect](#136-parallax-effect)
    - [13.7 Signals and Groups](#137-signals-and-groups)
  - [14. Good Practices](#14-good-practices)
  - [15. Scene Examples](#15-scene-examples)
    - [15.1. Player 2D](#151-player-2d)
    - [15.2. TileSet](#152-tileset)
    - [15.3. Parallax](#153-parallax)
    - [15.4. Bullet/Lightning element](#154-bulletlightning-element)
    - [15.5. Magical Portal/Vortex](#155-magical-portalvortex)
  - [16. CheatSheet](#16-cheatsheet)
    - [16.1. Scene Elements - Nodes](#161-scene-elements---nodes)
    - [16.2. Classes](#162-classes)
    - [16.3. Relevant Functions and Parameters](#163-relevant-functions-and-parameters)
    - [16.4. Hot Keys](#164-hot-keys)



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

<div align="center">

|FEATURES | DYNAMIC | TYPED|
|---------|:-------:|:----:|
|Fast implementation | + | - |
|Small apps | + | - |
|Error control | - | + |
|Scalability | - | + |
|Big apps | - | + |

</div>

Typed script make the code more handle from the inspector if export the variables.

There are two way for declare a variable:
- **var**, is assigned a value when the script instance is created. At this point the node may not be ready on the scene. Example: Use var to declare variables like primitives, arrays, objects, etc.
```gdscript
var player_words = []
var story = "bla bla bla"
var flag = true
```
- **onready var**, is assigned a value after the node and its siblings entered the tree. Example: Use onready var to declare variable like Nodes (scene objects)
```gdscript
onready var my_label = $MyNode/Label
onready var my_twenn = $MyNode/Tween
```
It is possible modify variables from the inspector, to do this must set **export** keyword to the variable
```gdscript
export var story
```

## 3. Constants
Constants are declared with **const** keyword, by dynamic or typed way.<br>
According to convention of programmers they are written in capital letters and separating words by low bar.
```gdscript
const CONSTANT_NAME = value #dynamic
const CONSTANT_NAME : type = value #typed
const CONSTANT_NAME : = value #typed
```

## 4. Operations and operators
It is popssible use common math operators like: **+ - * / %** (module operator like Java).<br>
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
You build objects from a class throuhg instantiation, a process that takes a plan and produces a concrete object yo can work with:
```gdscript
var object : = Object.new()
```

## 11. Classes and Nodes
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
### 11.1. File
In GoDot it is possible open files used to store data like json files. The main comands to work with files are:
```gdscript
var file = File.new() #create a File object
file.open(filePath, File.READ) #use the File object to open in read mode a file
var text = file.get_as_text() #read the file data like text
var data_json = parse_json(text) #if file is a json it is possible transform to json object with this method
file.close() #close the file
```

### 11.2. TileSet and TileMap
TileMap element is used like scene elements library. For example , It is possible define platforms into a TileSet and load this into TileMap.

**The TileMap will be a elements factory where the TileSet define the elements type**.

To create a TileSet it is necessary create a scene. Define the elements into this secene and when all elements are completed (Sprites+StaticBody2D/RigidBody2D+CollisinShape) transform the scene to TileSet.

<div align="center">

![TileSet strtucture](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/tiles_00.PNG)

</div>


To irregular sprites use CollisionPolygon. Using the top menu can add points to describe the polygon
![TileSet collision](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/tiles_01.PNG)

It is possible duplicate staticBody with collsion to apply to other similar platfomrs. But remenber **reset** the position of staticBody in the transform, on the copied element. The element position is relative from his parent.
![TileSet duplicated staticbody](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/tiles_02_a.PNG)
![TileSet reset position](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/tiles_02_b.PNG)

When all elemnts are completed, transform the scene to TileSet. Scene -> Conver to -> Tileset
<div align="center">

![TileSet collision](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/tiles_03_a.PNG)
![TileSet collision](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/tiles_03_b.PNG)

</div>

To use this TileSet, it must be loaded in a TileMap (factory) into the scene where we want use the TileSet elments.
![TileSet collision](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/tiles_04_a.PNG)
![TileSet collision](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/tiles_04_b.PNG)

### 11.3. Autotiling
It is possible load a sprite sheet map into the TileMap. The previous point shows a TileSet with serveral sprites. This concept is different, is a TileSet with only one sprite, and this sprite is a tiles map.
A TileMap where you can create tiles from sections of the loaded tile map allows you to optimize the performance of the games.
  1. Create a scene with Node2D->Sprite, the sprite must be a tiles map, and convert to TileSet (Tiles.tres). Save the scene too(TileShet.tscn).
  ![Autotile - TileSet](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/autotiles_01.PNG)
  1. Create a scene with a TileMap and load in Tile Set property into TileMap the TileSet previously created
  ![Autotile - Scene with TileMap](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/autotiles_02.PNG)
  3. To create the tiles for design the scene must click on Tile Set properti into TileMap, a new seccion will be open in the IDE.
  ![Autotile -TileSet edit](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/autotiles_03.PNG)
  4. Expand the Edit box, select the TileSet image na click in **New Autotile**
  ![Autotile -TileSet edit](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/autotiles_04.PNG)
  5. A new button **Region** will appears, select the region into the image that you use to define the sprite.
  ![Autotile -TileSet edit](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/autotiles_05.PNG)
  6. With the region selected, can define **Bitmask** for define your tile image. It is important the **Autotile Bitmask** will be 3x3 to define the Bitmask.
  ![Autotile -TileSet edit](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/autotiles_06.PNG)
  7. **Priority** option to define of the different slices selected, the randomize priority. To define the priority must use the edit box previous to the image.
  ![Autotile -TileSet edit](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/autotiles_07.PNG)
  8. In Collision can define the collision shape for the slices.
  ![Autotile -TileSet edit](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/autotiles_08.PNG)

Each of Autotile defined with **New Autotile** option will appear like selectable tile to define your secene
  ![Autotile -TileSet edit](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/autotiles_09.PNG)

## 12. Exporting projects
### 12.1. From Godot to Android
* Install Android Studio
* Start Android Studio to complete the dependency installation
* Install Java JDK
* In Godot, go to: ```Editor > Editor Settings > Export > Android```
* Set the below parameters:
  * Adb: ```C:\Users\your_user\AppData\Local\Android\Sdk\platform-tools\adb.exe```
  * Jarsigner: ```C:\Program Files\Java\jdk-11.0.2\bin\jarsigner.exe```
  * Debug Keystore: ```C:\Users\your_user\.android\.debug.keystore```
    * If the ```.debug.keystore``` is not generated:
      * Open a cmd on Java JDK's bin folder and run: ```keytool -genkey -v -keystore  C:/Users/your_user/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android -keyalg RSA -keysize 2048 -validity 10000 -dname "CN=Android Debug,O=Android,C=US"```
* In Godot select ```Project > Export > Add... > Android```
* Make sure ```Runnable``` is on
* Select a name for the apk and a destination folder
* Under ```Package``` section set a name for the game and the package (the package's unique name must be in format name.name)
* Download ```Export Templates``` if you don't do this before (is all managed inside of Godot, no external downloads required)
* Export Project

## 13. IDE tools
### 13.1. Define inputs
To define inputs go to Project>Project Settings>Input Mapt(tab). Here it is possible define new inputs keys. To evaluate in code the inputs, it is use Input class (that is a singleton)

![Inputs in Godot](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/inputs.PNG)

### 13.2. Intance scene like node
It is so usefull define a scene and after add it into another scene. You can define a enemy in a game and it can be instanciated in any other scene using this tool.

![Instance scene like node](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/instance_like_node.PNG)

### 13.3. Singletons
In GoDot it is possible create singleton classes. Not it is necessary to implement any extra code to do it.
It is possible access to singleton variables and functions from any script only using the singleton name.
To create a singleton class is necessary to declare it in Project Settings menu on Autoload tab.

![Singleton in GoDot](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/singleton.PNG)

### 13.4. Adding elements
It is possible add graphics elements like Sprite. For to this, select all graphics/image in the FileSystem tab, drag them and drop them into Scene area. A dialog appear to select the node type realtionship with the files dragged and dropped.

### 13.5. Collision Layer and Collision Mask
The collisoin layers and collisions masks are used to define the elements collision into the game. Theses layers and masks can be asigned to the PhysicsBody2D in the project.
Godot IDE let define collision layers to after asigne to a PhysicsBody2D object.
To define a layer go Project>Project Settings>General>Layer Names>2d/3d Physics:

![Singleton in GoDot](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/layer_define.PNG)

To assigne the layer to a object(PhysicsBody2D). Into his Collision section can you select the object layer and the object mask.

<div align="center">

![Singleton in GoDot](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/layer_asigne.PNG)

</div>

### 13.6 Parallax effect
Parallax is the phenomenon where objects seem to be in different positions based on our viewing angle. The Parallax element is added to the Camera object (and Camera es usually added to the player):
- ParallaxBackground element content the ParallaxLayer elemnts, each of them has a TextureRect to asigned a texture.
- CanvasParallax: Ingore Camara Z on, It is possible change Base Offset here
- The closer layer is the faster it'll move
- Background layers are very slow
- Foreground layers are faster
- The faster a layer moves, the faster the player will fell like they're going
- In Godot, we control the speed of Parallax throhg scale

### 13.7 Signals and Groups
- A signal is a predetermined message from a known sender to a know recipient
- A group is a broadcast to anyone who might be listening for it. Every node can be assigned as many groups as you want to create, e.g. a “enemy” group. You can then iterate these groups or even call methods and set properties on all the group’s members at once.
  - void add_to_group( String group, bool persistent=false ) to add


## 14. Good Practices
- The code should be easy to read by a human
- One script should be in charge of one thing
- Do not have multiple scripts working  on the same thing
- Do not have one script doing multiple thing
- Encapsulate
- If a node of function is missing, the game should run just fine
- CanvasLayer node to create GUI
- Create a generic Node and add scenes instances (Hazards, Coins, Jumpads) to create items group
- It is possible check the tree() nodes while the game is executing, use "Remote" option in Scene tab to know what happen in the game while execute it.

<div align="center">

![Example Player](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/remote_option.PNG)

</div>

## 15. Scene Examples
### 15.1. Player 2D
- KinematicBody2D: De
- KinematicBody2D: Define the body type
  - CollisionShape2D: Define collision
  - AnimatedSprite: Define the player animation
  - Camerra2D: Game camera follow the player
    - ParallaxBackground: To generate parallax efect
      - ParallaxLayer: Define a parallax level
        - TextureRect: Texture for this parallax level
      - ParallaxLayer: Define a parallax level
        - TextureRect: Texture for this parallax level
      - ParallaxLayer: Define a parallax level
        - TextureRect: Texture for this parallax level
      - ParallaxLayer: Define a parallax level
        - TextureRect: Texture for this parallax level
  - AudioStreamPlayer: Define the jump sound
  - AudioStreamPlayer: Define the jump sound

<div align="center">

![Example Player](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/examples_player.PNG)

</div>

### 15.2. TileSet
- Node2D
  - Sprite: Define de texture
    - StaticBody: Define the body type
      - CollisionShape2D/CollisionPolygon2D: Define collision
  - Sprite: Define de texture
    - StaticBody: Define the body type
      - CollisionShape2D/CollisionPolygon2D: Define collision
  - Sprite: Define de texture
    - StaticBody: Define the body type
      - CollisionShape2D/CollisionPolygon2D: Define collision            

<div align="center">

![Example TileSet](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/examples_tiles.PNG)

</div>

### 15.3. Parallax
- Camera2D
  - ParallaxBackground: Parallax layers container
    - ParallaxLayer: Define a layer, Scale attribute define the movement
      - TextureRect: Define the texture to show
    - ParallaxLayer: Define a layer, Scale attribute define the movement
      - TextureRect: Define the texture to show
    - ParallaxLayer: Define a layer, Scale attribute define the movement
      - TextureRect: Define the texture to show
    - ParallaxLayer: Define a layer, Scale attribute define the movement
      - TextureRect: Define the texture to show

<div align="center">

![Example Parallax](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/examples_parallax.PNG)

</div>

### 15.4. Bullet/Lightning element
- Node2D
  - Area2D: Define the collision layer
    - AnimatedSprite: Define the animation
    - CollisionShape2D: Define the collision area shape
    - VisibilityNotifier2D: Define the visibility control on element into the screen

<div align="center">

![Example Lightning](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/examples_lightning.PNG)

</div>

### 15.5. Magical Portal/Vortex
- Node2D
  - Area2D: Define the collision layer
    - Sprite: Define the sprite
    - CollisionShape2D: Define the collision area shape
    - AnimationPlayer: Define the properties animation
    - Particles2D: Define the particles 2D system on element

<div align="center">

![Example Portal](https://github.com/The-Four-Lords/GoDot_Examples_and_CheatSheet/blob/master/img/examples_portal.PNG)

</div>


## 16. CheatSheet
### 16.1. Scene Elements - Nodes
The nodes are the main scene element. Exist many node types, Node2D, Node3D, Control, etc. Each of them has properties according with the node type.

Element | Description
--------|------------
TextureRect | Draws a sprite or a texture inside a User Interface. The texture can tile or not. Use TextureRect to draw icons and sprites in your User Interfaces. To create panels and menu boxes, take a look at NinePatchFrame. Its Stretch Mode property controls the texture’s scale and placement. It can scale, tile and stay centered inside its bounding rectangle. TextureRect is one of the 5 most common nodes to create game UI
RichTextLabel | Label that displays rich text. Rich text can contain custom text, fonts, images and some basic formatting. The label manages these as an internal tag stack. It also adapts itself to given width/heights
LineEdit | Control that provides single line string editing.
TextureButton | Texture-based button. Supports Pressed, Hover, Disabled and Focused states. TextureButton has the same functionality as Button, except it uses sprites instead of Godot’s Theme resource. It is faster to create, but it doesn’t support localization like more complex Controls. The Normal state’s texture is required. Others are optional
Tween | Smoothly animates a node’s properties over time. Tweens are useful for animations requiring a numerical property to be interpolated over a range of values.
Timer | A countdown timer. Counts down a specified interval and emits a signal on reaching 0. Can be set to repeat or “one shot” mode.
Sprite | A node that displays a 2D texture. The texture displayed can be a region from a larger atlas texture, or a frame from a sprite sheet animation.
AnimatedSprite | Animations are created using a SpriteFrames resource, which can be configured in the editor via the SpriteFrames panel.
Area2D | 2D area that detects CollisionObject2D nodes overlapping, entering, or exiting. Can also alter or override local physics parameters (gravity, damping).
Physicsbody2D | PhysicsBody2D is an abstract base class for implementing a physics body. All *Body2D types inherit from it. Need CollisionSHape2D to interact with other objects. Need Sprite/AnimatedSprite to set a texture.
StaticBody2D | Is a body that is not intended to move. It is ideal for implementing objects in the environment, such as walls or platforms. Additionally, a constant linear or angular velocity can be set for the static body, which will affect colliding bodies as if it were moving (for example, a conveyor belt). No designed to move. Great for walls, floors, platforms, etc. Can have simple velocity applied to it.
RigidBody2D | This node implements simulated 2D physics. You do not control a RigidBody2D directly. Instead you apply forces to it (gravity, impulses, etc.) and the physics simulation calculates the resulting movement based on its mass, friction, and other physical properties. Controlled by 2D physics engine. Built in behaviours for things like gravity and friction. No controlled directly (forces are applied to it). Great for object that are moved by shomething else, not great for player control.
KinematicBody2D | Meant to be player controlled. No affected by 2D physics engine. Can be moved directly with a control (don't have to move it with external forces)
Camera2D | Camera node for 2D scenes. It forces the screen (current layer) to scroll following this node. This makes it easier (and faster) to program scrollable scenes than manually changing the position of CanvasItem based nodes. This node is intended to be a simple helper to get things going quickly and it may happen often that more functionality is desired to change how the camera works. To make your own custom camera node, simply inherit from Node2D and change the transform of the canvas by calling get_viewport().set_canvas_transform(m) in Viewport. Can select Current true for set the camera like main view. It is possible modify the camera Zoom and Camera Angle.
TileMap | Node for 2D tile-based maps. Tilemaps use a TileSet which contain a list of tiles (textures plus optional collision, navigation, and/or occluder shapes) which are used to create grid-based maps.
TileSet | A TileSet is a library of tiles for a TileMap. It contains a list of tiles, each consisting of a sprite and optional collision shapes.Tiles are referenced by a unique integer ID
ParallaxLayer | A ParallaxLayer must be the child of a ParallaxBackground node. Each ParallaxLayer can be set to move at different speeds relative to the camera movement or the ParallaxBackground.scroll_offset value. This node’s children will be affected by its scroll offset. Note that any changes to this node’s position and scale made after it enters the scene will be ignored.Mirroring according the texture image size, Offset to move the texture (no in time), Scale let done parallax effect, each of them with different scale
CenterContainer | CenterContainer Keeps children controls centered. This container keeps all children to their minimum size, in the center
BoxContainer | Arranges child controls vertically or horizontally, and rearranges the controls automatically when their minimum size changes
VBoxContainer | Vertical box container. See BoxContainer
HBoxContainer | Horizontal box container. See BoxContainer
Label | Label displays plain text on the screen. It gives you control over the horizontal and vertical alignment, and can wrap the text inside the node’s bounding rectangle. It doesn’t support bold, italics or other formatting. For that, use RichTextLabel instead. "Use filter" option into dynamic font, smoth the font
AudioStreamPlayer2D | Plays audio that dampens with distance from screen center
AudioStreamPlayer3D | Plays a sound effect with directed sound effects, dampens with distance if needed, generates effect of hearable position in space
AnimationPlayer | An animation player is used for general purpose playback of Animation resources. It contains a dictionary of animations (referenced by name) and custom blend times between their transitions. Additionally, animations can be played and blended in different channels. Let change any element property value in time
CanvasLayer | Canvas drawing layer. CanvasItem nodes that are direct or indirect children of a CanvasLayer will be drawn in that layer. The layer is a numeric index that defines the draw order. The default 2D scene renders with index 0, so a CanvasLayer with index -1 will be drawn below, and one with index 1 will be drawn above. This is very useful for HUDs (in layer 1+ or above), or backgrounds (in layer -1 or below)
RayCast2D | To detect objects close the ray. A RayCast represents a line from its origin to its destination position, cast_to. It is used to query the 2D space in order to find the closest object along the path of the ray. RayCast2D can ignore some objects by adding them to the exception list via add_exception, by setting proper filtering with collision layers, or by filtering object types with type masks. RayCast2D can be configured to report collisions with Area2Ds (collide_with_areas) and/or PhysicsBody2Ds (collide_with_bodies). Only enabled raycasts will be able to query the space and report collisions. RayCast2D calculates intersection every physics frame (see Node), and the result is cached so it can be used later until the next frame. If multiple queries are required between physics frames (or during the same frame) use force_raycast_update after adjusting the raycast
VisibilityNotifier2D | To know when go out the screen. The VisibilityNotifier2D is used to notify when its bounding rectangle enters the screen, is visible on the screen, or when it exits the screen
Particles2D | 2D particle node used to create a variety of particle systems and effects. Particles2D features an emitter that generates some number of particles at a given rate. Use the process_material property to add a ParticlesMaterial to configure particle appearance and behavior. Alternatively, you can add a ShaderMaterial which will be applied to all particles


### 16.2. Classes
Class | Description
--------|------------
PoolStringArray | An Array specifically designed to hold String. Optimized for memory usage, does not fragment the memory. Note that this type is passed by value and not by reference.

### 16.3. Relevant Functions and Parameters
Function | Description
---------|------------
grab_focus() | On node set the focus control on it
\_enter\_tree() | When the node enters the \_Scene Tree\_, it becomes active and  this function is called. Children nodes have not entered the active scene yet. In general, it's better to use \_ready() for most cases
\_ready() | This function is called after \_enter\_tree, but it ensures that all children nodes have also entered the \_Scene Tree\_, and became active
\_exit\_tree() | When the node exits the \_Scene Tree\_, this function is called. Children nodes have all exited the \_Scene Tree\_ at this point and all became inactive
\_process(delta) | This function is called every frame
\_physics\_process(delta) | This is called every physics frame
print(message) | Show the message into GoDot console
max(a,b) | Returns the maximum value between a and b
min(a,b) | Returns the minimum value between a and b
randomize() | Randomizes the seed (or the internal state) of the random number generator. Current implementation reseeds using a number based on time.
randi() | Returns a random 32 bit integer. Use remainder to obtain a random value between 0 and N
hide() / show() | On node hide or show it. No remove it from the scene
queue_free() | On node, free it from the scene if it not is blocked
free() | On node, free it from the scene
get_tree() | Returns the scenes tree
get_tree().quit() | Close the app/game
get_tree().change("scene_path") | Change the current scene to "scene_path" scene
get_tree().reload_current_scene() | Reload the current scene
get_parent() | Returns the parent node
get_node("node_name") | Returns the node. It is similiar to use $ keyword
get_node('timer_node').start() | Throw the timer trigger and beging the countdown
file.open(fileName, MODE) | Try open the file in the mode "MODE". Return the action code (0 is success)
get_child_count() | On node returns the numbers of node's childs
get_child(child_index) | On node returns the child specified
file.get_as_text() | Returns the file content as text. The file, is a File object, where has been invoked File.new() to instance it and file.open(filePath, openMethod) to set the file to read like text
parse_json(text) | Returns the text enter like json object
preload("resourceFilePath") | Load the file (scene, image, etc) in resourceFilePath and return a ID associated with this preload (used in texture attribute)
round(s) | Returns the integral value that is nearest to s, with halfway cases rounded away from zero
asb(s) | Returns the absolute value of parameter s (i.e. unsigned value, works for integer and float)
get_global_mouse_position() | Returns the mouse position over view
signal | Signals are Godot’s version of the observer pattern. They allow a node to send out a message that other nodes can listen for and respond to
Vector2(a,b) | 2-element structure that can be used to represent positions in 2d-space, or any other pair of numeric values.
PoolVector2Array([]) | Vector2 array
move_and_collide() | From KinematicBody2D, when you hit something, stop. Can get collision information whatever it hits. Doesn't automatically use delta.
move_and_slide() | From KinematicBody2D, when you hit something try and move along it. Can detect floors, walls and celling. Automatically uses delta when moving.
_process(delta) | Called during the processing step of the main loop. Processing happens at every frame and as fast as possible, so the delta time since the previous frame is not constant.
_physics_process(delta) | Called during the physics processing step of the main loop. Physics processing means that the frame rate is synced to the physics, i.e. the delta variable should be constant.
delta | It is the time in seconds between frames. It is relationship with frame rate changes.
is_on_floor() | Returns true if the body is on the floor. Only updates when calling move_and_slide().
is_action_pressed("action") | Returns true if you are pressing the action event. Note that if an action has multiple buttons asigned and more than one of them is pressed, releasing one button will release the action, even if some other button assigned to this action is still pressed.
is_action_just_pressed("action") | Returns true when the user starts pressing the action event, meaning it's true only on the frame that the user pressed down the button. This is useful for code that needs to run only once when an action is pressed, instead of every frame while it's pressed.
emit_signal("signal", ...) | Emits the given signal. The signal must exist, so it should be a built-in signal of this class or one of its parent classes, or a user-defined signal. This method supports a variable number of arguments, so parameters are passed as a comma separated list. Example: emit_signal("hit", weapon_type, damage) or emit_signal("game_over")
is_on_ceiling() | KinematicBody2D function. Returns true if the body is on the ceiling. Only updates when calling move_and_slide. Use this function to stop element from floating along the underside of platforms.
get_overlapping_bodies() | Area2D function. Returns a list of intersecting PhysicsBody2Ds. For performance reasons (collisions are all processed at the same time) this list is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.
look_at() | Node2D function. Rotates the node so it points towards the point, which is expected to use global coordinates.
get_global_mouse_position | CanvasItem function. Returns the global position of the mouse.
clamp(value, min, max) | Clamps value and returns a value not less than min and not more than max. Usefull to nodes movement
lerp(from, to, weight) | Linearly interpolates between two values by a normalized value. This is the opposite of inverse_lerp(). Applied on Nodes, is usefull to create different floor material sensation where the node is in movement


### 16.4. Hot Keys
Function | Description
:-------:|------------
Crl+shift+F11 | Maximizes the script edition area
Ctrl+a | Add new object/node like child of the scene elment selected
Ctrl+k | Comment code lines selected
Ctrl+d | Duplicate de scene element selected
Ctrl+w | Close the script selected
Ctrl+Shift+w | Close the scene selected
Alt+"ArrowKey" | Move line code in arrow key direction
F6 | Run the curren scene
F5 | Run the main project scene
F4 | Open GoDot API dialog
