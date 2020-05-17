
Case of 
	: (Form event code:C388=On Load:K2:1)
		C_OBJECT:C1216($o)
		$o:=New object:C1471("templateName";"slideOn")
		Form:C1466.btn_left_panel:=New AJUI_Button ($o)
		Form:C1466.btn_left_panel.Name("btn_slide_left")
		Form:C1466.btn_left_panel.OnClick("zzz_left_panel_on")
	: (Form event code:C388=On Mouse Leave:K2:34)
		
End case 

Form:C1466.btn_left_panel.Draw()