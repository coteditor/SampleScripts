#!/usr/bin/env ruby -Ku
#%%%{CotEditorXInput=Selection}%%%
#%%%{CotEditorXOutput=ReplaceSelection}%%%

# 選択範囲の行頭に > を付加します。

while $stdin.gets
	print $_.sub(/^/, ">")
end

exit
