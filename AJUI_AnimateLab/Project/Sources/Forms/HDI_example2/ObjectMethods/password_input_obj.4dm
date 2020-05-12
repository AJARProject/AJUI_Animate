$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		OBJECT SET FONT:C164(*;OBJECT Get name:C1087(Object current:K67:2);"%password")
		
	: ($evt=On Losing Focus:K2:8)
		GOTO OBJECT:C206(*;"login_btn_obj")
		
		If (Form:C1466.password="zzz")
			zzz_ok 
			zzz_login_anim 
		Else 
			Form:C1466.btn1.Enable(False:C215)  //default
			zzz_not_ok 
		End if 
		
End case 
