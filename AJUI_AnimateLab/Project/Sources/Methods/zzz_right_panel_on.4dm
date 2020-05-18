//%attributes = {"shared":true}

C_OBJECT:C1216($o1)
$o1:=New Animation 
$o1.target:="right_panel_cont"
$o1.orientation:="left"
$o1.offset:=185
$o1.duration:=500
$o1.callback:="zzz_btn_slide"
C_OBJECT:C1216($params)
$params:=New object:C1471("target";"btn_slide_right")  // @ end of animation
$params.btn_callback:="zzz_right_panel_off"
$params.btn_template:="slideOn"
$o1.callbackParams:=$params
$o1.slideOut()

