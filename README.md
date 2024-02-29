# The Dog and the Dragon
A text-based adventure game inspired by the literary works of Brandon Sanderson. Created by Michael Levenick for CS252, Spring Semester, 2024.

## Overview
Join the heartwarming journey of a small farm dog with big dreams in this captivating text-based RPG adventure. 

In this delightful tale, inspired by the charming short story 'The Dog and the Dragon' by renowned author Brandon Sanderson, you step into the paws of an unassuming farm dog whose world is forever changed when he sees a majestic dragon soaring through the skies. The dog embarks on a quest to transform himself into a dragon, against all odds.

As you guide our plucky hero through his adventures on the farm, you'll uncover a heartwarming story filled with humor, friendship, and the indomitable spirit of perseverance. But amidst the laughter and challenges, there's a lingering question: Can a humble farm dog truly become a dragon, or is the journey itself the real treasure?

Prepare for a whimsical and touching narrative experience where the smallest of creatures dare to dream the biggest of dreams. Are you ready to embark on an unforgettable adventure with 'The Dog and the Dragon'? The farm awaits...let the journey begin!

## How to Play

### Highlights
This is a text-based RPG. You'll be presented with a prompt, and asked what you would like to do. There are a few key commands you can enter, along with parameters to describe your command. For example, you could use the command `go` with the parameter `west` go travel to the west. As you progress through the story, you will be presented with cutscenes and dialogue that will assist you in completing your quest.

### Launching the Game
The Dog and the Dragon utilizes a Launcher file to help organize the file structure of the game. To launch the game, simply run the Launcher.sh script located in the root of the project file. The file is intentionally not marked as executable, and in order to launch the game, you should pass the script through your preferred shell. For example: `sh /path/to/dog-and-dragon/Launcher.sh`.

Veteran players of The Dog and the Dragon may wish to skip the initial cutscene when re-loading the game. This can be accomplished by passing the parameter `skip` as $1 when running the launcher. For example: `sh /path/to/dog-and-dragon/Launcher.sh skip`.

### Available Commands
A list of available commands and their usage is always available in-game via the `help` command. The contents of that command's output are presented here as well.

- `inventory` (Check your current inventory)"
- `questlog` (Check on your current Quest progress)"
- `whoami` (In case of existential crisis)"
- `look` (Look around generally/see what there is to see)"

- `go <place>` (Move to the specified place)" 
- `use <thing>` (Use an item from your inventory or the environment)"

- `exit` (Quits the game)"

You can also ask for help on any specific command, for example:"
`look help` to get help specific to the `look` command."

### How to Check your Progress
The Dog and the Dragon features a handy Questlog that can help you track your progress, and also give you helpful hints as to what to do next. If at any point you wish to check your progress, or get a hint of what to do next, simply use the command `questlog`. 

### How to Save your Progress
The Dog and the Dragon uses Autosave technology, and stores your progress in a savefile located in the `gamesaves` directory. The name of this file will be the name you choose for your character when starting a `New Game`. 

Any time you collect new inventory or progress through the story, your progress is automatically saved to your savefile, and a `⭒Progress saved!⭒` message will be displayed. 

### How to Load your Gamesave
When it's time to take a break, simply exit the game, knowing your progress will be saved. Upon re-launching the game, you can select the `Load Game` option from the Main Menu, and then type the name of your gamesave file to load your progress.

## Credits
Credits can be viewed in-game from the main menu, but their contents are posted here as well.

                                     /   \
           _                 )      ((   ))     (
          (@)               /|\      ))_((     /|\                 _
          |-|`\            / | \    (/\|/\)   / | \               (@)
          | | ------------/--|-voV---\`|'/--Vov-|--\--------------|-|
          |-|                  '^`   (o o)  '^`                   | |
          | |             _____      `\Y/'   _ _ _                |-|
          |-|            / __  \            | (_) |               | |
          | |           | /   \/_ ___ __   _| |_| |__ __          |-|
          |-|           | |    | '__/ _ \/ _` | | __/ __|         | |
          | |           | \___/\| ||  __/ (_| | | |_\__ \         |-|
          |-|            \_____/|_| \___|\__,_|_|\__|___/         | |
          |_|_____________________________________________________| |
          (@)       l   /\ /         ( (       \ /\   l         `\|-|
                    l /   V           \ \       V   \ l           (@)
                    l/                _) )_          \I
                                      `\ /'
                                        `


The Dog and the Dragon is a text-based RPG, created by Mike Levenick,
and based on the short story The Dog and the Dragon, which is contained
within chapter 80 of the novel Rhythm of War, by Brandon Sanderson.

Much of the text used in the cutscenes was taken verbatim from the Dog and
the Dragon Worldsinger Edit, by u/ArtyWhy8, which can be found on Reddit [here](https://old.reddit.com/r/Stormlight_Archive/comments/k3rc44/the_dog_and_the_dragon_worldsinger_edit/).

This game is created in accordance with the Dragonsteel Entertainment fan-art
policy, which can be found on the Dragonsteel website [here](https://faq.brandonsanderson.com/knowledge-base/can-i-make-fan-art-or-write-fan-fiction/). 

The animate.sh animation engine was inspired by the asciimation project by 
octobanana. asciimation can be found on GitHub [here](https://github.com/octobanana/asciimation).

The ASCII art used in this project can be found at [https://www.asciiart.eu/](https://www.asciiart.eu/)
Some of the art has been slightly modified by me in order to fit the project.

The code for this project is released under the [GNU AGPL v3 license](https://www.gnu.org/licenses/agpl-3.0.en.html), although
it is important to note that commercial use of Brandon Sanderson's literary
works are not allowed without permission of Dragonsteel Entertainment.
