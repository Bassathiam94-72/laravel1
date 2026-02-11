@echo off
cd /d "%~dp0"
echo.
echo ============================================
echo   Serveur Laravel - Demarrage
echo ============================================
echo.
echo Apres demarrage, ouvrez dans le navigateur :
echo   http://127.0.0.1:3000
echo   ou
echo   http://localhost:3000
echo.
echo NE FERMEZ PAS cette fenetre tant que vous utilisez le site.
echo Pour arreter : Ctrl+C
echo ============================================
echo.
php artisan serve --port=3000
pause
