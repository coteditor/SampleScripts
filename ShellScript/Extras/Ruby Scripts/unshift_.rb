#!/usr/bin/env ruby -Ku
#%%%{CotEditorXInput=Selection}%%%
#%%%{CotEditorXOutput=ReplaceSelection}%%%

# 選択範囲の行頭の >、'、#、タブ、半角スペース、全角スペース、を削除します。

while $stdin.gets
	print $_.sub(/^[>'#\t 　]/, "")
end

exit
