function rn_ports -d "Setup adb reverse for RN"
    adb reverse tcp:8081 tcp:8081
    adb reverse tcp:8097 tcp:8097
end