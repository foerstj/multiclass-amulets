:: mod/map name
set mod=multiclass-amulets
set map_shop=%mod%-shop
set map_demo=%mod%-demo
:: map name, case sensitive
set mod_cs=Multiclass Amulets
set map_shop_cs=%mod_cs% Shop
set map_demo_cs=%mod_cs% Demo
set mod_originals=%mod_cs% in Original Shops

:: path of Bits dir
set bits=%~dp0.
:: path of DS installation
set ds=%DungeonSiege%
:: path of TankCreator
set tc=%TankCreator%

set copyright=CC-BY-SA 2026
set author=Johannes Förstner

:: Compile resource file
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\world\contentdb\templates\%mod%" "%tmp%\Bits\world\contentdb\templates\%mod%" /S
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\DSLOA\%mod_cs%.dsres" -copyright "%copyright%" -title "%mod_cs%" -author "%author%"
if %errorlevel% neq 0 pause

:: Compile shop map file
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\world\maps\%map_shop%" "%tmp%\Bits\world\maps\%map_shop%" /E
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\DSLOA\%map_shop_cs%.dsmap" -copyright "%copyright%" -title "%mod_cs%" -author "%author%"
if %errorlevel% neq 0 pause
:: Compile shop resource file
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\world\contentdb\templates\%map_shop%" "%tmp%\Bits\world\contentdb\templates\%map_shop%" /S
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\DSLOA\%map_shop_cs%.dsres" -copyright "%copyright%" -title "%mod_cs%" -author "%author%"
if %errorlevel% neq 0 pause

:: Compile resource file
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\world\contentdb\templates\regular" "%tmp%\Bits\world\contentdb\templates\regular" /S
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\DSLOA\%mod_originals%.dsres" -copyright "%copyright%" -title "%mod_cs%" -author "%author%"
if %errorlevel% neq 0 pause

:: Compile demo map file
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\world\maps\%map_demo%" "%tmp%\Bits\world\maps\%map_demo%" /E
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\DSLOA\%map_demo_cs%.dsmap" -copyright "%copyright%" -title "%mod_cs%" -author "%author%"
if %errorlevel% neq 0 pause
:: Compile demo resource file
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\world\contentdb\templates\%map_demo%" "%tmp%\Bits\world\contentdb\templates\%map_demo%" /S
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\DSLOA\%map_demo_cs%.dsres" -copyright "%copyright%" -title "%mod_cs%" -author "%author%"
if %errorlevel% neq 0 pause

:: Cleanup
rmdir /S /Q "%tmp%\Bits"
