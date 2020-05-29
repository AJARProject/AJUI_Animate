//%attributes = {"shared":true}
C_OBJECT:C1216($1;$params)
C_TEXT:C284($templateName;$callback;$target)

$params:=$1
$target:=$params.target
$callback:=$params.btn_callback
$templateName:=$params.btn_template

C_OBJECT:C1216($o)
$o:=New object:C1471("templateName";$templateName)
Form:C1466[$target]:=New AJUI_Button ($o)
Form:C1466[$target].Name($target)
Form:C1466[$target].OnClick($callback)
Form:C1466[$target].Draw()