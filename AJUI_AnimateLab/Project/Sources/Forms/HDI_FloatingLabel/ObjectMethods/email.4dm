$evt:=Form event code:C388
$animationTypes_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"animationTypes")

Case of 
	: ($evt=On Load:K2:1)
		Form:C1466.emailLabel:=New Animation 
		Form:C1466.emailLabel.target:="email"
		Form:C1466.emailLabel.fontSize:=11
		Form:C1466.emailLabel.offset:=-5
		Form:C1466.emailLabel.formPath:="email"
End case 

Form:C1466.emailLabel.duration:=Form:C1466.duration
Form:C1466.emailLabel.animationType:=$animationTypes_ptr->{$animationTypes_ptr->}

Form:C1466.emailLabel.floatingLabel()