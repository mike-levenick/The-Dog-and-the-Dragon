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
echo -e "  - \`\e[1;32mlook \e[34m<direction>\e[0m\` (Look around generally/see what there is to see)"
echo
echo -e "  - \`\e[1;32mgo \e[34m<direction>\e[0m\` (Move in the specified direction)"
echo -e "     can also be used to approach some \e[34mpeople\e[0m or \e[34mobjects\e[0m."
echo
echo -e "  - \`\e[1;32mtake \e[31m<thing>\e[0m\` (Take an item and put it into your inventory)"
echo
echo -e "  - \`\e[1;32muse \e[31m<thing>\e[0m\` (Use an item from your inventory or the environment)"
echo
echo -e "  - \`\e[1;32mexit\e[0m\` (Quits the game after confirmation. Bypass confirmation with \e[32mexit -y\e[0m)"
echo
echo -e "You can also ask for help on any specific command, for example:"
echo -e "\`\e[1;32mlook help\e[0m\` to get help specific to the \`\e[1;32mlook\e[0m\` command."
echo
echo -e "If you're ever wondering what to do next, check your \`\e[1;32mquestlog\e[0m\` for ideas,"
echo -e "or you can try to \`\e[1;32mlook \e[34maround\e[0m\` and see what there is to see."
echo
echo -e "There will also occcasionally be \`\e[36msecret commands\e[0m\` to help progress the story."