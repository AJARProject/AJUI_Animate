<!-- New Animation ( ) -> animation instance -->


## Description

Returns an object that contains all the usable member functions (Effects). Check the wiki to see all the animation available : https://github.com/AJARProject/AJUI_Animate/wiki

```4d
  New Animation ( ) -> animation
```

| Parameter | Type | In/Out | Description |
| --------- | ---- | ------ | ----------- |
| animation | object | out | instance of AJUI_Animate with all the usable member functions |

## Example

```4d
  C_Object ($animation)
  
  $animation:=New Animation
  $animation.target:="Rectangle1"
  $animation.orientation:="up"
  $animation.iterations:=4
  $animation.offset:=200
  $animation.jump()
  
```
