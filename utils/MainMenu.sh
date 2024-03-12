#!/bin/bash

# A simple function to print the main menu with no retry text
printmainmenu() {
echo """
                       _____ _                _
          __          |_   _| |__   ___    __| | ___   __ _
 \ ______/ v\`_,         | | | '_ \ / _ \  / _\` |/ _ \ / _\` |
  }        /~~          | | | | | |  __/ | (_| | (_) | (_| | _
 /_)^ --,r'             |_| |_| |_|\___|  \__,_|\___/ \__, |( )
|b      |b                                            |___/ |/
  ___     _____        __      ___  __    _      ___   ___    __
 ( _ )   /__   \/\  /\/__\    /   \/__\  /_\    / _ \ /___\/\ \ \\
 / _ \/\   / /\/ /_/ /_\     / /\ / \// //_\\\\  / /_\///  //  \/ /
| (_>  <  / / / __  //__    / /_// _  \/  _  \/ /_\\\\/ \_// /\  /
 \___/\/  \/  \/ /_/\__/   /___,'\/ \_/\_/ \_/\____/\___/\_\ \/

                                +-----------+
                                | Main Menu |
                                +-----------+

Enter the number for your option, and press enter.

1. New Game
2. Load Game
3. Content Warning
4. Credits
5. Exit"""
}

# A simple function to print the main menu with the retry text. 
printretrymenu() {
echo """
                       _____ _                _
          __          |_   _| |__   ___    __| | ___   __ _
 \ ______/ v\`_,         | | | '_ \ / _ \  / _\` |/ _ \ / _\` |
  }        /~~          | | | | | |  __/ | (_| | (_) | (_| | _
 /_)^ --,r'             |_| |_| |_|\___|  \__,_|\___/ \__, |( )
|b      |b                                            |___/ |/
  ___     _____        __      ___  __    _      ___   ___    __
 ( _ )   /__   \/\  /\/__\    /   \/__\  /_\    / _ \ /___\/\ \ \\
 / _ \/\   / /\/ /_/ /_\     / /\ / \// //_\\\\  / /_\///  //  \/ /
| (_>  <  / / / __  //__    / /_// _  \/  _  \/ /_\\\\/ \_// /\  /
 \___/\/  \/  \/ /_/\__/   /___,'\/ \_/\_/ \_/\____/\___/\_\ \/

                                +-----------+
                                | Main Menu |
                                +-----------+
I'm sorry, that's not a valid option. Please try again.
Enter the number for your option, and press enter.

1. New Game
2. Load Game
3. Content Warning
4. Credits
5. Exit"""
}

# Upon initially loading the menu, clear the screen and print the main menu.
clear
printmainmenu
read option

# If we get an unexpected option, print the retry menu and ask again. 
# Continue until we get an expected option.
while ! [[ $option =~ ^[1-5]+$ ]]; do
    clear
    printretrymenu
    read -r option
done
exit $option