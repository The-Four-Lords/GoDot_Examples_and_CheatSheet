# GoDot_Examples_and_CheatSheet
A bunch of GoDot examples to play and test the engine elements and tools. Documentation and cheatsheet.

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
