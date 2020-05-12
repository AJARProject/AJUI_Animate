//%attributes = {}
C_POINTER:C301($obj_ptr)
C_TEXT:C284($target;$0)
$obj_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"popup_obj")
$target:=$obj_ptr->{$obj_ptr->}
$target:="ex_"+$target+"_obj"
$0:=$target