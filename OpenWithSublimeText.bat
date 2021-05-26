@echo off
SET stPath=C:\Program Files\Sublime Text\sublime_text.exe
 
rem add it for all file types
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text"         /t REG_SZ /v "" /d "Open with Sublime Text"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%stPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text\command" /t REG_SZ /v "" /d "%stPath% \"%%1\"" /f
 
rem add it for folders
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text"         /t REG_SZ /v "" /d "Open with Sublime Text"   /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%stPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text\command" /t REG_SZ /v "" /d "%stPath% \"%%1\"" /f
pause