local xpX = GetConvarInt('cze:xpX', 0.07)
local xpY = GetConvarInt('cze_xpY', 2)

---Calculates a players level based on their current XP
---@param currentXP number
---@return number
function CZE.Experience.CalculateLevelFromXP(currentXP)
    
    local level = xpX * math.sqrt(currentXP)

    return level

end

---Returns the amount of XP required for a desired level
---@param desiredLevel number
---@return number
function CZE.Experience.CalculateXPForLevel(desiredLevel)
    
    local xpRequired = (desiredLevel/xpX)^xpY

    return xpRequired

end