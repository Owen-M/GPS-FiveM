RegisterCommand("gps", function(source, args, rawCommand)
    if #args < 1 then
        local PlayerCoords = GetEntityCoords(PlayerPedId())

        SetNewWaypoint(PlayerCoords)
    else
        local streetName = string.sub(rawCommand, 5)

        for street, coords in pairs(streetList) do
            if string.match(string.lower(v[1]), string.lower(StreetName)) then
                TriggerEvent('chatMessage', "GPS", {255, 255, 0}, "Destination Set to " street)

                SetNewWaypoint(coords)

                break
            end
        end
    end
end)