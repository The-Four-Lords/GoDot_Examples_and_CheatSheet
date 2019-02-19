# GoDot_Examples_and_CheatSheet
A bunch of GoDot examples to play and test the engine elements and tools. Documentation and cheatsheet.

### Elements
<table>
  <tr>
    <th>Element</th><th>Description</th>
  </tr>
  <tr>
    <td>TextureRect</td><td>Draws a sprite or a texture inside a User Interface. The texture can tile or not. Use TextureRect to draw icons and sprites in your User Interfaces. To create panels and menu boxes, take a look at NinePatchFrame. Its Stretch Mode property controls the texture’s scale and placement. It can scale, tile and stay centered inside its bounding rectangle. TextureRect is one of the 5 most common nodes to create game UI</td>
  </tr>
  <tr>
    <td>RichTextLabel</td><td>Label that displays rich text. Rich text can contain custom text, fonts, images and some basic formatting. The label manages these as an internal tag stack. It also adapts itself to given width/heights</td>
  </tr>  
  <tr>
    <td>LineEdit</td><td>Control that provides single line string editing.</td>
  </tr>    
  <tr>
    <td>TextureButton</td><td>Texture-based button. Supports Pressed, Hover, Disabled and Focused states. TextureButton has the same functionality as Button, except it uses sprites instead of Godot’s Theme resource. It is faster to create, but it doesn’t support localization like more complex Controls. The Normal state’s texture is required. Others are optional</td>
  </tr>    
</table>

### Functions
<table>
<tr>
  <th>Function</th><th>Description</th>  
</tr>  
<tr>
  <td>_enter_tree()</td><td>When the node enters the _Scene Tree_, it becomes active and  this function is called. Children nodes have not entered the active scene yet. In general, it's better to use _ready() for most cases</td>
</tr>
<tr>
  <td>_ready()</td><td>This function is called after _enter_tree, but it ensures that all children nodes have also entered the _Scene Tree_, and became active</td>
</tr>
<tr>
  <td>_exit_tree()</td><td>When the node exits the _Scene Tree_, this function is called. Children nodes have all exited the _Scene Tree_ at this point and all became inactive</td>
</tr>
<tr>
  <td>_process(delta)</td><td>This function is called every frame</td>
</tr>
<tr>
  <td>  _physics_process(delta)</td><td>This is called every physics frame</td>
</tr>
</table>
