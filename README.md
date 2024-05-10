# FiveM ID Script

This repository contains a FiveM script developed by [Amezrial](https://github.com/Amezrial) for displaying player server IDs above their heads in Fivem.

## Description

The ID Script enables servers to display player IDs above player heads when certain conditions are met. It is useful for moderators and administrators to easily identify players within the game environment.
https://github.com/Amezrial/ID_Script

## Features

- Toggle display of player IDs using the Left Alt key.
- ID Display: On (in green) and ID Display: Off (in red) will display when the keybind is initiated. 
- Check permissions dynamically through Discord roles.
- Lightweight and easy to integrate into existing FiveM servers.

## Installation

1. Drag ID_Script into your FiveM resources directory.
cd path/to/your/resources

2. Add the following line to your server config to ensure the script is loaded:
start ID_Script 
or 
ensure ID_Script

Define permission for toggling ID display
add_ace group.Discordgroup "idabovehead.toggle" allow
add_principal identifier.discord:000000000000 group.Discordgroup

(Make sure this role is in your DiscordAcePerms and Badger_Discord_API)

example:
add_ace group.staff "idabovehead.toggle" allow                             -- Replace group.staff with Discord Role you want to use.
add_principal identifier.discord:010101010101 group.staff                  --Replace 010101010101 with your Role ID you want to use. 




### Dependencies

- **DiscordAcePerms**: Required for managing permissions based on Discord roles.
- **Badger_Discord_API**: Needed to interface with Discord for role management.

## Usage

Press `Left Alt` to toggle the ID display on or off. This action checks permissions to ensure only authorized users can view player IDs.

## Contributions

Contributions are welcome. Please fork the repository and submit pull requests with your suggested changes.

## License

This project is open source and available under the [MIT License](LICENSE).

## Contact

For issues, suggestions, or contributions, please contact [Amezrial](https://github.com/Amezrial) through GitHub.


