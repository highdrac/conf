set TOOLS_DIR=C:\devel\tools\
set CONF_DIR=C:\devel\conf\

set VIMP_DIR=C:\devel\tools\
set SUBLIME_DIR=%TOOLS_DIR%SublimeText\
set ASR_DIR=%TOOLS_DIR%Asr\
set KITTY_DIR=%TOOLS_DIR%kitty\

cd %VIMP_DIR%
del _vimperatorrc
mklink _vimperatorrc %CONF_DIR%vimperator\.vimperatorrc
if not exist %VIMP_DIR%vimperator mkdir %VIMP_DIR%vimperator
cd %VIMP_DIR%vimperator
rmdir /s /q plugin
mklink /d plugin %CONF_DIR%vimperator\plugin

cd %SUBLIME_DIR%Data\Packages
rmdir /s /q User
mklink /d User %CONF_DIR%sublime

cd %ASR_DIR%Ubar\%Username%
del CommandMode.key
mklink CommandMode.key %CONF_DIR%windows\asr\CommandMode.key
rem not typo
del SerchMode.key
mklink SerchMode.key %CONF_DIR%windows\asr\SearchMode.key

cd %KITTY_DIR%
del kitty.ini
mklink kitty.ini %CONF_DIR%windows\kitty\kitty.ini
if not exist %KITTY_DIR%Sessions mkdir %KITTY_DIR%Sessions
cd %KITTY_DIR%Sessions
del Default
mklink Default %CONF_DIR%windows\kitty\Default

cmd /k
exit
