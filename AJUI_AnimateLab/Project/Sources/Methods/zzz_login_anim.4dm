//%attributes = {}
Form:C1466.btn1.Enable(True:C214)

C_OBJECT:C1216($o)
$o:=New Animation 
$o.formName:=Current form name:C1298
$o.target:="login_btn_obj"
$o.iterations:=3
$o.factor:=0.8
$o.heartbeat()
