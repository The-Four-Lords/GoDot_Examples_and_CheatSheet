# GoDot_Examples_and_CheatSheet
A bunch of GoDot examples to play and test the engine elements and tools. Documentation and cheatsheet.

## 1. Install GoDot
Install GoDot is possible from Steam application or from [GoDot 3.0 download](https://godotengine.org/download/windows) web. In the web appears the normal version (GDScript) and mono version (C# support).<br>
Currently a beta version that support typed programming can be downloaded from [GoDot 3.1 download](https://downloads.tuxfamily.org/godotengine/3.1/beta1/)

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

## 4. CheatSheet
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
