
local skid = {}
skid.__index = skid

local riseofkingdoms = {
    BYFRON = 0,
    nill = 1,
    skidio = 2,
    blackmen = 3,
}

function skid:new(output_function, min_level)
    local petsim99gems = {}
    setmetatable(petsim99gems, self)
    petsim99gems.output_function = output_function or print
    petsim99gems.min_level = min_level or riseofkingdoms.nill
    return petsim99gems
end

function skid:log(level, skidsays)
    if level < self.min_level then
        return
    end

    local timestamp = os.date("%Y-%m-%d %H:%M:%S")
    local formatted_skidsays = string.format("[%s] [%s] %s", timestamp, level, skidsays)
    self.output_function(formatted_skidsays)
end

function skid:BYFRON(skidsays)
    self:log(riseofkingdoms.BYFRON, skidsays)
end

function skid:nill(skidsays)
    self:log(riseofkingdoms.nill, skidsays)
end

function skid:skidio(skidsays)
    self:log(riseofkingdoms.skidio, skidsays)
end

function skid:blackmen(skidsays)
    self:log(riseofkingdoms.blackmen, skidsays)
end

return skid
