-- Amezrial's ID_Script with Keybind and Notifications--

local displayId = false
local hasPermission = false
local maxDistance = 20.0  -- IDs will only show if players are within 20 meters

-- Function to request permission from the server
function requestPermission()
    TriggerServerEvent('checkPermissionForIDDisplay')
end

-- Event handler for permission response
RegisterNetEvent('enableIDDisplay')
AddEventHandler('enableIDDisplay', function(permission)
    hasPermission = permission
    if hasPermission then
        displayId = not displayId
        if displayId then
            ShowNotification("~g~ID Display: ON")
        else
            ShowNotification("~r~ID Display: OFF")
        end
    else
        ShowNotification("You do not have permission to toggle ID display.")
    end
end)

-- Draw ID function
function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    if onScreen then
        SetTextScale(0.35, 0.35)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
        local factor = (string.len(text)) / 370
        DrawRect(_x, _y+0.0125, 0.015 + factor, 0.03, 41, 11, 41, 68)
    end
end

-- Main loop to display IDs
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(0, 19) then -- Left Alt
            if not hasPermission then  -- Only request permission if not already granted
                requestPermission()
            else
                displayId = not displayId
                ShowNotification(displayId and "~g~ID Display: ON" or "~r~ID Display: OFF")
            end
        end
        if displayId and hasPermission then
            local myCoords = GetEntityCoords(PlayerPedId())
            for _, player in ipairs(GetActivePlayers()) do
                local ped = GetPlayerPed(player)
                local pedCoords = GetEntityCoords(ped)
                local dist = #(myCoords - pedCoords)
                if ped == PlayerPedId() or dist < maxDistance then  -- Include self
                    DrawText3D(pedCoords.x, pedCoords.y, pedCoords.z + 1.2, "ID: " .. GetPlayerServerId(player))
                end
            end
        end
    end
end)

function ShowNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end
