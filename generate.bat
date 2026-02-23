:: path of Bits dir
set bits=%~dp0.

pushd "%GasPy%"
venv\Scripts\python -m printouts.multiclass_amulets
if %errorlevel% neq 0 pause
popd

copy "%GasPy%\output\multiclass-amulets.csv" "%bits%\gaspy\amulets.csv"
if %errorlevel% neq 0 pause

pushd "%GasPy%"
venv\Scripts\python -m jinja gaspy world\contentdb\templates\multiclass-amulets --for-each gaspy\amulets.csv --bits "%bits%"
if %errorlevel% neq 0 pause
popd
