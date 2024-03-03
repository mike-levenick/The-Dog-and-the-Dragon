#!/bin/bash

rows=$(tput lines)
columns=$(tput cols)

displayGuide() {

    # Pad the numbers with leading spaces if needed
    r3=$(printf "%3d" "$rows")
    c3=$(printf "%3d" "$columns")
   

printf "%s" """
+------------------------------------------------------------------------------+
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|  This game is designed to run in a terminal window of default size 80 x 24.  |
|                                                                              |
|                   Your current resolution is $c3 x $r3.                      |
|                           This square is 80 x 24.                            |
|                                                                              |
|     Align all the edges of the box with your terminal window borders,        |
|               and then press Enter to check the size again.                  |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
+------------------------------------------------------------------------------"""

}

while [[ "$rows" != "24" || "$columns" != "80" ]]; do
    displayGuide $rows $columns
    read
    rows=$(tput lines)
    columns=$(tput cols)
done
