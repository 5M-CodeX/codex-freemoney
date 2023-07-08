# CodeX FreeMoney

This is a simple resource for FiveM that provides a command to give players free money in their bank account. Players can use the `/freemoney` command to receive a specified amount of money once every hour.

## Requirements
- [NDCore](https://github.com/ND-Framework/ND_Core) resource (Make sure to have it installed and loaded on your server)

## Installation
1. Download or clone this repository.
2. Place the `codex-freemoney` folder into your FiveM server's `resources` directory.
3. Make sure you have the `NDCore` resource installed and loaded on your server.
4. Add `ensure codex-freemoney` to your server.cfg file.
5. Start or restart your FiveM server.

## Usage
- Players can use the command `/freemoney` in the in-game chat to receive free money.
- The command can only be used once every hour. If a player tries to use the command within the cooldown period, they will receive a message indicating the remaining time.

## Customization
- You can modify the amount of money given to players by changing the value in the `NDCore.Functions.AddMoney` function call in `server.lua` file.
- Adjust the `cooldownDuration` variable to change the cooldown duration in seconds.

## Contributing
Contributions are welcome! If you have any suggestions, improvements, or bug fixes, feel free to open an issue or submit a pull request.

## License
This resource is licensed under the [MIT License](LICENSE).

## Credits
This resource was created by [TheStoicBear](https://github.com/TheStoicBear).

