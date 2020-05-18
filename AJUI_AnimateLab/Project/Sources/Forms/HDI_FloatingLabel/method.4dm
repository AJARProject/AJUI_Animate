$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		zzz_header 
		
		Form:C1466.duration:=300
		
		$animationTypes_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"animationTypes")
		ARRAY TEXT:C222($animationTypes_ptr->;0)
		APPEND TO ARRAY:C911($animationTypes_ptr->;"linear")
		APPEND TO ARRAY:C911($animationTypes_ptr->;"ease-out")
		APPEND TO ARRAY:C911($animationTypes_ptr->;"expoOut")
		APPEND TO ARRAY:C911($animationTypes_ptr->;"bounceOut")
		$animationTypes_ptr->:=1
End case 