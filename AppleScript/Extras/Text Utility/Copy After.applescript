(*
Copy After.applescript
Sample Script for CotEditor

Description:
Copy the selected text just after the selection.

written by nakamuxu on 2008-01-05
modified by 1024jp on 2014-2015
*)

--
tell application "CotEditor"
	if not (exists front document) then return
	
	tell front document
		set {loc, len} to range of selection
		
		if len = 0 then return
		
		set copyStr to contents of selection
		set range of selection to {loc + len, 0}
		set contents of selection to copyStr
	end tell
end tell
