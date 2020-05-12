
C_TEXT:C284($target)
$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		OBJECT SET TITLE:C194(*;"toggle_obj";"Hide Target")
	: ($evt=On Clicked:K2:4)
		$target:=target_name 
		$toggle:=OBJECT Get visible:C1075(*;$target)
		OBJECT SET TITLE:C194(*;"toggle_obj";Choose:C955($toggle;"Show Target";"Hide Target"))
		OBJECT SET VISIBLE:C603(*;$target;Not:C34($toggle))
End case 








