$evt:=Form event code:C388
$animationTypes_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"animationTypes")

Case of 
	: ($evt=On Load:K2:1)
		Form:C1466.descriptionLabel:=New Animation 
		Form:C1466.descriptionLabel.target:="description"
		Form:C1466.descriptionLabel.fontSize:=11
		Form:C1466.descriptionLabel.offset:=-5
		Form:C1466.descriptionLabel.formPath:="description"
End case 

Form:C1466.descriptionLabel.duration:=Form:C1466.duration
Form:C1466.descriptionLabel.animationType:=$animationTypes_ptr->{$animationTypes_ptr->}

Form:C1466.descriptionLabel.floatingLabel()