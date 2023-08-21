Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Commission = 0.10 -- Percent that goes to sales person from a full car sale 10%
Config.FinanceCommission = 0.05 -- Percent that goes to sales person from a finance sale 5%
-- Config.FinanceZone = vector3(-29.53, -1103.67, 26.42)-- Where the finance menu is located
Config.FinanceZones = {
    vector3(-29.53, -1103.67, 26.42), -- Add Vec3
    vector3(-702.0, -417.49, 35.08),  -- Add Vec3
}
Config.PaymentWarning = 30 -- time in minutes that player has to make payment before repo
Config.PaymentInterval = 48 -- time in hours between payment being due
Config.MinimumDown = 10 -- minimum percentage allowed down
Config.MaximumPayments = 24 -- maximum payments allowed
Config.PreventFinanceSelling = true -- allow/prevent players from using /transfervehicle if financed
Config.FilterByMake = false -- adds a make list before selecting category in shops
Config.SortAlphabetically = false -- will sort make, category, and vehicle selection menus alphabetically
Config.HideCategorySelectForOne = false -- will hide the category selection menu if a shop only sells one category of vehicle or a make has only one category
Config.Shops = {
    ['pdm'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-56.727394104004, -1086.2325439453),
                vector2(-60.612808227539, -1096.7795410156),
                vector2(-58.26834487915, -1100.572265625),
                vector2(-35.927803039551, -1109.0034179688),
                vector2(-34.427627563477, -1108.5111083984),
                vector2(-32.02657699585, -1101.5877685547),
                vector2(-33.342102050781, -1101.0377197266),
                vector2(-31.292987823486, -1095.3717041016)
            },
            ['minZ'] = 25.0, -- min height of the shop zone
            ['maxZ'] = 28.0, -- max height of the shop zone
            ['size'] = 2.75 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Premium Deluxe Motorsport', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 50, -- Blip color
        -- ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-45.67, -1098.34, 26.42), -- Blip Location
        ['ReturnLocation'] = vector3(-44.74, -1082.58, 26.68), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location when vehicle is bought
        -- ['TestDriveSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-42.5, -1102.18, 26.74, 354.48), -- where the vehicle will spawn on display
                defaultVehicle = 'ardent', -- Default display vehicle
                chosenVehicle = 'ardent', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-36.98, -1093.62, 26.74, 13.7),
                defaultVehicle = 'schafter2',
                chosenVehicle = 'schafter2'
            },
            [3] = {
                coords = vector4(-54.77, -1096.71, 26.74, 215.52),
                defaultVehicle = 'coquette',
                chosenVehicle = 'coquette'
            },
            [4] = {
                coords = vector4(-50.07, -1083.59, 26.74, 242.75),
                defaultVehicle = 'vigero',
                chosenVehicle = 'vigero'
            },
            [5] = {
                coords = vector4(-48.05, -1092.35, 26.74, 290.63),
                defaultVehicle = 'rhapsody',
                chosenVehicle = 'rhapsody'
            },
        },
    },
    ['lsmotors'] = {
        ['Type'] = 'free-use', -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(186.20181274414, -1089.1232910156),
                vector2(185.8438873291, -1110.3526611328),
                vector2(183.50611877441, -1112.4539794922),
                vector2(175.60713195801, -1112.7623291016),
                vector2(176.35258483887, -1115.4395751953),
                vector2(147.64567565918, -1116.5041503906),
                vector2(148.2717590332, -1112.7955322266),
                vector2(114.72457885742, -1113.6110839844),
                vector2(126.11077880859, -1086.28125),
                vector2(154.65728759766, -1086.4903564453),
                vector2(164.62606811523, -1086.4733886719)
              },
            ['minZ'] = 28.636423110962,
            ['maxZ'] = 28.759801864624,
            ['size'] = 2.75 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'LSMotors',
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 530, -- Blip sprite
        ['blipColor'] = 50, -- Blip color
        -- ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(164.57, -1097.33, 29.59),
        ['ReturnLocation'] = vector3(-1231.46, -349.86, 37.33),
        ['VehicleSpawn'] = vector4(120.59, -1099.12, 28.64, 181.27),
        -- ['TestDriveSpawn'] = vector4(-1232.81, -347.99, 37.33, 23.28), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(181.93, -1095.77, 28.36, 93.45),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx'
            },
            [2] = {
                coords = vector4(181.65, -1100.06, 28.34, 91.54),
                defaultVehicle = 'italigtb',
                chosenVehicle = 'italigtb'
            },
            [3] = {
                coords = vector4(181.64, -1103.85, 28.34, 94.87),
                defaultVehicle = 'coquette',
                chosenVehicle = 'coquette'
            },
            [4] = {
                coords = vector4(181.66, -1107.64, 28.34, 91.32),
                defaultVehicle = 'elegy2',
                chosenVehicle = 'elegy2'
            },
            [5] = {
                coords = vector4(170.82, -1108.14, 28.45, 62.99),
                defaultVehicle = 'flashgt',
                chosenVehicle = 'flashgt'
            },
            [6] = {
                coords = vector4(172.69, -1100.21, 28.45, 90.16),
                defaultVehicle = 'furoregt',
                chosenVehicle = 'furoregt'
            },
            [7] = {
                coords = vector4(170.48, -1114.04, 28.34, 83.64),
                defaultVehicle = 'alpha',
                chosenVehicle = 'alpha'
            },
            [8] = {
                coords = vector4(153.68, -1114.48, 28.34, 273.64),
                defaultVehicle = 'banshee',
                chosenVehicle = 'banshee'
            },
            [9] = {
                coords = vector4(152.46, -1108.42, 28.45, 299.82),
                defaultVehicle = 'bestiagts',
                chosenVehicle = 'bestiagts'
            },
            [10] = {
                coords = vector4(150.26, -1099.78, 28.44, 270.94),
                defaultVehicle = 'buffalo',
                chosenVehicle = 'buffalo'
            },
            [11] = {
                coords = vector4(152.18, -1091.43, 28.44, 239.8),
                defaultVehicle = 'carbonizzare',
                chosenVehicle = 'carbonizzare'
            },
            [12] = {
                coords = vector4(174.73, -1092.38, 28.34, 143.97),
                defaultVehicle = 'nightblade',
                chosenVehicle = 'nightblade'
            },
            [13] = {
                coords = vector4(172.77, -1092.21, 28.34, 147.57),
                defaultVehicle = 'akuma',
                chosenVehicle = 'akuma'
            },
            [14] = {
                coords = vector4(170.79, -1092.16, 28.34, 149.61),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            },
            [15] = {
                coords = vector4(168.84, -1092.25, 28.34, 151.67),
                defaultVehicle = 'carbonrs',
                chosenVehicle = 'carbonrs'
            },
            [16] = {
                coords = vector4(166.77, -1092.29, 28.34, 154.04),
                defaultVehicle = 'hakuchou',
                chosenVehicle = 'hakuchou'
            },
        }
    }, -- Add your next table under this comma
    ['boats'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-729.39, -1315.84),
                vector2(-766.81, -1360.11),
                vector2(-754.21, -1371.49),
                vector2(-716.94, -1326.88)
            },
            ['minZ'] = 0.0, -- min height of the shop zone
            ['maxZ'] = 5.0, -- max height of the shop zone
            ['size'] = 6.2 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Marina Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 410, -- Blip sprite
        ['blipColor'] = 30, -- Blip color
        -- ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-738.25, -1334.38, 1.6), -- Blip Location
        ['ReturnLocation'] = vector3(-714.34, -1343.31, 0.0), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-727.87, -1353.1, -0.17, 137.09), -- Spawn location when vehicle is bought
        -- ['TestDriveSpawn'] = vector4(-722.23, -1351.98, 0.14, 135.33), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-727.05, -1326.59, 0.00, 229.5), -- where the vehicle will spawn on display
                defaultVehicle = 'seashark', -- Default display vehicle
                chosenVehicle = 'seashark' -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-732.84, -1333.5, -0.50, 229.5),
                defaultVehicle = 'dinghy',
                chosenVehicle = 'dinghy'
            },
            [3] = {
                coords = vector4(-737.84, -1340.83, -0.50, 229.5),
                defaultVehicle = 'speeder',
                chosenVehicle = 'speeder'
            },
            [4] = {
                coords = vector4(-741.53, -1349.7, -2.00, 229.5),
                defaultVehicle = 'marquis',
                chosenVehicle = 'marquis'
            },
        },
    },
    ['air'] = {
        ['Type'] = 'managed', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-1607.58, -3141.7),
                vector2(-1672.54, -3103.87),
                vector2(-1703.49, -3158.02),
                vector2(-1646.03, -3190.84)
            },
            ['minZ'] = 12.99, -- min height of the shop zone
            ['maxZ'] = 16.99, -- max height of the shop zone
            ['size'] = 7.0, -- size of the vehicles zones
        },
        ['Job'] = 'pilot', -- Name of job or none
        ['ShopLabel'] = 'Air Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 251, -- Blip sprite
        ['blipColor'] = 32, -- Blip color
        -- ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-1652.76, -3143.4, 13.99), -- Blip Location
        ['ReturnLocation'] = vector3(-1628.44, -3104.7, 13.94), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-1617.49, -3086.17, 13.94, 329.2), -- Spawn location when vehicle is bought
        -- ['TestDriveSpawn'] = vector4(-1625.19, -3103.47, 13.94, 330.28), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1651.36, -3162.66, 12.99, 346.89), -- where the vehicle will spawn on display
                defaultVehicle = 'volatus', -- Default display vehicle
                chosenVehicle = 'volatus' -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-1668.53, -3152.56, 12.99, 303.22),
                defaultVehicle = 'luxor2',
                chosenVehicle = 'luxor2'
            },
            [3] = {
                coords = vector4(-1632.02, -3144.48, 12.99, 31.08),
                defaultVehicle = 'nimbus',
                chosenVehicle = 'nimbus'
            },
            [4] = {
                coords = vector4(-1663.74, -3126.32, 12.99, 275.03),
                defaultVehicle = 'frogger',
                chosenVehicle = 'frogger'
            },
        },
    },
    ['truck'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(872.23, -1173.5),
                vector2(868.88, -1162.7),
                vector2(900.91, -1156.54),
                vector2(901.96, -1173.71),
                vector2(883.59, -1174.47),
                vector2(884.59, -1161.29),
                vector2(890.06, -1155.0),
                vector2(907.71, -1168.71)
            },
            ['minZ'] = 23.0, -- min height of the shop zone
            ['maxZ'] = 28.0, -- max height of the shop zone
            ['size'] = 5.75 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Truck Motor Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 477, -- Blip sprite
        ['blipColor'] = 81, -- Blip color
        -- ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(900.47, -1155.74, 25.16), -- Blip Location
        ['ReturnLocation'] = vector3(900.47, -1155.74, 25.16), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(909.35, -1181.58, 25.55, 177.57), -- Spawn location when vehicle is bought
        -- ['TestDriveSpawn'] = vector4(867.65, -1192.4, 25.37, 95.72), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(890.84, -1170.92, 25.08, 269.58), -- where the vehicle will spawn on display
                defaultVehicle = 'hauler', -- Default display vehicle
                chosenVehicle = 'hauler', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(878.45, -1171.04, 25.05, 273.08),
                defaultVehicle = 'phantom',
                chosenVehicle = 'phantom'
            },
            [3] = {
                coords = vector4(880.44, -1163.59, 24.87, 273.08),
                defaultVehicle = 'mule',
                chosenVehicle = 'mule'
            },
            [4] = {
                coords = vector4(896.95, -1162.62, 24.98, 273.08),
                defaultVehicle = 'mixer',
                chosenVehicle = 'mixer'
            },
        },
    },
    ['sandy'] = {
        ['Type'] = 'managed', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
            vector2(2738.7238769531, 3443.6696777344),
            vector2(2765.4155273438, 3507.5490722656),
            vector2(2687.6025390625, 3539.9252929688),
            vector2(2660.7287597656, 3476.0441894531)
          },
            ['minZ'] = 56.255558013916, -- min height of the shop zone
            ['maxZ'] = 56.25560760498, -- max height of the shop zone
            ['size'] = 3.75 -- size of the vehicles zones
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['ShopLabel'] = 'Sandys Car World', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 523, -- Blip sprite
        ['blipColor'] = 50, -- Blip color
        -- ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(2714.58, 3505.71, 67.83), -- Blip Location
        ['ReturnLocation'] = vector3(900.47, -1155.74, 25.16), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(2709.62, 3436.97, 55.25, 237.2), -- Spawn location when vehicle is bought
        -- ['TestDriveSpawn'] = vector4(867.65, -1192.4, 25.37, 95.72), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = { --Row 1
                coords = vector4(2736.04, 3452.95, 55.48, 1.18), -- where the vehicle will spawn on display
                defaultVehicle = 'i8', -- Default display vehicle
                chosenVehicle = 'i8', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(2724.16, 3457.98, 55.48, 2.31),
                defaultVehicle = '911turbos',
                chosenVehicle = '911turbos',
            },
            [3] = {
                coords = vector4(2712.07, 3463.44, 55.48, 0.58),
                defaultVehicle = 'sv',
                chosenVehicle = 'sv',
            },
            [4] = {
                coords = vector4(2700.06, 3468.37, 55.48, 359.98),
                defaultVehicle = 'SENNA',
                chosenVehicle = 'SENNA',
            },
            [5] = {
                coords = vector4(2687.86, 3472.41, 55.48, 359.92),
                defaultVehicle = '765lt',
                chosenVehicle = '765lt',
            },
            [6] = {
                coords = vector4(2675.86, 3477.82, 55.48, 359.32),
                defaultVehicle = 'aperta',
                chosenVehicle = 'aperta',
            },
            [7] = {
                coords = vector4(2730.28, 3474.08, 55.48, 179.57),
                defaultVehicle = 'escaladesport',
                chosenVehicle = 'escaladesport',
            },
            [8] = {
                coords = vector4(2718.38, 3479.27, 55.48, 179.87),
                defaultVehicle = 'oycdefender',
                chosenVehicle = 'oycdefender',
            },
            [9] = {
                coords = vector4(2706.03, 3484.12, 55.48, 178.31),
                defaultVehicle = 'lcdefender',
                chosenVehicle = 'lcdefender',
            },
            [10] = {
                coords = vector4(2693.82, 3488.7, 55.48, 179.02),
                defaultVehicle = 'nissantitan17',
                chosenVehicle = 'nissantitan17',
            },
            [11] = {
                coords = vector4(2681.83, 3493.86, 55.48, 180.55),
                defaultVehicle = 'rculi',
                chosenVehicle = 'rculi',
            },
            [12] = {
                coords = vector4(2731.44, 3494.63, 55.48, 0.6),
                defaultVehicle = '80b4',
                chosenVehicle = '80b4',
            },
            [13] = {
                coords = vector4(2719.48, 3499.58, 55.48, 359.42),
                defaultVehicle = 'f15078',
                chosenVehicle = 'f15078',
            },
            [14] = {
                coords = vector4(2707.36, 3504.91, 55.48, 359.82),
                defaultVehicle = '84rx7k',
                chosenVehicle = '84rx7k',
            },
            [15] = {
                coords = vector4(2695.3, 3509.52, 55.48, 0.47),
                defaultVehicle = 'gsxb',
                chosenVehicle = 'gsxb',
            },
            [16] = {    --Row 4
                coords = vector4(2755.74, 3501.78, 55.48, 178.25),
                defaultVehicle = 'remower',
                chosenVehicle = 'remower',
            },
            [17] = {
                coords = vector4(2743.63, 3506.67, 55.48, 179.51),
                defaultVehicle = 'lambokart',
                chosenVehicle = 'lambokart',
            },
            [18] = {
                coords = vector4(2731.46, 3511.58, 55.48, 179.64),
                defaultVehicle = 'foxcoma',
                chosenVehicle = 'foxcoma',
            },
            [19] = {
                coords = vector4(2719.42, 3516.5, 55.48, 179.58),
                defaultVehicle = 'raid',
                chosenVehicle = 'raid',
            },
            [20] = {
                coords = vector4(2707.34, 3522.19, 55.48, 179.64),
                defaultVehicle = 'Safari97',
                chosenVehicle = 'Safari97',
            },
            [21] = {
                coords = vector4(2695.25, 3526.4, 55.48, 180.49),
                defaultVehicle = 'exor',
                chosenVehicle = 'exor',
            },
        },
    },
    ['sanders'] = {
        ['Type'] = 'managed', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(268.89251708984, -1148.6724853516),
                vector2(268.76010131836, -1172.19140625),
                vector2(305.43121337891, -1167.8922119141),
                vector2(305.28854370117, -1148.6160888672)
            },
            ['minZ'] = 26.291687011719, -- min height of the shop zone
            ['maxZ'] = 32.334461212158, -- max height of the shop zone
            ['size'] = 2.25 -- size of the vehicles zones
        },
        ['Job'] = 'sanders', -- Name of job or none
        ['ShopLabel'] = 'Sanders Dealership', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 226, -- Blip sprite
        ['blipColor'] = 50, -- Blip color
        -- ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(277.7, -1153.31, 29.47), -- Blip Location
        ['ReturnLocation'] = vector3(900.47, -1155.74, 25.16), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(274.07, -1159.46, 29.27, 105.58), -- Spawn location when vehicle is bought
        -- ['TestDriveSpawn'] = vector4(867.65, -1192.4, 25.37, 95.72), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(270.56, -1151.31, 28.59, 0.57),
                defaultVehicle = 'zombieb',
                chosenVehicle = 'zombieb',
            },
            [2] = {
                coords = vector4(274.32, -1150.52, 28.59, 71.0),
                defaultVehicle = 'wolfsbane',
                chosenVehicle = 'wolfsbane',
            },
            [3] = {
                coords = vector4(278.72, -1150.5, 28.59, 68.89),
                defaultVehicle = 'vader',
                chosenVehicle = 'vader',
            },
            [4] = {
                coords = vector4(283.16, -1150.54, 28.59, 69.33),
                defaultVehicle = 'thrust',
                chosenVehicle = 'thrust',
            },
            [5] = {
                coords = vector4(290.76, -1150.55, 28.59, 295.03),
                defaultVehicle = 'sovereign',
                chosenVehicle = 'sovereign',
            },
            [6] = {
                coords = vector4(294.98, -1150.5, 28.59, 290.94),
                defaultVehicle = 'sanchez2',
                chosenVehicle = 'sanchez2',
            },
            [7] = {
                coords = vector4(298.35, -1150.48, 28.59, 294.68),
                defaultVehicle = 'sanctus',
                chosenVehicle = 'sanctus',
            },
            [8] = {
                coords = vector4(301.95, -1150.42, 28.59, 295.2),
                defaultVehicle = 'ruffian',
                chosenVehicle = 'ruffian',
            },
            [9] = {
                coords = vector4(303.33, -1151.65, 28.59, 338.67),
                defaultVehicle = 'bagger',
                chosenVehicle = 'bagger',
            },
            [10] = {
                coords = vector4(303.26, -1155.39, 28.59, 344.47),
                defaultVehicle = 'avarus',
                chosenVehicle = 'avarus',
            },
            [11] = {
                coords = vector4(303.29, -1158.85, 28.59, 344.54),
                defaultVehicle = 'double',
                chosenVehicle = 'double',
            },
            [12] = {
                coords = vector4(297.57, -1160.48, 29.29, 235.08),
                defaultVehicle = 'slingshot',
                chosenVehicle = 'slingshot',
            },
        },
    },
    ['oneofone'] = {
        ['Type'] = 'managed', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-591.25842285156, -909.95404052734),
                vector2(-582.39825439453, -914.94549560547),
                vector2(-581.14093017578, -932.58642578125),
                vector2(-591.60882568359, -938.86328125),
                vector2(-598.68823242188, -937.92095947266),
                vector2(-607.90252685547, -923.7197265625),
                vector2(-604.66943359375, -915.09301757812)
            },
            ['minZ'] = 14.360025405884, -- min height of the shop zone
            ['maxZ'] = 20.360359191895, -- max height of the shop zone
            ['size'] = 2.75 -- size of the vehicles zones
        },
        ['Job'] = 'oneofonedealer', -- Name of job or none
        ['ShopLabel'] = 'Subscriber Dealership', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 531, -- Blip sprite
        ['blipColor'] = 50, -- Blip color
        -- ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-593.38, -919.8, 17.36), -- Blip Location
        ['ReturnLocation'] = vector3(900.47, -1155.74, 25.16), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-586.08, -879.81, 17.36, 269.77), -- Spawn location when vehicle is bought
        -- ['TestDriveSpawn'] = vector4(867.65, -1192.4, 25.37, 95.72), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-602.01, -922.42, 16.59, 315.4),
                defaultVehicle = 'project8',
                chosenVehicle = 'project8',
            },
            [2] = {
                coords = vector4(-584.82, -922.72, 16.59, 44.67),
                defaultVehicle = 'lp640',
                chosenVehicle = 'lp640',
            },
            [3] = {
                coords = vector4(-593.51, -931.75, 16.59, 359.4),
                defaultVehicle = 'gemera',
                chosenVehicle = 'gemera',
            },
        },
    },
}
