@echo off
cd /d "%~dp0"
echo.
echo ============================================
echo   Serveur Laravel - Port Personnalise
echo ============================================
echo.
set /p PORT="Entrez le numero de port (ex: 3000, 8080, 9000) : "
echo.
echo Demarrage sur le port %PORT%...
echo.
echo Apres demarrage, ouvrez dans le navigateur :
echo   http://127.0.0.1:%PORT%
echo   ou
echo   http://localhost:%PORT%
echo.
echo NE FERMEZ PAS cette fenetre tant que vous utilisez le site.
echo Pour arreter : Ctrl+C
echo ============================================
echo.
php artisan serve --port=%PORT%
pause
