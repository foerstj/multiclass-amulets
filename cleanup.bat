:: map name, case sensitive
set mod_cs=Multiclass Amulets
set map_cs=%mod_cs% Demo
:: path of DS installation
set ds=%DungeonSiege%

:: Cleanup resources so as not to confuse Siege Editor
del "%ds%\DSLOA\%mod_cs%.dsres"
:: also map file
del "%ds%\DSLOA\%map_cs%.dsmap"
