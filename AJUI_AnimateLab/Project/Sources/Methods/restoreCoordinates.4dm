//%attributes = {}
C_LONGINT:C283($1;$2;$3;$4)
C_LONGINT:C283($left;$top;$right;$bottom)
C_TEXT:C284($5;$target)

$left:=$1
$top:=$2
$right:=$3
$bottom:=$4
$target:=$5

OBJECT SET COORDINATES:C1248(*;$target;$left;$top;$right;$bottom)