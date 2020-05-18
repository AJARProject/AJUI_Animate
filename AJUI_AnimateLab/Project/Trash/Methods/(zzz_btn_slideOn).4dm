//%attributes = {"shared":true}
C_OBJECT:C1216($1;$params)

$params:=$1
$target:=$params.target
$callback:=$params.btn_callback

C_OBJECT:C1216($o)
$o:=New object:C1471("templateName";"slideOn")
Form:C1466[$target]:=New AJUI_Button ($o)
Form:C1466[$target].Name($target)
Form:C1466[$target].OnClick($callback)
Form:C1466[$target].Draw()