ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("shy_jobcenter:setjob1") 
AddEventHandler('shy_jobcenter:setjob1', function(job)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.setJob("police", 0)
end)

RegisterServerEvent("shy_jobcenter:setjob2") 
AddEventHandler('shy_jobcenter:setjob2', function(job)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.setJob("gardener", 0)

end)

RegisterServerEvent("shy_jobcenter:setjob3") 
AddEventHandler('shy_jobcenter:setjob3', function(job)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.setJob("fruitpicker", 0)

end)

--[[RegisterServerEvent('esx_jobcentre:setjobone')
AddEventHandler('esx_jobcentre:setjobone', function(job)
	local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.setJob("police", 0)
	--For example: 	xPlayer.setJob('taxi', 0)
end)]]