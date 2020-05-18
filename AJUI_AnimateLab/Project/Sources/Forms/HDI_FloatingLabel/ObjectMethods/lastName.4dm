$evt:=Form event code:C388
$animationTypes_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"animationTypes")

Case of 
	: ($evt=On Load:K2:1)
		Form:C1466.lastNameLabel:=New Animation 
		Form:C1466.lastNameLabel.target:="lastName"
		Form:C1466.lastNameLabel.fontSize:=11
		Form:C1466.lastNameLabel.offset:=-5
		Form:C1466.lastNameLabel.formPath:="lastName"
End case 

Form:C1466.lastNameLabel.duration:=Form:C1466.duration
Form:C1466.lastNameLabel.animationType:=$animationTypes_ptr->{$animationTypes_ptr->}

Form:C1466.lastNameLabel.floatingLabel()