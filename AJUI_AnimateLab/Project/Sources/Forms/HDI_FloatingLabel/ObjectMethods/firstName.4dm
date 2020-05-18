$evt:=Form event code:C388
$animationTypes_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"animationTypes")

Case of 
	: ($evt=On Load:K2:1)
		Form:C1466.firstNameLabel:=New Animation 
		Form:C1466.firstNameLabel.target:="firstName"
		Form:C1466.firstNameLabel.fontSize:=11
		Form:C1466.firstNameLabel.offset:=-5
		Form:C1466.firstNameLabel.formPath:="firstName"
End case 

Form:C1466.firstNameLabel.duration:=Form:C1466.duration
Form:C1466.firstNameLabel.animationType:=$animationTypes_ptr->{$animationTypes_ptr->}

Form:C1466.firstNameLabel.floatingLabel()