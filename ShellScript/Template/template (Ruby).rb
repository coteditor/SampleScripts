#!/usr/bin/ruby

# Sample Ruby Script for CotEditor
#
# Wrap the selection with <pre> tags.
# provided by s.sawada (http://www.mouseup.net/diary/)

# %%%{CotEditorXInput=Selection}%%%
# %%%{CotEditorXOutput=ReplaceSelection}%%%
 
require 'cgi' 
 
preText = STDIN.read
 
print <<PRETAG
<pre>
#{CGI::escapeHTML(preText.chomp)}
</pre>
PRETAG
