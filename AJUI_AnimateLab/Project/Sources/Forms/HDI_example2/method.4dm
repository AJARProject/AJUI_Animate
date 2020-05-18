$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		zzz_header 
		GOTO OBJECT:C206(*;"login_obj")
	: ($evt=On Timer:K2:25)
		SET TIMER:C645(0)
End case 