set TOOL_DIR=C:\tool\
set CONF_DIR=C:\conf\windows\

set ASR_SETTINGS_DIR=%TOOL_DIR%Asr\Ubar\%Username%
set ASR_CONF_DIR=%CONF_DIR%asr\
cd %ASR_SETTINGS_DIR%
set SETTING_FILENAME=CommandMode.key
del %SETTING_FILENAME%
mklink %SETTING_FILENAME% %ASR_CONF_DIR%%SETTING_FILENAME%
rem not typo
set SETTING_FILENAME=SerchMode.key
del %SETTING_FILENAME%
mklink %SETTING_FILENAME% %ASR_CONF_DIR%%SETTING_FILENAME%
reg import %ASR_CONF_DIR%ASR.reg

reg import %CONF_DIR%explzh\Explzh.reg

set PUTTY_SETTINGS_DIR=%TOOL_DIR%putty\Data\settings
set PUTTY_CONF_DIR=%CONF_DIR%putty\
mkdir %PUTTY_SETTINGS_DIR%
cd %PUTTY_SETTINGS_DIR%
set SETTING_FILENAME=putty.reg
del %SETTING_FILENAME%
copy %PUTTY_CONF_DIR%%SETTING_FILENAME% %SETTING_FILENAME%
set SETTING_FILENAME=PuttyPortableSettings.ini
del %SETTING_FILENAME%
copy %PUTTY_CONF_DIR%%SETTING_FILENAME% %SETTING_FILENAME%

set WINSCP_SETTINGS_DIR=%TOOL_DIR%winscp\Data\settings
set WINSCP_CONF_DIR=%CONF_DIR%winscp\
mkdir %WINSCP_SETTINGS_DIR%
cd %WINSCP_SETTINGS_DIR%
set SETTING_FILENAME=winscp.ini
del %SETTING_FILENAME%
copy %WINSCP_CONF_DIR%%SETTING_FILENAME% %SETTING_FILENAME%

cmd /k
exit
