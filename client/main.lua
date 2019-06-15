local units = {
    { name = "1", x = -1493.4108886719, y = -667.97552490234, z = 29.025072097778, h = 141.66059875488 },
    { name = "2", x = -1498.0126953125, y = -664.73162841797, z = 29.025087356567, h = 139.73707580566 },
    { name = "3", x = -1495.3590087891, y = -661.5869140625, z = 29.025087356567, h = 37.434795379639 },
    { name = "4", x = -1490.6943359375, y = -658.30841064453, z = 29.025085449219, h = 31.892972946167 },
    { name = "5", x = -1486.6990966797, y = -655.400390625, z = 29.583061218262, h = 44.836574554443 },
    { name = "6", x = -1482.2397460938, y = -652.07183837891, z = 29.583070755005, h = 37.552642822266 },
    { name = "7", x = -1478.1522216797, y = -649.14929199219, z = 29.583068847656, h = 41.937004089355 },
    { name = "8", x = -1473.638671875, y = -645.89965820313, z = 29.583070755005, h = 33.83963394165 },
    { name = "9", x = -1469.6915283203, y = -643.04486083984, z = 29.58306312561, h = 34.934692382813 },
    { name = "10", x = -1465.1202392578, y = -639.73565673828, z = 29.583057403564, h = 32.041797637939 },
    { name = "11", x = -1461.3092041016, y = -640.90069580078, z = 29.583116531372, h = 311.34841918945 },
    { name = "12", x = -1452.4534912109, y = -653.18786621094, z = 29.583168029785, h = 303.05084228516 },
    { name = "13", x = -1454.4317626953, y = -655.91137695313, z = 29.583066940308, h = 214.37561035156 },
    { name = "14", x = -1458.9293212891, y = -659.1708984375, z = 29.583070755005, h = 214.57518005371 },
    { name = "15", x = -1462.9853515625, y = -662.11376953125, z = 29.58306312561, h = 221.27893066406 },
    { name = "16", x = -1467.5111083984, y = -665.48724365234, z = 29.583076477051, h = 219.95883178711 },
    { name = "17", x = -1471.5029296875, y = -668.43005371094, z = 29.583135604858, h = 217.13919067383 },
    { name = "18", x = -1461.2722167969, y = -640.96722412109, z = 33.381278991699, h = 311.44879150391 },
    { name = "19", x = -1457.9284667969, y = -645.58898925781, z = 33.38126373291, h = 309.779296875 },
    { name = "20", x = -1455.6176757813, y = -648.60144042969, z = 33.38126373291, h = 307.29852294922 },
    { name = "21", x = -1452.4313964844, y = -653.25042724609, z = 33.38126373291, h = 315.30813598633 },
    { name = "22", x = -1454.3692626953, y = -655.92211914063, z = 33.38126373291, h = 218.53300476074 },
    { name = "23", x = -1458.8846435547, y = -659.21154785156, z = 33.38126373291, h = 216.92980957031 },
    { name = "24", x = -1462.9821777344, y = -662.12194824219, z = 33.38126373291, h = 220.32763671875 },
    { name = "25", x = -1467.5938720703, y = -665.45080566406, z = 33.38126373291, h = 223.64576721191 },
    { name = "26", x = -1471.5115966797, y = -668.3291015625, z = 33.38126373291, h = 221.21588134766 },
    { name = "27", x = -1476.0572509766, y = -671.63409423828, z = 33.381259918213, h = 218.13548278809 },
    { name = "28", x = -1465.1075439453, y = -639.716796875, z = 33.381233215332, h = 36.979179382324 },
    { name = "29", x = -1469.6530761719, y = -642.92132568359, z = 33.381233215332, h = 42.376525878906 },
    { name = "30", x = -1473.6602783203, y = -645.88873291016, z = 33.381233215332, h = 33.006782531738 },
    { name = "31", x = -1478.2044677734, y = -649.17175292969, z = 33.381233215332, h = 36.663181304932 },
    { name = "32", x = -1482.2258300781, y = -652.05767822266, z = 33.381225585938, h = 34.52751159668 },
    { name = "33", x = -1486.7827148438, y = -655.40203857422, z = 33.381225585938, h = 38.338356018066 },
    { name = "34", x = -1490.8363037109, y = -658.32556152344, z = 33.381225585938, h = 34.00666809082 },
    { name = "35", x = -1495.2647705078, y = -661.63946533203, z = 33.381225585938, h = 40.591598510742 },
    { name = "36", x = -1498.1085205078, y = -664.56823730469, z = 33.381225585938, h = 141.62588500977 },
    { name = "37", x = -1493.7041015625, y = -668.32208251953, z = 33.381225585938, h = 141.84553527832 },
    { name = "38", x = -1489.8410644531, y = -671.50451660156, z = 33.381225585938, h = 141.62579345703 },
}

local aptCenter = { name = "Apartment Center", x = 152.89125061035, y = -1003.552734375, z = -99.000007629395, h = 172.08116149902 }
local aptDoor = { name = "Apartment Exit", x = 151.73556518555, y = -1008.3207397461, z = -99.0, h = 23.70355796814 }
local aptStash = { name = "Apartment Stash", x = 150.77499389648, y = -1003.1009521484, z = -98.999992370605, h = 59.155685424805 }
local aptOutfits = { name = "Apartment Outfits", x = 151.07922363281, y = -1001.5975952148, z = -98.999992370605, h = 109.99528503418 }
local aptLogout = { name = "Apartment Logout", x = 154.86790466309, y = -1002.5935668945, z = -98.999992370605, h = 259.78408813477 }

local inApartment = false

RegisterNetEvent('mythic_instances:client:onCreate')
AddEventHandler('mythic_instances:client:onCreate', function(instance)
	if instance.type == 'apartment' then
		TriggerEvent('mythic_instances:client:enter', instance)
	end
end)

RegisterNetEvent('mythic_instances:client:onPlayerLeft')
AddEventHandler('mythic_instances:client:onPlayerLeft', function(instance, player)
	if player == instance.host then
		TriggerEvent('mythic_instances:client:leave')
	end
end)

RegisterNetEvent('mythic_instances:client:onPlayerLeft')
AddEventHandler('mythic_instances:client:onPlayerLeft', function(instance, player)
	if player == instance.host then
		TriggerEvent('mythic_instances:client:leave')
	end
end)

AddEventHandler('mythic_instances:client:loaded', function()
    TriggerEvent('mythic_instances:client:registerType', 'apartment', function(instance)
        print('Entering Instance ...')
	end, function(instance)
        print('Exiting Instance ...')
	end)
end)

RegisterNetEvent('mythic_characters:client:CharacterSpawned')
AddEventHandler('mythic_characters:client:CharacterSpawned', function()
    CheckIfInApt()
end)

function CheckIfInApt()
    local apt = units[PlayerId() + 1]
    local plyCoords = GetEntityCoords(GetPlayerPed(-1), 0)
    local cntrDistance = GetDistanceBetweenCoords(aptCenter.x, aptCenter.y, aptCenter.z, plyCoords["x"], plyCoords["y"], plyCoords["z"], true)
    print(cntrDistance < 25 and not inApartment)
    if cntrDistance < 25 and not inApartment then
        inApartment = true
        TriggerEvent('mythic_instances:client:create', 'apartment', {room = apt.name, owner = GetPlayerServerId(PlayerId(-1))})
        InApartment()
    end
end

function InApartment()
    local apt = units[PlayerId() + 1]
    Citizen.CreateThread(function()
        Citizen.Wait(1500)
        while inApartment do
            Citizen.Wait(0)
            plyCoords = GetEntityCoords(GetPlayerPed(-1), 0)
            local exitDistance = GetDistanceBetweenCoords(aptDoor.x, aptDoor.y, aptDoor.z, plyCoords["x"], plyCoords["y"], plyCoords["z"], true)
            local stashDistance = GetDistanceBetweenCoords(aptStash.x, aptStash.y, aptStash.z, plyCoords["x"], plyCoords["y"], plyCoords["z"], true)
            local outfitsDistance = GetDistanceBetweenCoords(aptOutfits.x, aptOutfits.y, aptOutfits.z, plyCoords["x"], plyCoords["y"], plyCoords["z"], true)
            local logoutDistance = GetDistanceBetweenCoords(aptLogout.x, aptLogout.y, aptLogout.z, plyCoords["x"], plyCoords["y"], plyCoords["z"], true)

            if stashDistance < 1 then
                exports['mythic_base']:Print3DText(aptStash, '~y~[E] ~s~View Stash')
                if IsControlJustReleased(0, 54) then
                    TriggerServerEvent('mythic_apartment:server:GetStash')
                end
            else
                exports['mythic_base']:Print3DText(aptStash, '~s~Stash')
            end

            if outfitsDistance < 1 then
                exports['mythic_base']:Print3DText(aptOutfits, '~y~[E] ~s~View Outfits')
                if IsControlJustReleased(0, 54) then
                    TriggerServerEvent('mythic_clotheshop:server:PrepareCloset')
                end
            else
                exports['mythic_base']:Print3DText(aptOutfits, 'Outfits')
            end

            if logoutDistance < 1 then
                exports['mythic_base']:Print3DText(aptLogout, '~y~[E] ~s~Logout')

                if IsControlJustReleased(0, 54) then
                    inApartment = false
                    TriggerEvent('mythic_instances:client:leave')
                    TriggerServerEvent('mythic_characters:server:Logout')
                end
            else
                exports['mythic_base']:Print3DText(aptLogout, 'Logout')
            end

            if exitDistance < 1 then
                exports['mythic_base']:Print3DText(aptDoor, '~y~[E] ~s~Exit Apartment')
                if IsControlJustReleased(0, 54) then
                    inApartment = false
                    TriggerEvent('mythic_instances:client:leave')
                    SendNUIMessage({ action = "exit" })
                    SetEntityCoords(GetPlayerPed(-1), apt.x, apt.y, apt.z)
                    SetEntityHeading(GetPlayerPed(-1), apt.h)
                    Citizen.Wait(1500)
                end
            else
                exports['mythic_base']:Print3DText(aptDoor, 'Exit Apartment')
            end
        end
    end)
end

Citizen.CreateThread(function()
    local apt = units[PlayerId() + 1]
    while true do
        Citizen.Wait(1)
        if not exports['mythic_base']:GetIfChoosing() then
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), 0)
            local distance = GetDistanceBetweenCoords(apt.x, apt.y, apt.z, plyCoords["x"], plyCoords["y"], plyCoords["z"], true)
            if distance < 20 then
                DrawMarker(22, apt.x, apt.y, apt.z, 0, 0, 0, 0, 0, 0, 0.5, 0.5, 1.0, 1, 157, 0, 155, true, false, 2, true, false, false, false)

                if not IsPedInAnyVehicle(GetPlayerPed(), true) then
                    if distance < 1 then
                        exports['mythic_base']:Print3DText(apt, '~y~[E] ~s~Enter Apartment')
                        if IsControlJustReleased(0, 54) then
                            inApartment = true
                            TriggerEvent('mythic_instances:client:create', 'apartment', {room = apt.name, owner = GetPlayerServerId(PlayerId(-1))})
                            SendNUIMessage({ action = "enter" })
                            SetEntityCoords(GetPlayerPed(-1), aptDoor.x, aptDoor.y + 1, aptDoor.z)
                            SetEntityHeading(GetPlayerPed(-1), aptDoor.h)
                            InApartment()
                        end
                    end
                end
            else
                Citizen.Wait(5000)
            end
        end
    end
end)