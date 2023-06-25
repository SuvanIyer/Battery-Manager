repeat
	set chargeState to do shell script "pmset -g batt | awk '{printf \"%s %s\\n\", $4,$5;exit}'"
	set batteryPercent to do shell script "pmset -g batt | egrep -ow '([0-9]{1,3})[%]' | egrep -ow '[0-9]{1,3}'"
	set currentBatteryStr to batteryPercent & "%"
	set delayDuration to 3
	set defualtLowWarning to 30 as integer
	set defaultCharged to 80 as integer
	considering numeric strings
		if chargeState contains "Battery Power" and batteryPercent ≤ defualtLowWarning then
			--display notification "Battery Down to " & (percentLeft) & "%" with title "Connect to Charger" --sound name "Crsytal"
			--to play sound before alert
			do shell script ("afplay /System/Library/Sounds/Blow.aiff")
			display alert " 🪫Battery Low" message "Battery Down to " & (currentBatteryStr) buttons {"Dismiss", "Snooze"} default button "Dismiss"
			
			
			--giving up after 60 , The giving up after parameter specifies the number of seconds the dialog will automatically dismiss if no button is clicked.
			
			if button returned of result is "Snooze" then
				set snoozeOptions to {"5 minutes", "10 minutes", "15 minutes"}
				set snoozeDuration to choose from list snoozeOptions with prompt "Select snooze duration:" default items {"5 minutes"}
				--extract the integer from the selected option
				set delayDuration to word 1 of (snoozeDuration as text) as integer
			end if
			
		else if chargeState contains "AC Power" and batteryPercent ≥ defaultCharged then
			--display notification "Remove Charger Battery at " & (percentLeft) & "%" with title "Battery ---Charged" sound name "Crsytal"
			do shell script ("afplay /System/Library/Sounds/Blow.aiff")
			display alert "🔋Battry Charged" message "Battery Charged to " & (currentBatteryStr)
		end if
	end considering
	delay (delayDuration * 60)
end repeat
