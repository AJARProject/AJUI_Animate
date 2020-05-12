

C_POINTER:C301($animation_ptr)
C_TEXT:C284($animation)
$animation_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"popup_animation_obj")
$animation:=$animation_ptr->{$animation_ptr->}

If ($animation#"select effect...")
	
	stopAnimation 
	
	reset_HDI_easing_form 
	
	C_TEXT:C284($orientation)
	
	If (Form:C1466.params_col=Null:C1517)
		$orientation:=""
	Else 
		$pos:=Form:C1466.params_col.extract("saveAs").indexOf("orientation")
		If ($pos=-1)
			$orientation:=""
		Else 
			$orientation:=Form:C1466.params_col[$pos].value
		End if 
	End if 
	
	C_OBJECT:C1216($o)
	$o:=New Animation 
	$o.formName:=Current form name:C1298
	$o.target:=target_name 
	$o.orientation:=$orientation
	  // update according to the LB
	C_OBJECT:C1216($param)
	For each ($param;Form:C1466.params_col)
		$o[$param.saveAs]:=$param.value
	End for each 
	$o.name:=$animation
	$o[$animation].call($o)  // launch animation
	
End if 




