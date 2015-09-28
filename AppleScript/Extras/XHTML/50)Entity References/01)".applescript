(*
''.applescript
Sample Script for CotEditor

Description:
Insert double quotation mark at the selection as entity reference.

written by nakamuxu on 2005-03-14
modified by 1024jp on 2015
*)

--
property newStr : "&quot;"

--
tell application "CotEditor"
	if not (exists front document) then return
	
	tell front document
		set contents of selection to newStr
	end tell
end tell
