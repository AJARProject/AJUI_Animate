//%attributes = {}
OBJECT SET ENABLED:C1123(*;"start_btn_obj";False:C215)
OBJECT SET ENABLED:C1123(*;"reset_obj";False:C215)
C_OBJECT:C1216($o1)
$o1:=New Animation 
$o1.target:="rect1"
$o1.orientation:="down"
$o1.offset:=46
$o1.duration:=300
$o1.callback:="push_next_rectangle"
C_OBJECT:C1216($params)
$params:=New object:C1471()
$params.target:="rect2"
$params.orientation:="down"
$params.duration:=$o1.duration
$params.offset:=$o1.offset
$params.delay:=0
$o1.callbackParams:=$params
$o1.backIn()


