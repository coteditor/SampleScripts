#!/usr/bin/osascript -l JavaScript

// Sample JavaScript Script for CotEditor
//
// This script uses JavaScript for Automation on Yosemite (and later).
// 
// Created by 1024jp on 2015-01-28.


// set CotEditor
CotEditor = Application('CotEditor')
CotEditor.includeStandardAdditions = true

// set front most document
document = CotEditor.documents[0]


selection = document.selection
console.log(selection.contents())
selection.commentOut()
