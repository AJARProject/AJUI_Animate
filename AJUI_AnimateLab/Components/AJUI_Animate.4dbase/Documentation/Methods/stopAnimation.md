<!-- stopAnimation ( )  -->


## Description

Clean all the process ids in the storage (AJUI_AnimateProcess_col)

```4d
  stopAnimation ( )
```


## Example

```4d
 //Reset button used in the lab (HDI easing)
$evt:=Form event code
Case of 
	: ($evt=On Load)
		CALL FORM(Current form window;"formGetObjectsCoordinates")
	: ($evt=On Clicked)
		stopAnimation 
		CALL FORM(Current form window;"formResetObjectsCoordinates")
		OBJECT SET VISIBLE(*;Form.object;True)
		OBJECT SET FONT SIZE(*;Form.object;Form.fontsize)
End case 
```
