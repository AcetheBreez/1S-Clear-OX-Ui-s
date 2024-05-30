QBCore = exports['qb-core']:GetCoreObject()

-- Function to clear all Ox UI elements
function clearOxUI()
    -- Hide any active text UI
    lib.closeAlertDialog()

    lib.hideTextUI()

    -- Hide any active dialogs
    lib.hideContext()

    lib.closeInputDialog()

    -- Hide any active contexts
    lib.hideMenu()

    -- Hide any notifications
    lib.cancelProgress()

    lib.hideRadial()

    lib.cancelSkillCheck()



end

function closeOxInventory()
    if exports['ox_inventory']:isOpen() then
        exports['ox_inventory']:closeInventory()
    end
end

-- Command to clear all Ox UI elements
RegisterCommand('clearoxui', function()
    lib.notify({
        title = 'Clearing OX UI\'s',
        ShowDuration = true,
        type = 'success'
    })
    clearOxUI()
end)



RegisterCommand('closeinv', function()
    lib.notify({
        title = 'Force Closing Inventory Now!',
        ShowDuration = true,
        type = 'success'
    })
    
    -- Set a timeout for 8000 milliseconds (8 seconds)
    SetTimeout(2000, function()
        exports.ox_inventory:closeInventory()
    end)
end)


