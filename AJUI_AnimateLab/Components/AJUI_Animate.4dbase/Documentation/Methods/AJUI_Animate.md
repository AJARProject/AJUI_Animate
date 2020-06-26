<!-- AJUI_Animate ( ) -> Animation class  -->


## Description

Exposes the Button class at the host base.

```4d
  AJUI_Animate ( ) -> animation
```

| Parameter | Type | In/Out | Description |
| --------- | ---- | ------ | ----------- |
| animation | object | out | instance of the Animation class |

## Example

```4d
  C_Object ($animation)
  
  $animation:=AJUI_Animate.new ()
  $animation.target:="AJAR_Pict"
  $animation.orientation:="up"
  $animation.offset:=300
  $animation.bounce()
  
```