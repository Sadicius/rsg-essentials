lib.locale()

AddEventHandler('txAdmin:events:scheduledRestart', function(eventData) -- Gets called every [30, 15, 10, 5, 4, 3, 2, 1] minutes by default according to config
    if eventData.secondsRemaining == 1800 then -- 30mins
        exports.weathersync:setWeather("drizzle", 10.0, false, false)
        print(locale('sv_print_drizzle'))
    elseif eventData.secondsRemaining == 900 then -- 15mins
        exports.weathersync:setWeather("shower", 10.0, false, false)
        print(locale('sv_print_shower'))
    elseif eventData.secondsRemaining == 600 then -- 10mins
        exports.weathersync:setWeather("rain", 10.0, false, false)
        print(locale('sv_print_rain'))
    elseif eventData.secondsRemaining == 300 then -- 5mins
        exports.weathersync:setWeather("thunderstorm", 10.0, false, false)
        print(locale('sv_print_thunderstorm'))
    end
end)
