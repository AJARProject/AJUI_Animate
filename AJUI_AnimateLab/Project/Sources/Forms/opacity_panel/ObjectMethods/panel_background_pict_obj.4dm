$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		
		  // set the background picture to the size of the subform
		OBJECT GET SUBFORM CONTAINER SIZE:C1148($width;$height)
		OBJECT SET COORDINATES:C1248(*;"panel_background_pict_obj";0;0;$width;$height)
		
		$panel_background_pict_obj_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"panel_background_pict_obj")
		
		C_OBJECT:C1216($params)
		$params:=New object:C1471()
		$params.width:=$width
		$params.height:=$height
		$params.opacity:=30
		$params.color:="green"
		
		$panel_background_pict_obj_ptr->:=Panel_opacity ($params)
		
		
End case 



