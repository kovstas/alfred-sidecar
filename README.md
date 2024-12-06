# <img src='https://github.com/kovstas/alfred-sidecar/raw/main/icon.png' width='30px'> Alfred Sidecar Workflow

This Alfred workflow allows you to quickly connect your iPad as a Sidecar display using the `sc` command.

## Requirements

- macOS Ventura or later
- iPadOS 14 or later
- Alfred 5 or later

## Installation

1. Download the latest release of the workflow from the [releases page](https://github.com/kovstas/alfred-sidecar/releases).
2. Double-click the downloaded `.alfredworkflow` file to install the workflow in Alfred.

## Usage

To connect your iPad as a Sidecar display, simply type `sc` in Alfred and press Enter. Your iPad should automatically connect as a Sidecar display.

## Configuration

- **Device Name**: This workflow uses the device name to locate your device in the device list. You can use either the full name or part of the device name.
- **Mirror Section Name**: This variable identifies the section in the add screen popup menu under Display settings that is responsible for display mirroring. By default, it uses the keyword "Mirror" to find the correct device in the list. If you're using a different locale, change this value to the corresponding keyword for your locale.

## License

This workflow is licensed under the [MIT License](LICENSE).
