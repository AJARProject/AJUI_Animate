$btn_name:=OBJECT Get name:C1087(Object current:K67:2)
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466[$btn_name]:=New AJUI_Button 
		Form:C1466[$btn_name].Name($btn_name)
		Form:C1466[$btn_name].Label(AJUI_btn_default;"Special Menu 1")
		Form:C1466[$btn_name].CornerRadius(AJUI_btn_default;0)
		Form:C1466[$btn_name].BGColor(AJUI_btn_default;"white:20")
		Form:C1466[$btn_name].BGColor(AJUI_btn_hover;"white:50")
		Form:C1466[$btn_name].BGColor(AJUI_btn_active;"white:35")
End case 

Form:C1466[$btn_name].Draw()