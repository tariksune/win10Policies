@ECHO OFF &Title Windows 10 Policies Settings - @tariksune
:menu
ECHO [TR]
ECHO Bazı ayarlar kuruluşunuz tarafından yönetilir. İşlem bittikten sonra otomatik olarak sistem yeniden başlatılacaktır.
ECHO [EN]
ECHO Some settings are managed by your organization. The system will restart automatically after the process is completed.
ECHO.
PAUSE
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies" /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies" /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Policies" /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies" /F
REG DELETE "HKEY_CURRENT_USER\Software\Policies" /F
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies" /F
cls
ECHO.
ECHO.
ECHO [TR]İşlem tamamlandı. 
ECHO [EN]Process completed.
TIMEOUT /T 10
ECHO.
SHUTDOWN -r -t 1
