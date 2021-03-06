homeLoc = "C:\Users\dingp"
prgLoc = "aria2c"
confLoc = Replace("{0}\Documents\aria2\aria2.conf", "{0}", homeLoc)
logLoc = Replace("{0}\Documents\aria2\aria2.log", "{0}", homeLoc)
command = prgLoc & " --conf-path=" & confLoc
' check if the log file exceeds 10MB, if so clean it.
Set oFSO = CreateObject("Scripting.FileSystemObject")
set logFile = oFSO.GetFile(logLoc)
If logFile.Size > 10000000 Then
    Const ForReading = 1, ForWriting = 2, ForAppending = 8
    Const TristateUseDefault = -2, TristateTrue = -1, TristateFalse = 0
    ' open the log in overwritten Unicode mode
    Set openLog = logFile.OpenAsTextStream(ForWriting, TristateUseDefault)
    openLog.Close
End If
CreateObject("WScript.Shell").Run command, 0