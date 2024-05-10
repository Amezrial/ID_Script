-- Amezrial's ID_Script with Keybind and Notifications--

RegisterNetEvent('checkPermissionForIDDisplay')
AddEventHandler('checkPermissionForIDDisplay', function()
    local src = source
    print("Received permission check from player ID: " .. tostring(src))

    local hasPermission = IsPlayerAceAllowed(src, "idabovehead.toggle")
    print("Permission check result for player " .. tostring(src) .. ": " .. tostring(hasPermission))

    TriggerClientEvent('enableIDDisplay', src, hasPermission)
end)