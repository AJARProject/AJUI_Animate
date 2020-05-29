$evt:=Form event code:C388

Case of 
	: ($evt=On Clicked:K2:4)
		
		GOTO OBJECT:C206(*;Replace string:C233(OBJECT Get name:C1087(Object current:K67:2);"_Flabel_obj";""))
		
End case 
