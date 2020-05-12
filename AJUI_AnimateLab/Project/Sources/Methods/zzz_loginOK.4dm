//%attributes = {"shared":true}



C_OBJECT:C1216($o_rect)
$o_rect:=New Animation 
$o_rect.target:="login_rect_obj"
$o_rect.orientation:="right"
$o_rect.offset:=1000
$o_rect.hideAtTheEnd:=True:C214
C_OBJECT:C1216($o_login_label)
$o_login_label:=OB Copy:C1225($o_rect)
$o_login_label.target:="login_label_obj"
C_OBJECT:C1216($o_login_input)
$o_login_input:=OB Copy:C1225($o_rect)
$o_login_input.target:="login_input_obj"
C_OBJECT:C1216($o_pwd_label)
$o_pwd_label:=OB Copy:C1225($o_rect)
$o_pwd_label.target:="password_label_obj"
C_OBJECT:C1216($o_pwd_input)
$o_pwd_input:=OB Copy:C1225($o_rect)
$o_pwd_input.target:="password_input_obj"

$o_rect.slideOut()
$o_login_input.slideOut()
$o_pwd_input.slideOut()
$o_login_label.slideOut()
$o_pwd_label.slideOut()


C_OBJECT:C1216($o_loginOK_rect)
$o_loginOK_rect:=New Animation 
$o_loginOK_rect.target:="loginOK_rect_obj"
$o_loginOK_rect.orientation:="left"
$o_loginOK_rect.offset:=-1
C_OBJECT:C1216($o_loginOK_txt)
$o_loginOK_txt:=OB Copy:C1225($o_loginOK_rect)
$o_loginOK_txt.target:="loginOK_txt_obj"
$o_loginOK_rect.slideIn()
$o_loginOK_txt.slideIn()

C_OBJECT:C1216($o_loginBtn)
$o_loginBtn:=New Animation 
$o_loginBtn.target:="login_btn_obj"
$o_loginBtn.offset:=-1
$o_loginBtn.orientation:="down"
$o_loginBtn.elastic()
  //Form.btn1.Hide()  //Hide the login button afterward

