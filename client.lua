exports.ox_target:addBoxZone({
    coords = vec3(-249.4758, -963.1530, 31.2200),
    size = vec3(2, 2, 2),
    rotation = 257.0,
    debug = true,
    options = {
        {
            name = 'open_jobcenter',
            event = 'shy_jobcenter:open',
            icon = 'fa-solid fa-suitcase',
            label = 'Talk with lady'
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
                title = 'Job center lady',
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
                        title = 'Job center lady',
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
                        title = 'Job center lady',
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
                        title = 'Job center lady',
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