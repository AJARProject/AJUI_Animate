$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		
		$path:=Get 4D folder:C485(Current resources folder:K5:16)
		$filepath:=$path+"logo.html"
		$filepath:=Convert path system to POSIX:C1106($filepath)
		MyWArea_url:="file:///"+$filepath
		
		
	: ($evt=On Data Change:K2:15)
		
		
End case 