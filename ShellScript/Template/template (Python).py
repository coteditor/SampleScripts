#!/usr/bin/python3
# -*- coding: utf-8 -*-

"""Sample Python Script for CotEditor

Give line numbers to the selection.

Created by 1024jp on 2015-09-28.
"""

# %%%{CotEditorXInput=Selection}%%%
# %%%{CotEditorXOutput=ReplaceSelection}%%%

import math
import sys


def digit(number):
    """Return digit of number.

    Args:
        number (int): Number to count digits.
    """
    return int(math.log10(number)) + 1


def add_line_number(text, separator="|"):
    """Prepend line numbers to each line.

    Args:
        text (str): Text to process.
        separator (str): Separator character between line number and line.
    """
    lines = text.splitlines(True)
    pad_length = digit(len(lines))
    new_text = ""

    for index, line in enumerate(lines):
        line_number = str(index + 1).rjust(pad_length)
        new_text += line_number + separator + " " + line

    return new_text


def main():
    in_text = sys.stdin.read()
    if in_text:
        out_text = add_line_number(in_text)
        sys.stdout.write(out_text)


if __name__ == "__main__":
    main()
