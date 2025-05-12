local RSGCore = exports['rsg-core']:GetCoreObject()
lib.locale()

local Webhooks = {
    -- test & default
    ['default'] = 'https://discord.com/api/webhooks/1257638072858968105/Wzog2bgrEApeLvXnAenhGRE9a26x80V5OuAL-aamlNnuCbuAvBqlZ1b-KgrZuV5esJ9W',
    ['testwebhook'] = 'https://discord.com/api/webhooks/1257638072858968105/Wzog2bgrEApeLvXnAenhGRE9a26x80V5OuAL-aamlNnuCbuAvBqlZ1b-KgrZuV5esJ9W',
    -- admin
    ['anticheat'] = 'https://discord.com/api/webhooks/1248114064861958164/rfLQajcoAectpFQ5r6qCDZmrGBNTJQqJEG8wXenG_wat_y2akJjiDx0kCgQO9uSKAxI0',
    ['adminmenu'] = 'https://discord.com/api/webhooks/1267409852636987394/YX5uwPaIvjF3qU4txo8x6uoPz8cgXwyfFDh8N4PcOC87RSEef0ufifNnhN8dbOGJRqK5',
    ['bossmenu'] = 'https://discord.com/api/webhooks/1267409957297455218/KnEdAw5Sjhj3yK9g_cFWClufPUrjR9orkfxdllmWevdtT8nFRisqaJM32JYXbnwtnHIt',
    ['gangmenu'] = 'https://discord.com/api/webhooks/1267409957297455218/KnEdAw5Sjhj3yK9g_cFWClufPUrjR9orkfxdllmWevdtT8nFRisqaJM32JYXbnwtnHIt',
    ['bans'] = 'https://discord.com/api/webhooks/1257638072858968105/Wzog2bgrEApeLvXnAenhGRE9a26x80V5OuAL-aamlNnuCbuAvBqlZ1b-KgrZuV5esJ9W',
    ['joinleave'] = 'https://discord.com/api/webhooks/1248113969026175087/AQtzaXSpqUV_W6ypxdB-eA_1kvziXhZG2c8dD__L2vJK2oxShDVd2Dgaup-G7oTfWwsZ',
    -- help & codes
    ['report'] = 'https://discord.com/api/webhooks/1260635717483233310/JsHUhvjyWoJOLgTnPATvM-Gl7p7kYZnbdsF48VNjZ2i6OuS81RxqIDgZ1G2_GUq3QtBN',
    ["Redeemed_Code"] = "https://discord.com/api/webhooks/1248900786231185480/8XYSWdpO98kV6NiCAfZuJlKHyNFyu-nnSPzqgiaUpkDbf98j7EdWXxdWBve9yXWyGc8s",
    ["Created_Code"]  = "https://discord.com/api/webhooks/1248900711878623323/6uLw7HoDmUjcNUSaCoR4po8ijmxhFv2WGVTEsGYPv1I0jwV2g72GH6xEA9jyutx1vJYd",
    -- chat
    ['ooc'] = 'https://discord.com/api/webhooks/1260635625137115227/8cwmcP9DQEllBaTix2ulkz8Z_XOnp1af0JZMPyw1cH2IQZ4PRoekWmgn9520R7Tn-S-m',
    ['rumor'] = 'https://discord.com/api/webhooks/1260635955874762803/F9SI-BK0FpVg29WTnR7wTzjXMb5W9oZGzaWPur-m8sWGfC9hc8HhNWiLgLv70tx7b-jo',
    ['me'] = 'https://discord.com/api/webhooks/1260635797539786834/r0QnbzAeFLRhVtW9Xy4F3DxRYbQTeznIykgA2qD7NJS5cV_rCKHdZLSek6xvF7jJrjsR',
    ['do'] = 'https://discord.com/api/webhooks/1260635881979510945/QmA_nM075Na8CAw-_z5bChmc65wXtNK9ihe_Jganz5iWeqCwSo8PrzFfHhY3UADf6p2f',

    ["chatreport"] = "https://discord.com/api/webhooks/1260635717483233310/JsHUhvjyWoJOLgTnPATvM-Gl7p7kYZnbdsF48VNjZ2i6OuS81RxqIDgZ1G2_GUq3QtBN",
    ["chatooc"] = "https://discord.com/api/webhooks/1260635625137115227/8cwmcP9DQEllBaTix2ulkz8Z_XOnp1af0JZMPyw1cH2IQZ4PRoekWmgn9520R7Tn-S-m",
    ["chatme"] = "https://discord.com/api/webhooks/1260635797539786834/r0QnbzAeFLRhVtW9Xy4F3DxRYbQTeznIykgA2qD7NJS5cV_rCKHdZLSek6xvF7jJrjsR",
    ["chatdo"] = "https://discord.com/api/webhooks/1260635881979510945/QmA_nM075Na8CAw-_z5bChmc65wXtNK9ihe_Jganz5iWeqCwSo8PrzFfHhY3UADf6p2f",
    ["chatrumor"] = "https://discord.com/api/webhooks/1260635955874762803/F9SI-BK0FpVg29WTnR7wTzjXMb5W9oZGzaWPur-m8sWGfC9hc8HhNWiLgLv70tx7b-jo",
    ["chatrumoric"] = "https://discord.com/api/webhooks/1257638072858968105/Wzog2bgrEApeLvXnAenhGRE9a26x80V5OuAL-aamlNnuCbuAvBqlZ1b-KgrZuV5esJ9W",
    -- customice
    ['weapon_custom'] = 'https://discord.com/api/webhooks/1265455996126494801/5ZJgoOekdzaY50UTE_rkAcKxUSraqqvHFJpI9Av5tuYDtnA6wZ55hNrA623Nnnpdokww',
    -- craft & loot
    ['levels'] = 'https://discord.com/api/webhooks/1266402155951030352/n7UwR_ntzsyDORO8WPmcQoO_lxuUbJ95e4AzhdA_dIkVJ5OxcFtlTvCymZcxkjxPRLuB',
    ['crafting'] = 'https://discord.com/api/webhooks/1257882021833871370/Qom41l8fvccRX8Oc_AutTCZsP7Vf6iyCwxv6DuSvP898c8rKLCFUavvkr-MtzRPpKFwE',
    ['cooking'] = 'https://discord.com/api/webhooks/1370428104060698745/a4V85FTgMnDPlvtSHnnyqV-hcxXpVMPwRnAIAiWtTEy5ywQx5CPYoF2cgpSjVONvs14E',
    ['smelting'] = 'https://discord.com/api/webhooks/1370428196671066293/7JpxIDjj5k1Pr6jDLrUP2C-3A6F_91vXBXF9MIinbONqe-unrOt-WtZNpgxy-4a3S-u7',
    ['loot'] = 'https://discord.com/api/webhooks/1257607160356016138/uO9oYGek7gSl9yipxHpLMEEmBVVu_6vo-ageMmimjmBlGTmPGmf9KY_-1GobCALMR3Az',
    ['looting'] = 'https://discord.com/api/webhooks/1370432698220417044/I-KYpfZ2vSW6kI0CEJNUASrFXpxnGikHFXEBHshO6D5oMiJtwYM_Wjyvc_AnxH5zEOc2',
    ['robberyshop'] = 'https://discord.com/api/webhooks/1370428899841802429/XY9BHV21WOagXPIHCrsPrJuPjWdVEo4ygOXpgiBX4b5IOQs-5nJI8w0XKvo7Y6axh5Hx',
    ['robbing'] = 'https://discord.com/api/webhooks/1257607430238507018/gStaosCtiaznn9RFGs6m5PSN3KmIGI593VrmjhVW5RkGUCfSadVSQpWcI7CdtwkOSzZa',
    ['fishing'] = 'https://discord.com/api/webhooks/1257544138769957028/ChvMbmnCfHla-2pO0Svw0Z-ybohO7UEyyVlr4YHLDLXEuRaxBbyUAerBwF1tXrj4WMbv',
    ['trapfishing'] = 'https://discord.com/api/webhooks/1370424298963210261/UKX5lOvdlMDDpXfG4wb6KlTxC9ZEyfMuRZm4jVMktet9j1Lk8LD_0MJZxNmbL49NpTtz',
    ['goldpanning'] = 'https://discord.com/api/webhooks/1359280690054561912/8sn7k4ktmITRA5pxp-NpiSm2ONXdkzZ9YYqvLL10FXQ3akMfzjIB4ItcSWMXxCzdE2L3',
    -- money
    ['playermoney'] = 'https://discord.com/api/webhooks/1248116942888374292/ht9whYfkPlquzU6dIaxaNp8bFjrlOIpY5PmgkesqNCs1CiSMlrMERwodZ4-ll7EVoMHs',
    ['banking'] = 'https://discord.com/api/webhooks/1248116942888374292/ht9whYfkPlquzU6dIaxaNp8bFjrlOIpY5PmgkesqNCs1CiSMlrMERwodZ4-ll7EVoMHs',
    ['shops'] = 'https://discord.com/api/webhooks/1248299675400929290/sHnbVwQMuInW1YqyA2U_2KJKKKZCbostdPjAssvX8nl2DTZ_Hz5y8DEJZwGSTpquEcvU',
    ['rex-fishmonger'] = 'https://discord.com/api/webhooks/1370427147197616151/U3Z0yZUAk_mzMHfYZX9VLlgAu7HGiS4Mj85UppkKFZH3sSoxcSSzpQQ_4DqLn1sBpnfo',
    ['rexbutcher'] = 'https://discord.com/api/webhooks/1370428482974122054/bJSxIME3mAbc4EwS16mtEL2uJxfqx8Q8VUydm_ZqsmGUfL4KPuj5FdHgB6ZcA7v78hwP',
    ['rextrapper'] = 'https://discord.com/api/webhooks/1370425862184370266/eGk48c5WHSHfqYJ5x9FRyp-2yIc12T2Zyr5dmWUCFVC59F7oNXfT4t5GmpaJR54uiOsa',
    ['dealers'] = 'https://discord.com/api/webhooks/1370425963955093584/aAfRA2G8eCv2nZAzA0RxLQwzco5JqYLSXOuG-cmzqrqLeBfiSBXrJDqX1qP7aD0Zstcm',
    ['rextrader'] = 'https://discord.com/api/webhooks/1370426053088120874/paDS_V8vN-IceEBKgRweycn9R4BoxEgQL8cv0hN2lsR9rgb_j_6U5qSdBx7Lj8CpiObU',
    -- inventory
    ['playerinventory'] = 'https://discord.com/api/webhooks/1267407662329364480/XRZ5hFB0KAEIeWrKaM2l1-HQa_x2QRpEcBl8Wz_e_wkRVVzETXlUf3qXge-_MW3MVOcv',
    ['stash'] = 'https://discord.com/api/webhooks/1370426310672777297/xo2CGvdnnh1lzLJDFMFXPwlWQwjJirexCAihBQaojMp-7yx_er6hQM4Wm-i95OHTde-E',
    ['drop'] = 'https://discord.com/api/webhooks/1370426396815396885/uAOVzKdkTq34OM5HTJqt5lz-X_uKdDGo1QwCGzGa-h_J0Ofyhs224zNY-AM16ucVHJ6I',
    ['hotel'] = 'https://discord.com/api/webhooks/1370426636977311854/KXpjkUPhNM80LkPTofITfW5mb6CbSq8XiJDTpc2YYrr4zqzBDtFP8JpORP9PtpjFOFDg',
    ['rexhouses'] = 'https://discord.com/api/webhooks/1257841087490424854/0JshhpCAQTzfTFvFoK2XWfiyHv715x_Y9SHUlVCg3TebQsKJHh-WNzMi6CKIS5hak6NY',
    ['rexmarket'] = 'https://discord.com/api/webhooks/1370427852767629373/wvQ2PT95UXwgTBvza4UqQNExm66vWbFkKzOyxMr6aPxj-6Kr6JpA9vOervJxaO0PD_aS',
    -- events
    ['death'] = 'https://discord.com/api/webhooks/1256633774792376381/iQPXkaWrDKQX3IqeAWMXPlcBemuKIA0iDQ0BHxjH4S77Sm17Yh2GbkO8LTBWwHh0fU03',
    ['petinfo'] = 'https://discord.com/api/webhooks/1370431359633457223/vi9kUikG33V15tPUoeA0d_RczryNuoK2rnK5iz-562jSoHllV1jcvv3qfX9rUQ5pFoUQ',
    ['poster'] = 'https://discord.com/api/webhooks/1370431772667543663/H3mR7m8ruJWipcZxdlV8U2qeeP73_NuI69alPYOPMBbsWawTjlSRgmpjXDqkLDoxnTxe',
    ['legendarymap'] = 'https://discord.com/api/webhooks/1265122181478744148/tKZl5dWG_lvSclT6kdg87lAjEwBCDxCDgYnr4gCDYyE-J9jg3qfKkD_D7UgenG8ufA4f',
    ['wildhorse'] = 'https://discord.com/api/webhooks/1248940878056394823/f_lq_PeslXPN0_k4ooRB0UJJNEdgpqCz04y911SfpOzfeciEh_rvKEt6TVxHishQbTa7',
    ['build'] = 'https://discord.com/api/webhooks/1360270286015954964/45kzSHedzm9FsTnHTeFyFTbjXiG8xtqK6ASYiX3jcUSAIfIag11mHM6tt2_FS09W6veN',
    -- bets
    ['blackjack'] = 'https://discord.com/api/webhooks/1370450507394449599/7Ir9so6CWoWRcNqoKyqOvCiqXY9UmH4IKAq6vzTus0_H-uGNZjiTxxV60al0gen5iGkd',
    -- jobs
    ['horsetrainer'] = 'https://discord.com/api/webhooks/1256633988018081842/UXS-ASrgVIeZp1nVtaLAzta2EpeM81FVxwHM1rViZD1WbDJ2HPEGNHTXU75uCfJvwqIB',
    ['beekeeper'] = 'https://discord.com/api/webhooks/1370431914195947550/w3oDSuD0jMLBtAQR3F-s7QaRjDWVyMseoJG-Jz_8Pq7UwoFrIqcEGC2jOgC7XePZLW4j',
    ['ranch'] = 'https://discord.com/api/webhooks/1370432070773510175/3cNZ5UI4XDwEJlg9FXOs1XcfSYmdRRQX60gfsMutTsnZo-XpJ_5NAPInZJJYKYVr3MxI',
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
