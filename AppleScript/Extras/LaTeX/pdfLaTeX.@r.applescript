(*
 *  Use Command+R to run latexmk in pdf mode on the current file, and open Skim with bilateral syncing
 *)
tell application "CotEditor"
	if exists front document then
		set thelinerange to line range of selection of front document
		set theline to item 1 of thelinerange
		set thisfile to POSIX path of (get file of front document) as Unicode text
		set thisdir to (do shell script "/usr/bin/dirname \"" & thisfile & "\"")
		set thisbase to thisdir & "/" & (do shell script "/usr/bin/basename \"" & thisfile & "\" .tex")
		set thispdf to thisbase & ".pdf"
		set thislog to thisbase & ".log"
		set acommand to "/Applications/Skim.app/Contents/SharedSupport/displayline -r"
		
		if (thisfile is not "") then
			tell application "Terminal"
				activate
				do script with command "latexmk -pdf -bibtex -cd \"" & thisfile & "\"; " & "if ! grep -Fq \\^\\! \"" & thislog & "\"; then " & acommand & " " & theline & " \"" & thispdf & "\" \"" & thisfile & "\"; " & "fi; " & "exit"
			end tell
		end if
		activate
	end if
end tell
