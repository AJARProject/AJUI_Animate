<!-- formGetObjectsCoordinates ( )  -->


## Description

This method retrieves in the object variable **Form.AJUI_Animate_formObjects** all the objects of the current form as well as their coordinates.

```4d
  formGetObjectsCoordinates ( )
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
