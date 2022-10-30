# Extract-and-Delete  

A batch script that will extract the contents of the given archive file and delete it afterwards.  
Note: 7-Zip must be installed (64-bit)  

## Installation  
For the default installation, run the following command in Command Prompt as Admin. This will add the path of the batch script to the context menu (right-click menu) of all files.  
```reg add HKEY_CURRENT_USER\Software\Classes\*\shell\Extract and Delete\command /ve /d "PATH_TO_BAT_FILE \"%1\"" /f```  

If you want to customize the context menu entry name with the command:  
```reg add HKEY_CURRENT_USER\Software\Classes\*\shell\CONTEXT_MENU_NAME\command /ve /d "PATH_TO_BAT_FILE \"%1\"" /f```   

