//%attributes = {}

C_TEXT:C284($target)
$target:=target_name 
OBJECT SET VISIBLE:C603(*;"ex_@";False:C215)
OBJECT SET VISIBLE:C603(*;$target;True:C214)

C_LONGINT:C283($left;$top;$right;$bottom)
OBJECT GET COORDINATES:C663(*;$target;$left;$top;$right;$bottom)
  // Get the font properties
Form:C1466.fontsize:=OBJECT Get font size:C1070(*;$target)

  //to be centered x: 190, y:290
OBJECT GET COORDINATES:C663(*;"axe_hor";$l1;$t1;$r1;$b1)
$center_X:=$l1+(($r1-$l1)/2)
$center_Y:=$t1+($b1-$t1)

$width:=$right-$left
$height:=$bottom-$top
$left:=$center_X-($width/2)
$top:=$center_Y-($height/2)
$right:=$left+$width
$bottom:=$top+$height

OBJECT SET COORDINATES:C1248(*;$target;$left;$top;$right;$bottom)
  // Get the font properties
OBJECT SET FONT SIZE:C165(*;$target;Form:C1466.fontsize)


Form:C1466.object:=$target