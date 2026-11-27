' Chay server an (khong hien cua so den). Dung de cho tu bat khi mo may.
Set sh = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
folder = fso.GetParentFolderName(WScript.ScriptFullName)
sh.CurrentDirectory = folder
sh.Run "cmd /c node server.js >> server.log 2>&1", 0, False
