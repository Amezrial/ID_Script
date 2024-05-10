# FiveM Player ID Script with key bind and Notification

This repository contains a FiveM script developed by [Amezrial](https://github.com/Amezrial) for displaying player server IDs above their heads in Fivem.

## Description

The ID Script enables servers to display player IDs above player heads when certain conditions are met. It is useful for moderators and administrators to identify players within the game environment easily.
https://github.com/Amezrial/ID_Script

## Features

- Toggle display of player IDs using the Left Alt key.
- ID Display: On (in green) and ID Display: Off (in red) will display when the key bind is initiated. 
- Check permissions dynamically through Discord roles.
- Lightweight and easy to integrate into existing FiveM servers.
  
![image](https://github.com/Amezrial/ID_Script/assets/44910717/53f74a4c-e01e-4b55-89ee-23d70f6cca5f)
![image](https://github.com/Amezrial/ID_Script/assets/44910717/145c1577-2317-427e-b7c9-912ff2b531ef)

![image](https://github.com/Amezrial/ID_Script/assets/44910717/be216b54-41a1-4c4a-8d3d-acbcaf53353b)


## Installation

1. Drag ID_Script into your FiveM resources directory

2. Add the following line to your server config to ensure the script is loaded:
start ID_Script 

Define permission in your Server.cfg for toggling ID display
add_ace group.Discordgroup "idabovehead.toggle" allow
add_principal identifier.discord:000000000000 group.Discordgroup

(Make sure this role is in your DiscordAcePerms and Badger_Discord_API)

example:
add_ace group.staff "idabovehead.toggle" allow                            
add_principal identifier.discord:010101010101 group.staff                  




### Dependencies

- **DiscordAcePerms**: Required for managing permissions based on Discord roles.
- **Badger_Discord_API**: Needed to interface with Discord for role management.

## Usage

Press `Left Alt` to toggle the ID display on or off. This action checks permissions to ensure that only authorized users can view player IDs.

## Contributions

Contributions are welcome. Please fork the repository and submit pull requests with your suggested changes.

## License

This project is open-source and available to everyone.

## Contact

For issues, suggestions, or contributions, please contact [Amezrial](https://github.com/Amezrial) through GitHub.


