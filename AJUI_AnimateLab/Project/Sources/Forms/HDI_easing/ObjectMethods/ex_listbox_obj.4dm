$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		
		C_COLLECTION:C1488($lbDemo)
		$lbDemo:=New collection:C1472()
		
		C_OBJECT:C1216($o)
		$o:=New object:C1471()
		$o.product:="Tesla Model S"
		$o.price:=97400
		$lbDemo.push($o)
		$o:=New object:C1471()
		$o.product:="Tesla Model 3"
		$o.price:=44990
		$lbDemo.push($o)
		$o:=New object:C1471()
		$o.product:="Tesla Model X"
		$o.price:=98990
		$lbDemo.push($o)
		$o:=New object:C1471()
		$o.product:="Tesla Model Y"
		$o.price:=62000
		$lbDemo.push($o)
		$o:=New object:C1471()
		$o.product:="Tesla Cybertruck"
		$o.price:=45000
		$lbDemo.push($o)
		$o:=New object:C1471()
		$o.product:="Tesla Roadster"
		$o.price:=45000
		$lbDemo.push($o)
		
		Form:C1466.lbDemo:=$lbDemo
		
	: ($evt=On Data Change:K2:15)
		
		
End case 