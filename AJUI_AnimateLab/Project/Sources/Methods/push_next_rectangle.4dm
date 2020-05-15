//%attributes = {"shared":true}
C_OBJECT:C1216($1;$params)
$params:=$1

$target:=$params.target
$count:=Num:C11(Substring:C12($target;5))
$orientation:=$params.orientation
$duration:=$params.duration
$offset:=$params.offset

If ($count<4)
	  //$count:=$count+1
	$target:="rect"+String:C10($count)
	C_OBJECT:C1216($o1)
	$o1:=New Animation 
	$o1.target:=$target
	$o1.orientation:=$orientation
	$o1.offset:=$offset
	$o1.duration:=$duration
	$o1.callback:="push_next_rectangle"
	C_OBJECT:C1216($params)
	$params:=New object:C1471()
	$params.target:="rect"+String:C10($count+1)
	$params.orientation:="down"
	$params.delay:=0
	$params.duration:=$duration
	$params.offset:=$offset
	$o1.callbackParams:=$params
	
Else 
	
	  //$count:=$count+1
	$target:="rect"+String:C10($count)
	C_OBJECT:C1216($o1)
	$o1:=New Animation 
	$o1.target:=$target
	$o1.orientation:="right"
	$o1.offset:=$offset
	$o1.duration:=$duration
	
	If ($count<10)
		$o1.callback:="push_next_rectangle"
		C_OBJECT:C1216($params)
		$params:=New object:C1471()
		$params.target:="rect"+String:C10($count+1)
		$params.orientation:="right"
		$params.duration:=$duration
		$params.offset:=$offset
		$params.delay:=0
		$o1.callbackParams:=$params
	Else 
		ALERT:C41("End of the animation")
	End if 
	
End if 

$o1.backIn()