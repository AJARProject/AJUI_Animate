$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		
		zzz_header 
		
		SET TIMER:C645(-1)
		
	: ($evt=On Timer:K2:25)
		
End case 