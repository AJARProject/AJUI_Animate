
Case of 
	: (Form event code:C388=On Load:K2:1)
		C_OBJECT:C1216($o)
		$o:=New object:C1471("templateName";"menu")
		Form:C1466.btn_slide_left:=New AJUI_Button ($o)
		Form:C1466.btn_slide_left.Name("btn_slide_left")
		Form:C1466.btn_slide_left.OnClick("zzz_left_panel_on")
End case 

Form:C1466.btn_slide_left.Draw()