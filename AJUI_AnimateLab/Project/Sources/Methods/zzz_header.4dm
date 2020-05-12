//%attributes = {}


C_OBJECT:C1216($o_hdi)
$o_hdi:=New Animation 
$o_hdi.target:="hdi_txt_obj"
$o_hdi.orientation:="right"
$o_hdi.offset:=-1
$o_hdi.duration:=2000
$o_hdi.slideIn()

C_OBJECT:C1216($o_title)
$o_title:=OB Copy:C1225($o_hdi)
$o_title.target:="title_txt_obj"
$o_title.orientation:="left"
$o_title.slideIn()

C_OBJECT:C1216($o_subTitle)
$o_subTitle:=OB Copy:C1225($o_hdi)
$o_subTitle.target:="subtitle_txt_obj"
$o_subTitle.slideIn()