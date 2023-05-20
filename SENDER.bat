@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
title MadeBy!Kami#6920
REM Initialize
FOR /L %%I IN (1,1,25) DO SET ITEM%%I=[ ]
call :item10

:Boucle
CLS
ECHO Choisissez les mods que vous souhaitez installer  :
ECHO.
ECHO %ITEM1% 01. Tous les mods
ECHO %ITEM2% 02. Item Crash
ECHO %ITEM3% 03. AimBot
ECHO %ITEM4% 04. Tenue
ECHO %ITEM5% 05. MenuDev
ECHO %ITEM6% 06. FPSBoost
ECHO %ITEM7% 07. PackPvp
ECHO %ITEM8% 08. ModMenuSatan
ECHO %ITEM9% 09. Multiplayer
ECHO %ITEM10% 10. Delete tout
ECHO %ITEM11% 11. Info
ECHO.
ECHO Taper Q pour Quitter
ECHO Taper R pour lancer l'installation
 
set WhichItem=
SET /P WhichItem=Faites votre choix et appuyer sur ENTER : 
 
IF NOT DEFINED WhichItem GOTO Boucle
IF /I "%WhichItem%"=="Q" GOTO :EOF
IF /I "%WhichItem%"=="R" GOTO RunOptions
 
SET /A WhichItem=%WhichItem%
 
FOR /L %%I IN (1,1,25) DO IF "%%I"=="%WhichItem%" (
	IF "!Item%WhichItem%!"=="[X]" (
		SET Item%WhichItem%=[ ]
	) ELSE (
		SET Item%WhichItem%=[X]
	)
)
GOTO Boucle
 
:RunOptions
FOR /L %%I IN (1,1,25) DO IF "!Item%%I!"=="[X]" call :Item%%I
pause
GOTO :EOF
 
:item1
call :item2
call :item3
call :item4
call :item5
call :item6
call :item7
call :item8
call :item9
GOTO :EOF
 
:item2
        if exist "C:\Program Files (x86)\Steam\steamapps\common\Dying Light\DW" (
          copy Crash_Item.pak "C:\Program Files (x86)\Steam\steamapps\common\Dying Light\DW"
        ) ELSE (
           copy Crash_Item.pak "C:\Program Files\Epic Games\DyingLight\DW"
        )
GOTO :EOF
 


:item3
        if EXIST "C:\Program Files (x86)\Steam\steamapps\common\Dying Light\DW" (
           copy Crossbow_Aimbot.pak "C:\Program Files (x86)\Steam\steamapps\common\Dying Light\DW"
        ) ELSE (
            copy Crossbow_Aimbot.pak "C:\Program Files\Epic Games\DyingLight\DW"
        )
GOTO :EOF
 




:item4
        if EXIST "C:\Program Files (x86)\Steam\steamapps\common\Dying Light\DW" (
            copy Custom_Outfit_Examples.pak "C:\Program Files (x86)\Steam\steamapps\common\Dying Light\DW"
        ) ELSE (
            copy Custom_Outfit_Exeamples.pak "C:\Program Files\Epic Games\DyingLight\DW"
        )
GOTO :EOF





:item6
        if EXIST "C:\Program Files (x86)\Steam\steamapps\common\Dying Light\DW" (
         copy FPS_Boost.pak "C:\Program Files (x86)\Steam\steamapps\common\Dying Light\DW"
        ) ELSE (
            copy FPS_Boost.pak "C:\Program Files\Epic Games\DyingLight\DW"
        )
GOTO :EOF




:item7
        if EXIST "C:\Program Files (x86)\Steam\steamapps\common\Dying Light\DW" (
         copy nloginov_PVP_set.pak "C:\Program Files (x86)\Steam\steamapps\common\Dying Light\DW"
        ) ELSE (
           copy nloginov_PVP_set.pak "C:\Program Files\Epic Games\DyingLight\DW"
        )
GOTO :EOF

:item8
        if EXIST "C:\Program Files (x86)\Steam\steamapps\common\Dying Light\DW" (
            copy Satan_Reborn.pak "C:\Program Files (x86)\Steam\steamapps\common\Dying Light\DW"
        ) ELSE (
            copy Satan_Reborn.pak "C:\Program Files\Epic Games\DyingLight\DW"
        )

GOTO :EOF



:item5
        if EXIST "C:\Program Files (x86)\Steam\steamapps\common\Dying Light\DW" (
           copy DataMenu.pak "C:\Program Files (x86)\Steam\steamapps\common\Dying Light\DW"
        ) ELSE (
            copy DataMenu.pak "C:\Program Files\Epic Games\DyingLight\DW"
        )
GOTO :EOF


:item9
        if EXIST "C:\Program Files (x86)\Steam\steamapps\common\Dying Light\" (
           copy dsound.dll "C:\Program Files (x86)\Steam\steamapps\common\Dying Light\"
           copy steam_dide_mod.ini "C:\Program Files (x86)\Steam\steamapps\common\Dying Light\"
        ) ELSE (
            copy dsound.dll "C:\Program Files\Epic Games\DyingLight\"
            copy epic_dide_mod.ini "C:\Program Files\Epic Games\DyingLight\"
        )
GOTO :EOF



:item10
if EXIST "C:\Program Files (x86)\Steam\steamapps\common\Dying Light\DW" (
    cd "C:\Program Files (x86)\Steam\steamapps\common\Dying Light\DW"
        del Crash_Item.pak
        del Crossbow_Aimbot.pak
        del Custom_Outfit_Examples.pak
        del DataMenu.pak
        del FPS_Boost.pak
        del nloginov_PVP_set.pak
        del Satan_Reborn.pak
) ELSE (
    cd "C:\Program Files\Epic Games\DyingLight\DW"
        del Crash_Item.pak
        del Crossbow_Aimbot.pak
        del Custom_Outfit_Examples.pak
        del DataMenu.pak
        del FPS_Boost.pak
        del nloginov_PVP_set.pak
        del Satan_Reborn.pak
)
GOTO :EOF



:ITEM11
CLS
ECHO Pour changer de mods (disons que vous avez le mod 3 et le mod 5.)
ECHO Si par exemple vous voulez mettre le mod 4 avec les mods 3 et 5,
ECHO Vous devrez cocher la case 3, 4 et 5 !
ECHO Besoin de plus d'aide ?

SET /P M=Appuie sur O pour avoir de l'aide : 
        if %M%==O GOTO AIDE

    :AIDE
   start "" https://pastes.io/3byfhiyoz6
GOTO :EOF
