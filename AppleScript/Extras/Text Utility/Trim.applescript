(*
Trim.applescript
Sample Script for CotEditor

Description:
Remove whitespaces at the begin/end of the frontmost document.

written by nakamuxu on 2008-01-05
modified by 1024jp on 2014-2015
*)

--
tell application "CotEditor"
	if not (exists front document) then return
	
	tell front document
		replace for "^ +" to "" with RE and all
		replace for " +$" to "" with RE and all
	end tell
end tell
