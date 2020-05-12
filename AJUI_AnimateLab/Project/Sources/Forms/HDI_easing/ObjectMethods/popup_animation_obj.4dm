$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		
		C_POINTER:C301($animation_ptr)
		C_TEXT:C284($animation)
		$animation_ptr:=OBJECT Get pointer:C1124(Object current:K67:2)
		$animation:=$animation_ptr->{$animation_ptr->}
		
	: ($evt=On Clicked:K2:4)
		
		C_POINTER:C301($animation_ptr)
		C_TEXT:C284($animation)
		$animation_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"popup_animation_obj")
		$animation:=$animation_ptr->{$animation_ptr->}
		
		If ($animation#"select effect...")
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
			
			
			C_COLLECTION:C1488($params)
			$params:=New collection:C1472()
			$params.push("duration")
			$params.push("delay")
			$params.push("iterations")
			$params.push("frequency")
			$params.push("offset")
			$params.push("factor")
			$params.push("orientation")
			$params.push("hideAtTheEnd")
			
			For each ($param;$params)
				Form:C1466[$param]:=0
			End for each 
			
			C_OBJECT:C1216($o)
			$o:=New Animation 
			$o.target:=target_name 
			$o.orientation:=$orientation
			$o.formName:=Current form name:C1298
			$o[$animation].call($o)  // launch animation
			
			  // Listbox
			Form:C1466.params_col:=New collection:C1472()
			C_TEXT:C284($param)
			$_value_obj_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"value_obj")
			ARRAY OBJECT:C1221($_value_obj_ptr->;0)
			$_properties_obj_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"properties_obj")
			ARRAY TEXT:C222($_properties_obj_ptr->;0)
			For each ($param;$params)
				If (String:C10($o[$param])#"")
					APPEND TO ARRAY:C911($_properties_obj_ptr->;$param)
					C_OBJECT:C1216($o_value)
					$o_value:=New object:C1471()
					$value_type:=Value type:C1509($o[$param])
					Case of 
						: ($value_type=Is text:K8:3)
							$o_value.valueType:="text"
							If ($param="orientation")
								ARRAY TEXT:C222($_orientaton;0)
								LIST TO ARRAY:C288("orientation";$_orientaton)
								OB SET ARRAY:C1227($o_value;"requiredList";$_orientaton)
							End if 
							$o_value.value:=$o[$param]
						: ($value_type=Is boolean:K8:9)
							$o_value.valueType:="boolean"
							$o_value.value:=$o[$param]=True:C214
						: ($value_type=Is real:K8:4)
							$o_value.valueType:="real"
							$o_value.value:=$o[$param]
						: ($value_type=Is integer:K8:5)
							$o_value.valueType:="integer"
							$o_value.value:=$o[$param]
						Else 
							$o_value.valueType:="text"  // default
							$o_value.value:=$o[$param]
					End case 
					$o_value.saveAs:=$param
					APPEND TO ARRAY:C911($_value_obj_ptr->;OB Copy:C1225($o_value))
					Form:C1466.params_col.push($o_value)
				End if 
			End for each 
			
			C_PICTURE:C286($pict)
			$pict:=AJUI_draw_easing_graph ($animation)
			OBJECT Get pointer:C1124(Object named:K67:5;"myGraph_obj")->:=$pict
			
		End if 
End case 




