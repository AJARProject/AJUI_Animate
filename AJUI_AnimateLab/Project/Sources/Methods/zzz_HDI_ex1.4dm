//%attributes = {}


C_OBJECT:C1216($o1)
$o1:=New Animation 
$o1.target:="rect1"
$o1.orientation:="down"
$o1.offset:=50
$o1.duration:=250
$o1.delay:=500
$o1.effect:="bounce"
CALL WORKER:C1389("controler";"delay_proc";$o1)
  //$o1.bounce()
  //DELAY PROCESS(Current process;60*0.25*1)
  //C_OBJECT($o2)
  //$o2:=OB Copy($o1)
  ////$o2.delay:=2000
  //$o2.target:="rect2"
  //$o2.bounce()
  //C_OBJECT($o3)
  //$o3:=OB Copy($o1)
  //$o3.delay:=1000
  //$o3.target:="rect3"
  //$o3.bounce()
  //C_OBJECT($o4)
  //$o4:=OB Copy($o1)
  //$o4.delay:=1500
  //$o4.target:="rect4"
  //$o4.bounce()

