//%attributes = {"shared":true}

C_OBJECT:C1216($o1)
$o1:=New Animation 
$o1.target:="left_panel_cont"
$o1.orientation:="right"
$o1.offset:=184
$o1.duration:=500
Form:C1466.btn_slide_left.OnClick("zzz_left_panel_off")
$o1.slideOut()

