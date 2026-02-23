:: path of Bits dir
set bits=%~dp0.

pushd "%GasPy%"
venv\Scripts\python -m jinja gaspy world\contentdb\templates\multiclass-amulets --for-each gaspy\amulets.csv --bits "%bits%"
if %errorlevel% neq 0 pause
popd
