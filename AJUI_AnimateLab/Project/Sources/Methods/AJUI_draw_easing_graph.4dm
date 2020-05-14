//%attributes = {}
  // AJUI_draw_easing_graph ( easing ) -> graph
  //
  // easing : (text) name of the easing function
  // graph : (pict) return a graph of the function

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 02.05.20, 10:56:48
	  // ----------------------------------------------------
	  // Method: AJUI_draw_easing_graph
	  // Description
	  // 
	  //
	  // Parameters
	  // ----------------------------------------------------
End if 

C_TEXT:C284($1;$easing)
$easing:=$1

  // -------------------------------- SVG -------------------------------
C_COLLECTION:C1488($col2)
$col2:=New collection:C1472()
C_OBJECT:C1216($transition)
$transition:=New object:C1471()
$transition.animType:=$easing
$transition.steps:=100  // see the for loop
$transition.minValue:=0
$transition.maxValue:=1
For ($pos;0;100;1)
	$transition.current_step:=$pos
	$posCalc:=animationTiming($transition)
	$el:=New object:C1471("pos";$pos;"posCalc";$posCalc)
	$col2.push($el)
End for 

$max:=$col2.max("posCalc")
$min:=$col2.min("posCalc")

C_OBJECT:C1216($transition)
$transition:=New object:C1471()
$transition.animType:=$easing
$transition.steps:=100  // see the for loop
$transition.minValue:=0
$transition.maxValue:=1

C_PICTURE:C286($pict)
$padding:=0
$factor:=100
$max:=Abs:C99($max*$factor)+$padding+2
$min:=Abs:C99($min*$factor)+$padding+1

$svg_x:=100
$svg_y:=200
$svgRef:=SVG_New ($svg_x;$svg_y;"easing function";"This is an example";True:C214;Truncated non centered:K6:4)
$currentX:=0
$currentY:=0


$steps:=$transition.steps

For ($i;1;$steps)
	$transition.current_step:=$i
	$transitionValue:=animationTiming($transition)
	
	$startX:=$currentX*$factor
	$startY:=($currentY*$factor)+$min
	$endX:=$i/$steps*$factor
	$endY:=($transitionValue*$factor)+$min
	
	$objectRef:=SVG_New_line ($svgRef;$startX;$svg_y-$startY;$endX;$svg_y-$endY;"blue";2)
	
	$currentX:=($i/$steps)  //*$transition.minValue *100
	
	$currentY:=$transitionValue
	Form:C1466.frequency:=30
End for 


$limitMinRef:=SVG_New_line ($svgRef;0;$svg_y-$min;$endX;$svg_y-$min;"red";2)
$limitMaxRef:=SVG_New_line ($svgRef;0;$svg_y-($factor+$min);$endX;$svg_y-($factor+$min);"red";2)


SVG EXPORT TO PICTURE:C1017($svgRef;$pict)
$0:=$pict



