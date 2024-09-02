@echo off

cd "bGames-API-GET"
start cmd /k npm install
cd ..

cd "bGames-API-POST"
start cmd /k npm install
cd ..

cd "bGames-User-Management"
start cmd /k npm install
cd ..

echo Todas las instalaciones han iniciado.
