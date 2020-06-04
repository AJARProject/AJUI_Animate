//%attributes = {"shared":true}

C_OBJECT:C1216($o1)
$o1:=New Animation 
$o1.target:="right_panel_cont"
$o1.orientation:="right"
$o1.offset:=-1
$o1.duration:=500
$o1.callback:="zzz_btn_slide"  // @ end of animation
C_OBJECT:C1216($params)
$params:=New object:C1471("target";"btn_slide_right")
$params.btn_callback:="zzz_right_panel_on"
$params.btn_template:="slideOff"
$params.sens:="right"
$o1.callbackParams:=$params
$o1.slideOut()
