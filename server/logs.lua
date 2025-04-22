local RSGCore = exports['rsg-core']:GetCoreObject()
lib.locale()

local Webhooks = {
    ['default'] = 'https://discord.com/api/webhooks/1319627877767184465/e0gQ9Og1O7ezFfvE8ovMgENLrNl-vl-vHxjBHraLwD43N_NjSBUhPEnw-oumMpcXYdUD',
    -- gestion
    ['adminmenu'] = 'https://discord.com/api/webhooks/1267409852636987394/YX5uwPaIvjF3qU4txo8x6uoPz8cgXwyfFDh8N4PcOC87RSEef0ufifNnhN8dbOGJRqK5',
    ['bossmenu'] = 'https://discord.com/api/webhooks/1267409957297455218/KnEdAw5Sjhj3yK9g_cFWClufPUrjR9orkfxdllmWevdtT8nFRisqaJM32JYXbnwtnHIt',
    ['gangmenu'] = 'https://discord.com/api/webhooks/1267409957297455218/KnEdAw5Sjhj3yK9g_cFWClufPUrjR9orkfxdllmWevdtT8nFRisqaJM32JYXbnwtnHIt',
    ['anticheat'] = 'https://discord.com/api/webhooks/1248114064861958164/rfLQajcoAectpFQ5r6qCDZmrGBNTJQqJEG8wXenG_wat_y2akJjiDx0kCgQO9uSKAxI0',
    ['bans'] = 'https://discord.com/api/webhooks/1359282230140080358/M8q57wdyoIFACd89nzGVjJMZkr2bu2uMP9_QPG272hGzHjuvKTUj-gIUFMgsSFdrcPyW',
    -- chat
    ['death'] = 'https://discord.com/api/webhooks/1256633774792376381/iQPXkaWrDKQX3IqeAWMXPlcBemuKIA0iDQ0BHxjH4S77Sm17Yh2GbkO8LTBWwHh0fU03',
    ['report'] = 'https://discord.com/api/webhooks/1260635717483233310/JsHUhvjyWoJOLgTnPATvM-Gl7p7kYZnbdsF48VNjZ2i6OuS81RxqIDgZ1G2_GUq3QtBN',
    ['ooc'] = 'https://discord.com/api/webhooks/1260635625137115227/8cwmcP9DQEllBaTix2ulkz8Z_XOnp1af0JZMPyw1cH2IQZ4PRoekWmgn9520R7Tn-S-m',
    ["me"] = "https://discord.com/api/webhooks/1260635797539786834/r0QnbzAeFLRhVtW9Xy4F3DxRYbQTeznIykgA2qD7NJS5cV_rCKHdZLSek6xvF7jJrjsR",
    ["do"] = "https://discord.com/api/webhooks/1260635881979510945/QmA_nM075Na8CAw-_z5bChmc65wXtNK9ihe_Jganz5iWeqCwSo8PrzFfHhY3UADf6p2f",
    ["rumor"] = "https://discord.com/api/webhooks/1260635955874762803/F9SI-BK0FpVg29WTnR7wTzjXMb5W9oZGzaWPur-m8sWGfC9hc8HhNWiLgLv70tx7b-jo",
    -- acceso
    ['joinleave'] = 'https://discord.com/api/webhooks/1248113969026175087/AQtzaXSpqUV_W6ypxdB-eA_1kvziXhZG2c8dD__L2vJK2oxShDVd2Dgaup-G7oTfWwsZ',
    ['levels'] = 'https://discord.com/api/webhooks/1266402155951030352/n7UwR_ntzsyDORO8WPmcQoO_lxuUbJ95e4AzhdA_dIkVJ5OxcFtlTvCymZcxkjxPRLuB',
    -- economia e inventario
    ['playermoney'] = 'https://discord.com/api/webhooks/1248116942888374292/ht9whYfkPlquzU6dIaxaNp8bFjrlOIpY5PmgkesqNCs1CiSMlrMERwodZ4-ll7EVoMHs',
    ['banking'] = 'https://discord.com/api/webhooks/1359282950990074158/fqWIzW9sqzMJXubyUtEZkVx6e7lqvLMyT-pklqwRLMQwiDoAF1OZpdL5GxMBy_pE81yV',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1267407662329364480/XRZ5hFB0KAEIeWrKaM2l1-HQa_x2QRpEcBl8Wz_e_wkRVVzETXlUf3qXge-_MW3MVOcv',
    ['stash'] = 'https://discord.com/api/webhooks/1359281345116770507/uZXNnFsA6rnWY6eFiI3XG7Gogsy9Gu9LYh-_OwAeqBGiHjVkrLxCsI4CGdTfZjI_XySk',
    -- acciones y eventos
    ['robbing'] = 'https://discord.com/api/webhooks/1257607430238507018/gStaosCtiaznn9RFGs6m5PSN3KmIGI593VrmjhVW5RkGUCfSadVSQpWcI7CdtwkOSzZa',
    ['loot'] = 'https://discord.com/api/webhooks/1257607160356016138/uO9oYGek7gSl9yipxHpLMEEmBVVu_6vo-ageMmimjmBlGTmPGmf9KY_-1GobCALMR3Az',
    ['drop'] = 'https://discord.com/api/webhooks/1359280347900149880/flN5kp_-Xdrcf6kDUL87aGDKTlRd_1Fb3HEU_40AoSsJUl8K30A-IGFIkuDhrtgcjDGq',
    ['fishing'] = 'https://discord.com/api/webhooks/1257544138769957028/ChvMbmnCfHla-2pO0Svw0Z-ybohO7UEyyVlr4YHLDLXEuRaxBbyUAerBwF1tXrj4WMbv',
    ['crafting'] = 'https://discord.com/api/webhooks/1257882021833871370/Qom41l8fvccRX8Oc_AutTCZsP7Vf6iyCwxv6DuSvP898c8rKLCFUavvkr-MtzRPpKFwE',
    ['goldpanning'] = 'https://discord.com/api/webhooks/1359280690054561912/8sn7k4ktmITRA5pxp-NpiSm2ONXdkzZ9YYqvLL10FXQ3akMfzjIB4ItcSWMXxCzdE2L3',
    ['wildhorse'] = 'https://discord.com/api/webhooks/1248940878056394823/f_lq_PeslXPN0_k4ooRB0UJJNEdgpqCz04y911SfpOzfeciEh_rvKEt6TVxHishQbTa7',
    ['legendarymap'] = 'https://discord.com/api/webhooks/1265122181478744148/tKZl5dWG_lvSclT6kdg87lAjEwBCDxCDgYnr4gCDYyE-J9jg3qfKkD_D7UgenG8ufA4f',
    ['petinfo'] = 'https://discord.com/api/webhooks/1263651756626415646/XtPT_a4HIhgEuwtmaRvYvapJXW8zNAkgnn3cShzjOr-649MLLQLFRwy6vd67M_MpqCtS',
    ["collectablecards"] 	= "https://discord.com/api/webhooks/1248299279425077338/T2nf1-Z4ajbhy0ang0t553s5hHEEh-y2bYk9AWY-iHnJ7-KUOlAx5dfoVpFpgVgt6SJz",
    -- tiendas
    ['dealers'] = 'https://discord.com/api/webhooks/1359280444075409593/d8Gv1jp9ONtp0dd9ybNlbhV-8WhzbAaW9GQCqUTjzBa1wuz-o6orz0aUZ6hDXadA6iE0',
    ['shops'] = 'https://discord.com/api/webhooks/1248299675400929290/sHnbVwQMuInW1YqyA2U_2KJKKKZCbostdPjAssvX8nl2DTZ_Hz5y8DEJZwGSTpquEcvU',
    ['hotel'] = 'https://discord.com/api/webhooks/1257841087490424854/0JshhpCAQTzfTFvFoK2XWfiyHv715x_Y9SHUlVCg3TebQsKJHh-WNzMi6CKIS5hak6NY',
    -- jobs
    ['horsetrainer'] = 'https://discord.com/api/webhooks/1256633988018081842/UXS-ASrgVIeZp1nVtaLAzta2EpeM81FVxwHM1rViZD1WbDJ2HPEGNHTXU75uCfJvwqIB',
    -- vip
    ["Redeemed_Code"] = "https://discord.com/api/webhooks/1248900786231185480/8XYSWdpO98kV6NiCAfZuJlKHyNFyu-nnSPzqgiaUpkDbf98j7EdWXxdWBve9yXWyGc8s",
    ["Created_Code"]  = "https://discord.com/api/webhooks/1248900711878623323/6uLw7HoDmUjcNUSaCoR4po8ijmxhFv2WGVTEsGYPv1I0jwV2g72GH6xEA9jyutx1vJYd",

    ['testwebhook'] = '',
    ['beekeeper'] = '',
    ['ranch'] = '',
}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

RegisterNetEvent('rsg-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = Config.DiscordWHAuthorName,
                ['icon_url'] = Config.DiscordWHImage,
            },
        }
    }
    PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = Config.DiscordWHLogUserName, embeds = embedData}), { ['Content-Type'] = 'application/json' })
    Citizen.Wait(100)
    if tag then
        PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = Config.DiscordWHLogUserName, content = '@everyone'}), { ['Content-Type'] = 'application/json' })
    end
end)

RSGCore.Commands.Add('testwebhook', locale('sv_test_your_webhook'), {}, false, function()
    TriggerEvent('rsg-log:server:CreateLog', 'testwebhook', locale('sv_test_webhook'), 'default', locale('sv_webhook_successfully'))
end, 'god')
