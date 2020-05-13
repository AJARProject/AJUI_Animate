//%attributes = {}
C_OBJECT:C1216($1;$o)

$o:=$1
$delay:=$o.delay
$effect:=$o.effect
OB REMOVE:C1226($o;"delay")
$o[$effect].call($o)
DELAY PROCESS:C323(Current process:C322;$delay)