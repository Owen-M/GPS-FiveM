RegisterCommand("gps", function(source, args, rawCommand)
    if #args < 1 then
        local PlayerCoords = GetEntityCoords(PlayerPedId())

        SetNewWaypoint(PlayerCoords)
    else
        local StreetName = string.sub(rawCommand, 5)

        for street, coords in pairs(streetList) do
            if string.match(string.lower(street), string.lower(StreetName)) then
                TriggerEvent('chatMessage', "GPS", {255, 255, 0}, "Destination Set to " .. street)

                SetNewWaypoint(coords[1], coords[2], coords[3])	
				break
            end
        end
    end
end)
