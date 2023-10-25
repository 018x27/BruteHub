local player = game.Players.LocalPlayer

local function resetPlayerCharacter()
    local character = player.Character
    if character then
        local humanoid = character:FindFirstChild("Humanoid")
        if humanoid then
            humanoid.Health = 0
        end
    end
end

resetPlayerCharacter()
