local GC = getconnections or get_signal_cons
    if GC then
        for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
            if v["Disable"] then
                v["Disable"](v)
            elseif v["Disconnect"] then
                v["Disconnect"](v)
        end
    end
end

game.Players.LocalPlayer.Idled:Connect(function()
    local VU = game.VirtualUser
    VU:CaptureController()
    VU:ClickButton2(Vector2.new())
end)
