RegisterNetEvent("x-autobrander-client-breakopenvehicle")
AddEventHandler("x-autobrander-client-breakopenvehicle", function()
    local car = ESX.Game.GetVehicleInDirection()
    local kans = math.random(100)
    ESX.TriggerServerCallback("x-autobrander:checkinv", function(heeftbrander)
        if DoesEntityExist(car) then
            if heeftbrander then
                if kans <= 80 then
                    TaskStartScenarioInPlace(GetPlayerPed(-1), 'WORLD_HUMAN_WELDING', 0, true)
                    Citizen.Wait(20000)
                    ClearPedTasksImmediately(GetPlayerPed(-1))
            
                    SetVehicleDoorsLocked(car, 1)
                    SetVehicleDoorsLockedForAllPlayers(car, false)
                else
                    ESX.ShowNotification("Het is niet gelukt om het voertuig opentebreken..")
                end
            else
                ESX.ShowNotification("Je hebt geen snijbrander om het voertuig mee te openen..")
            end
        else
            ESX.ShowNotification("Zorg dat er een voertuig in de buurt staat")
        end
    end, 'snijbrander')
end)
