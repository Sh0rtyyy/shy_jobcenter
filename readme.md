ADDING NEW JOB

1. Copy this and paste it inside the server.lua
    
    RegisterServerEvent("shy_jobcenter:setjob4") 
    AddEventHandler('shy_jobcenter:setjob4', function(job)
        local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.setJob("job", 0)
    end)

    With EVERY NEW job/event which you will paste inside the server.lua change the number after setjob at RegisterServerEvent and AddEventHandler

2. Copy this and paste it inside the client.lua

    AddEventHandler('shy_jobcenter:setjob4', function(job)
	    TriggerServerEvent("shy_jobcenter:setjob4")
    end)

    With EVERY NEW job/event which you will paste inside the client.lua change the number after setjob at AddEventHandler and TriggerServerEvent

3. Copy this and paste it inside the client.lua

    {
        title = 'TITTLE',
        description = 'DESCRIPTION',
        onSelect = function(args)
            lib.notify({
                title = 'Job center lady',
                description = 'Thank you for choosing this job !',
                type = 'success'
            })
        end,
        event = 'shy_jobcenter:setjob4'
    },

    With EVERY NEW added context menu change the event with your new one

THERE IS NO SUPPORT FOR THE SCRIPT !!!