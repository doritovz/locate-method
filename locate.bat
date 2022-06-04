@ECHO off
setlocal enableDelayedExpansion

:: Header
color 01
Title Locate Method ^| dorito#9095
ECHO Locate Method ^| dorito#9095
ECHO ===============================

:: Check for targets.txt
if NOT EXIST targets.txt (
    PAUSE
    ECHO Error: targets.txt file unavailable.
    ECHO Please create a targets.txt file.
    ECHO You may now close the window.
    ECHO.
    ECHO.
    PAUSE
    exit
)

:: Main
ECHO Tip: Best generate minimum 50! - 75% links
set /p num=How many targets would you like to locate?: 
ECHO Locating targets...
ECHO Selected # of Targets: %num%
:: ECHO https://rolimons.com/player/!random!!random! >> targets.txt
for /L %%N in (1 1 !num!) do (
    ECHO.
    ECHO =============================== >> targets.txt
    ECHO Target #: %%N >> targets.txt
    ECHO https://rolimons.com/player/!random!!random! >> targets.txt
    ECHO =============================== >> targets.txt
    ECHO. >> targets.txt
    cls
)
PAUSE
cls
ECHO Locate Method ^| dorito#9095
ECHO ===============================
ECHO Targets ready!
PAUSE
start targets.txt
ECHO %num% targets generated! You may now close the window
PAUSE
exit