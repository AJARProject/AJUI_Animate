//%attributes = {"shared":true}
C_OBJECT:C1216($o)
$o:=New object:C1471("templateName";"Close me")
Form:C1466.btn1:=New AJUI_Button ($o)
Form:C1466.btn1.Name("action_btn_obj")
Form:C1466.btn1.Label(AJUI_btn_default;"Close me...")
Form:C1466.btn1.OnClick("zzz_panel_anim_closeMe")
Form:C1466.btn1.Enable(True:C214)  //default