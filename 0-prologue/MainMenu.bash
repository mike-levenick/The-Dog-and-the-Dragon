#!/bin/bash

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

Enter the number for your opion, and press enter.

1. New Game
2. Load Game
3. Credits
4. Exit

"""
}

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
Enter the number for your opion, and press enter.

1. New Game
2. Load Game
3. Credits
4. Exit
"""
}


clear
printmainmenu
read option

while ! [[ $option =~ ^[1-4]+$ ]]; do
    clear
    printretrymenu
    read -r option
done
exit $option