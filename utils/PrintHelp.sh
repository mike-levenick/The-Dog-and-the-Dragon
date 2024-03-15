#!/bin/bash

echo
if [[ "$1" == "help" ]]; then
    echo "+----------------------------------------------------------------+"
    echo -e "| \e[1;33mAchievement unlocked: Tried to break the space-time continuum.\e[0m |"
    echo "+----------------------------------------------------------------+"
    echo
    exit 0
fi
echo -e "\e[1mAvailable actions include:\e[0m"
echo -e "  - \`\e[1;32minventory\e[0m\` (Check your current inventory)"
echo -e "  - \`\e[1;32mquestlog\e[0m\` (Check on your current Quest progress)"
echo -e "  - \`\e[1;32mwhoami\e[0m\` (In case of existential crisis)"
echo -e "  - \`\e[1;32mlook\e[0m\` (Look around generally/see what there is to see)"
echo
echo -e "  - \`\e[1;32mgo <place>\e[0m\` (Move to the specified place)" 
echo -e "  - \`\e[1;32muse <thing>\e[0m\` (Use an item from your inventory or the environment)"
echo
echo -e "  - \`\e[1;32mexit\e[0m\` (Quits the game)"
echo
echo "You can also ask for help on any specific command, for example:"
echo -e "\`\e[1;32mlook help\e[0m\` to get help specific to the \`\e[1;32mlook\e[0m\` command."
echo
echo -e "If you're ever wondering what to do next, check your \`\e[1;32mquestlog\e[0m\` for ideas,"
echo -e "or you can try to \`\e[1;32mlook around\e[0m\` and see what there is to see."
