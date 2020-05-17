
Case of 
	: (Form event code:C388=On Load:K2:1)
		C_OBJECT:C1216($o)
		$o:=New object:C1471("templateName";"slideOff")
		Form:C1466.btn_slide_right:=New AJUI_Button ($o)
		Form:C1466.btn_slide_right.Name("btn_slide_right")
		Form:C1466.btn_slide_right.OnClick("zzz_right_panel_on")
End case 

Form:C1466.btn_slide_right.Draw()