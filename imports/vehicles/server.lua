---Spawns a vehicle at a given coordinates
---@param model string | number
---@param coordinates vector3
---@param heading? number
---@param isNetworked? boolean
---@param netMissionEntity? boolean
---@return integer
function CZE.Vehicle.Create(model, coordinates, heading, isNetworked, netMissionEntity)
    
    RequestModel(model)

    while not HasModelLoaded(model) do
        Wait(0)
    end

    local handle = CreateVehicle(model, coordinates.x, coordinates.y, coordinates.z, heading or 0, isNetworked or false, netMissionEntity or false)

    SetModelAsNoLongerNeeded(model)

    return handle

end