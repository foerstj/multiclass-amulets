:: map name, case sensitive
set map_cs=test
:: path of DS installation
set ds=%DungeonSiege%

:: Cleanup resources so as not to confuse Siege Editor
del "%ds%\DSLOA\%map_cs%.dsres"
:: also map file
del "%ds%\DSLOA\%map_cs%.dsmap"
