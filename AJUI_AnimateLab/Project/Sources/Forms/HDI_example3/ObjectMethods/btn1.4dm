
Case of 
	: (Form event code:C388=On Load:K2:1)
		C_OBJECT:C1216($o)
		$o:=New object:C1471("templateName";"slideOn")
		Form:C1466.btn1:=New AJUI_Button ($o)
		Form:C1466.btn1.Name("btn1")
		Form:C1466.btn1.OnClick("zzz_col_left_on")
		
End case 

Form:C1466.btn1.Draw()