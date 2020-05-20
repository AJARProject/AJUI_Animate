//%attributes = {}


If (Count parameters:C259=0)  // for easy testing
	C_OBJECT:C1216($params)
	$params:=New object:C1471()
	$params.width:=100
	$params.height:=100
	$params.opacity:=50
	$params.color:="red"
	Panel_opacity ($params)
	
Else 
	
	C_OBJECT:C1216($params;$1)
	$params:=$1
	$width:=$params.width
	$height:=$params.height
	$opacity:=$params.opacity
	$color:=$params.color
	
	$svgRef:=SVG_New ($width;$height;"opacity_background";"This is an example";True:C214;Scaled to fit:K6:2)
	
	$group:=SVG_New_group ($svgRef;"panel_1")
	$rect:=SVG_New_rect ($group;0;0;$width;$height)
	SVG_SET_ATTRIBUTES ($rect;"style";"fill:"+$color+"; stroke:none; stroke-width:0")
	SVG_SET_OPACITY ($rect;$opacity)
	SVG EXPORT TO PICTURE:C1017($svgRef;$pict)
	
	SVG_CLEAR 
	$0:=$pict
	
End if 
