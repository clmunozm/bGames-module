@echo off

cd "bGames-API-GET"
start cmd /k npm run dev
cd ..

cd "bGames-API-POST"
start cmd /k npm run dev
cd ..

cd "bGames-User-Management"
start cmd /k npm run dev
cd ..

echo Todas los servicios se han iniciado.
