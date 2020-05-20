//%attributes = {"shared":true}
C_OBJECT:C1216($o_closeMe)
$o_closeMe:=New Animation 
$o_closeMe.target:="panel_subform_obj"
$o_closeMe.orientation:="down"
OBJECT GET SUBFORM CONTAINER SIZE:C1148($width;$height)
$o_closeMe.offset:=$height
$o_closeMe.callback:="zzz_panel_btn_closeMe"
$o_closeMe.bounceOut()


