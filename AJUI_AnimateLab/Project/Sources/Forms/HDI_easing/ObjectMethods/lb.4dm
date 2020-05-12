$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		
	: ($evt=On Data Change:K2:15)
		
		  // TODO set the params
		$_value_obj_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"value_obj")
		
		Form:C1466.params_col[$_value_obj_ptr->-1].value:=$_value_obj_ptr->{$_value_obj_ptr->}.value
		
End case 
