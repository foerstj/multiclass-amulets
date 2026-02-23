:: map name
set mod=multiclass-amulets
set map=%mod%-demo
:: map name, case sensitive
set mod_cs=Multiclass Amulets
set map_cs=%mod_cs% Demo

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
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\DSLOA\%mod_cs%.dsres" -copyright "%copyright%" -title "%map_cs%" -author "%author%"
if %errorlevel% neq 0 pause

:: Compile demo map file
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\world\maps\%map%" "%tmp%\Bits\world\maps\%map%" /E
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\DSLOA\%map_cs%.dsmap" -copyright "%copyright%" -title "%map_cs%" -author "%author%"
if %errorlevel% neq 0 pause

:: Cleanup
rmdir /S /Q "%tmp%\Bits"
