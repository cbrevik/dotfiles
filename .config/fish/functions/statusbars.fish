function statusbars_ios -d "Set statusbars"
    xcrun simctl status_bar booted override --time "12:00" --batteryState charged --batteryLevel 100 --dataNetwork "4g" --cellularBars 4
end

function statusbars_android -d "Set statusbars"
    adb shell settings put global sysui_demo_allowed 1
    adb shell am broadcast -a com.android.systemui.demo -e command clock -e hhmm 1200
    adb shell am broadcast -a com.android.systemui.demo -e command network -e mobile show -e level 4 -e datatype 4g -e wifi false
    adb shell am broadcast -a com.android.systemui.demo -e command battery -e plugged false -e level 100
end