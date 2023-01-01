exports.ox_target:addSphereZone({
    coords = vec3(-249.4758, -963.1530, 31.2200),
    size = vec3(2, 2, 2),
    rotation = 257.0,
    debug = false,
    options = {
        {
            name = 'open_jobcenter',
            event = 'shy_jobcenter:open',
            icon = 'fa-solid fa-suitcase',
            label = 'Talk with guy'
        }
    }
})

AddEventHandler('shy_jobcenter:setjob1', function(job)
	TriggerServerEvent("shy_jobcenter:setjob1")
end)

AddEventHandler('shy_jobcenter:setjob2', function(job)
	TriggerServerEvent("shy_jobcenter:setjob2")
end)


AddEventHandler('shy_jobcenter:setjob3', function(job)
	TriggerServerEvent("shy_jobcenter:setjob3")
end)



RegisterNetEvent('shy_jobcenter:open', function(job)
    print("Menu was opened")
    lib.registerContext({
        id = 'jobcenter_menu',
        title = 'Job center',
        onExit = function()
            lib.notify({
                title = 'Job center guy',
                description = 'Thank you for your stoppping by',
                type = 'success'
            })
        end,
        options = {
            {
                title = 'Police job',
                description = 'SHOOT HIM !',
                onSelect = function(args)
                    lib.notify({
                        title = 'Job center guy',
                        description = 'Thank you for choosing this job !',
                        type = 'success'
                    })
                end,
                event = 'shy_jobcenter:setjob1'
            },
            {
                title = 'Gardener job',
                description = 'Clean it !',
                onSelect = function(args)
                    lib.notify({
                        title = 'Job center guy',
                        description = 'Thank you for choosing this job !',
                        type = 'success'
                    })
                end,
                event = 'shy_jobcenter:setjob2'
            },
            {
                title = 'FruitPicker job',
                description = 'Pick it !',
                onSelect = function(args)
                    lib.notify({
                        title = 'Job center guy',
                        description = 'Thank you for choosing this job !',
                        type = 'success'
                    })
                end,
                event = 'shy_jobcenter:setjob3'
            }
        }
    })
    lib.showContext('jobcenter_menu')
end)

Citizen.CreateThread(function()
    for _, item in pairs(Config.PedSpawn) do
        local npc2 = CreatePed(4, GetHashKey(Config.ped), item.x, item.y, item.z, item.heading, false, true)
        
        FreezeEntityPosition(npc2, true)	
        SetEntityHeading(npc2, item.heading)
        SetEntityInvincible(npc2, true)
        genderNum = 4
        SetBlockingOfNonTemporaryEvents(npc2, true)
        RequestAnimDict("anim@amb@nightclub@peds@")
        while not HasAnimDictLoaded("anim@amb@nightclub@peds@") do
        Citizen.Wait(1000)
        end
        
            Citizen.Wait(200)	
        TaskPlayAnim(npc2,"anim@amb@nightclub@peds@","amb_world_human_stand_guard_male_base",1.0, 1.0, -1, 9, 1.0, 0, 0, 0)
    end
end)