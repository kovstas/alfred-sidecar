do shell script "open -b com.apple.systempreferences /System/Library/PreferencePanes/Displays.prefPane"

set device to (system attribute "Device_Name")

tell application "System Events"
    repeat until (exists window "Displays" of application process "System Settings")
        delay 0.1
    end repeat

    tell process "System Settings"
        set popUpButton to pop up button 1 of group 1 of group 2 of splitter group 1 of group 1 of window "Displays"
        
        repeat until exists popUpButton
            delay 0.1
        end repeat

        click popUpButton

        repeat until exists menu 1 of popUpButton
            delay 0.1
        end repeat


        tell menu 1 of popUpButton
            set menuItem to (first menu item whose name contains device)

            -- Wait for the menu item to appear
            repeat until exists menuItem
                delay 0.1
            end repeat

            click menuItem

            -- Wait until the menu is no longer visible
            repeat while exists menu 1 of popUpButton
                delay 0.1
            end repeat
        end tell
    end tell
end tell

tell application "System Settings" to quit
