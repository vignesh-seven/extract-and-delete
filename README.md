# Extract-and-Delete  

A batch script that will extract the contents of the given archive file and delete it afterwards.  
Note: 7-Zip must be installed (64-bit) for this to work  

## Installation  
For the default installation:
 - Download the ex-n-del.bat file and copy it's path  
 - Open Command Prompt as Admin and run the following command after replacing PATH_TO_BAT_FILE (DO NOT use Powershell)  

```  
reg add HKEY_CURRENT_USER\Software\Classes\*\shell\Extract and Delete\command /ve /d "PATH_TO_BAT_FILE \"%1\"" /f  
```  

If you want to customize the context menu entry name with the command:  
```  
reg add HKEY_CURRENT_USER\Software\Classes\*\shell\CONTEXT_MENU_NAME\command /ve /d "PATH_TO_BAT_FILE \"%1\"" /f  
```   

