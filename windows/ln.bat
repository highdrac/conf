set TOOLS_DIR=C:\tools\
set CONF_DIR=C:\conf\

set ASR_DIR=%TOOLS_DIR%Asr\
set CLIBOR_DIR=%TOOLS_DIR%Clibor\

cd %ASR_DIR%Ubar\%Username%
del CommandMode.key
mklink CommandMode.key %CONF_DIR%windows\asr\CommandMode.key
rem not typo
del SerchMode.key
mklink SerchMode.key %CONF_DIR%windows\asr\SearchMode.key

cd %CLIBOR_DIR%
del clibor.xml
mklink clibor.xml %CONF_DIR%windows\clibor\clibor.xml

cmd /k
exit
