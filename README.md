# Battery Manager

A simple script that displays alerts for your battery level so that you can take of your battery and improves it's longevity.

Have you ever been caught off guard by your Mac's battery draining rapidly or forgetting to unplug it when fully charged? The Battery Manager solves these issues by keeping you informed and worry free. This helps you avoid unexpected shutdowns and take necessary actions to preserve your battery's lifespan.

---
## Table of Contents
- [Key Features](#key-features)
- [Installation](#installation)
- [Customisation](#customisation)
- [Compatibility](#compatibility)
- [Dependencies](#dependencies)
- [License](#license)
- [Contact](#contact)
- [Credits](#credits)


## Key Features

- **Battery Level Alerts**: The script displays alerts when your Mac's battery level drops below a certain threshold or when it is charged to a threshold. This ensures that you are always aware of your battery status.

- **Improved Battery Longevity**: By receiving alerts and taking timely actions, you can effectively manage your battery's usage and extend its overall lifespan. Avoiding overcharging and excessive battery drain helps to maintain optimal battery health.

- **Customizable Settings**: The script allows you to customize the battery level thresholds for low battery and charge alerts. Adjust them according to your preferences and usage patterns to receive alerts at the desired levels. You can also customize the deault duration of the alerts.

- **Simplicity and Convenience**: The Battery Manager script is easy to use and requires no complex setup. There is no need of any additional software.The script will continuously monitor your battery level, providing alerts when necessary.
---
## Installation
To use the Battery Alert Script, follow these steps:

  ### For the Script
1. Make sure you have AppleScript Editor installed on your Mac. AppleScript Editor comes pre-installed on macOS.
2. Download or copy the script code.
3. Open AppleScript Editor. You can find it in the "Utilities" folder within the "Applications" folder.
4. Create a new script by clicking on "File" in the menu bar and selecting "New" or by pressing Command + N.
5. Paste the copied code from [Script](https://github.com/SuvanIyer/Battery-Manager/blob/main/BatteryNotification.scpt) into the script editor.
6. Save the script by clicking on "File" in the menu bar and selecting "Save" or by pressing Command + S. Choose a suitable name and location for the script and make sure to use the .scpt file extension. *(The system should do that by default)*
7. Make sure the file is executable by running this in the terminal 
``` chmod +x /path/to/file/batteryScript.scpt ```

8. Place the script in ```~/Applications``` 

  ### For the .plist 
1. Open a text editor of your choice, such as TextEdit or a code editor like Visual Studio Code.
2. Create a new file and save it with a .plist file extension. 
3. Copy the code from [batteryAlert.plist](https://github.com/SuvanIyer/Battery-Manager/blob/main/batteryAlert.plist) and paste it in the file. Make the necessary changes to the file which may include changing the path to your script file.
4. Save the file in ```~/Library/LaunchAgents/```

### Terminal
1. Load the script by typing this in your terminal. Move to the correct directory before you execute the command.
```launchctl load batteryAlert.plist ```

> *(Incase this does not work try replacing `load` to `load -w`)*

2. Check the status 
``` launchctl list |grep batteryAlert ```

This will display the task if the plist was successfully loaded

> **Note:** If you make changes to the scpt file make sure to unlaod the plist and load it again to ensure the changes are updated. Use `launchctl unload batteryAlert.plist ` to unload. 



## Customisation 

### Script

You can customize the script by modifying the following variables:

- `defualtLowWarning`: Set the low battery warning threshold (default: 30).
- `defaultCharged`: Set the fully charged threshold (default: 80).
- `delayDuration`: Set the delay duration in minutes for checking the battery status (default: 3).
- You can also choose to display notifications instead of the alerts by commenting and uncommenting the necessary lines.

### plist
- If you decide to change the file name , please make sure to change it in the .plist file as well.  The changes should be made under `Label`

## Compatibility 

This script is compatible with macOS.

## Dependencies 

No external dependencies are required to run this script.

## License 

This project is licensed under the [MIT License](LICENSE).

## Contact

For any questions or suggestions, please feel free to [contact me](mailto:suvanjr1@gmail.com).

## Credits

The Battery Alert Script was created by [Suvan Iyer](https://github.com/SuvanIyer).


I would also like to acknowledge the following resources that were instrumental in the development of this project:

- [Resource 1](https://gist.github.com/brandon1024/74b81564aa0b91aa8287faaa175593e6)
- [Resource 2](https://jmmoloney.com/blog/2019/02/06/batteryscript)
- [Resource 3](https://stackoverflow.com/questions/53997451/script-to-play-a-warning-when-battery-level-is-under-a-threshold-in-macos)

Thank you to the open-source community for providing valuable inspiration and sharing knowledge that helped in the creation of this script.

If you have any feedback, bug reports, or feature requests, please don't hesitate to [open an issue](https://github.com/SuvanIyer/Battery-Manager/issues) on this repository.

Your contributions and support are greatly appreciated!

> ***Computer science is a never-ending story of innovation and progress, where the past serves as the foundation for the future.***


---
