local apartment = nil
local inApartment = false
local isLoggedIn = false

function Print3DText(coords, text)
	local onScreen, _x, _y = World3dToScreen2d(coords.x, coords.y, coords.z)

	if onScreen then
		SetTextScale(0.35, 0.35)
		SetTextFont(4)
		SetTextProportional(1)
		SetTextColour(255, 255, 255, 255)
		SetTextDropShadow(0, 0, 0, 55)
		SetTextEdge(0, 0, 0, 150)
		SetTextDropShadow()
		SetTextOutline()
		SetTextEntry("STRING")
		SetTextCentre(1)
		AddTextComponentString(text)
		DrawText(_x,_y)

		local factor = (string.len(text)) / 370
		DrawRect(_x,_y + 0.0125, 0.015 + factor, 0.03, 255, 0, 0, 68)
	end
end


RegisterNetEvent('mythic_apartment:client:InformOfApartment')
AddEventHandler('mythic_apartment:client:InformOfApartment', function(data)
    apartment = data
end)

RegisterNetEvent('mythic_characters:client:Logout')
AddEventHandler('mythic_characters:client:Logout', function()
    isLoggedIn = false
end)

RegisterNetEvent('mythic_apartment:client:SpawnInApartment')
AddEventHandler('mythic_apartment:client:SpawnInApartment', function()
    inApartment = true
    TriggerServerEvent('mythic_sounds:server:PlayOnSource', 'door_open', 0.1)
    SetEntityCoords(PlayerPedId(), apartment[2].x, apartment[2].y + 1, apartment[2].z)
    SetEntityHeading(PlayerPedId(), apartment[2].h)
    InApartment()
    DoScreenFadeIn(500)
end)

RegisterNetEvent('mythic_characters:client:CharacterSpawned')
AddEventHandler('mythic_characters:client:CharacterSpawned', function()
    --CheckIfInApt()

    isLoggedIn = true
    Citizen.CreateThread(function()
        while isLoggedIn do
            local plyCoords = GetEntityCoords(PlayerPedId(), 0)
            local distance = #(vector3(apartment[1].x, apartment[1].y, apartment[1].z) - plyCoords)
            if distance < 20 then
                DrawMarker(22, apartment[1].x, apartment[1].y, apartment[1].z, 0, 0, 0, 0, 0, 0, 0.5, 0.5, 1.0, 1, 157, 0, 155, true, false, 2, true, false, false, false)

                if not IsPedInAnyVehicle(PlayerPedId(), true) then
                    if distance < 1 then
                        Print3DText(apartment[1], '~c~[E] ~s~Enter Apartment')
                        if IsControlJustReleased(1, 51) then
                            Citizen.CreateThread(function()
                                DoScreenFadeOut(500)
                                while not IsScreenFadedOut() do
                                    Citizen.Wait(10)
                                end
                        
                                inApartment = true
                                TriggerServerEvent('mythic_sounds:server:PlayOnSource', 'door_open', 0.1)
                                SetEntityCoords(PlayerPedId(), apartment[2].x, apartment[2].y + 1, apartment[2].z)
                                SetEntityHeading(PlayerPedId(), apartment[2].h)
                                InApartment()
                        
                                Citizen.Wait(100)
                        
                                DoScreenFadeIn(1000)
                            end)
                        end
                    end
                end
            else
                Citizen.Wait(math.floor((distance - 20) * 30))
            end
            Citizen.Wait(1)
        end
    end)
end)

function CheckIfInApt()
    for k, v in pairs(apartments) do
        local plyCoords = GetEntityCoords(PlayerPedId(), 0)
        local cntrDistance = #(vector3(v[2].x, v[2].y, v[2].z) - plyCoords)
        if cntrDistance < 10.0 and not inApartment then     
            inApartment = true
            if v ~= apartment then
                SetEntityCoords(PlayerPedId(), apartment[2].x, apartment[2].y + 1, apartment[2].z)
                SetEntityHeading(PlayerPedId(), apartment[2].h)
            end
            InApartment()
        end
    end
end

function InApartment()
    Citizen.CreateThread(function()
        Citizen.Wait(1500)
        while inApartment do
            Citizen.Wait(0)
            plyCoords = GetEntityCoords(PlayerPedId(), 0)
            local exitDistance = #(vector3(apartment[2].x, apartment[2].y, apartment[2].z) - plyCoords)
            local stashDistance = #(vector3(apartment[3].x, apartment[3].y, apartment[3].z) - plyCoords)
            local outfitsDistance = #(vector3(apartment[4].x, apartment[4].y, apartment[4].z) - plyCoords)
            local logoutDistance = #(vector3(apartment[5].x, apartment[5].y, apartment[5].z) - plyCoords)

            if stashDistance < 1 then
                Print3DText(apartment[3], '~c~[E] ~s~View Stash')
                if IsControlJustReleased(1, 51) then
                    TriggerServerEvent('mythic_apartment:server:GetStash')
                end
            else
                Print3DText(apartment[3], '~s~Stash')
            end

            if outfitsDistance < 1 then
                Print3DText(apartment[4], '~c~[E] ~s~View Outfits')
                if IsControlJustReleased(1, 51) then
                    TriggerServerEvent('mythic_clotheshop:server:PrepareCloset')
                end
            else
                Print3DText(apartment[4], 'Outfits')
            end

            if logoutDistance < 1 then
                Print3DText(apartment[5], '~c~[E] ~s~Logout')

                if IsControlJustReleased(1, 51) then
                    inApartment = false
                    --TriggerEvent('mythic_instances:client:leave')
                    TriggerEvent('mythic_characters:client:ForceCharUpdate', function(status)
                        TriggerServerEvent('mythic_characters:server:Logout')
                    end)
                end
            else
                Print3DText(apartment[5], 'Logout')
            end

            if exitDistance < 1 then
                Print3DText(apartment[2], '~c~[E] ~s~Exit Apartment')
                if IsControlJustReleased(1, 51) then
                    inApartment = false
                    --TriggerEvent('mythic_instances:client:leave')
                    TriggerServerEvent('mythic_sounds:server:PlayOnSource', 'door_close', 0.1)
                    SetEntityCoords(PlayerPedId(), apartment[1].x, apartment[1].y, apartment[1].z)
                    SetEntityHeading(PlayerPedId(), apartment[1].h)
                    Citizen.Wait(1500)
                end
            else
                Print3DText(apartment[2], 'Exit Apartment')
            end
        end
    end)
end