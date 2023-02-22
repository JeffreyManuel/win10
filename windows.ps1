if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe){
}

else{
    Start-Process "ms-appinstaller:?source=https://aka.ms/getwinget"
	$nid = (Get-Process AppInstaller).Id
	Wait-Process -Id $nid
	Write-Host Winget Installed
   
}
winget install -e BraveSoftware.BraveBrowser
winget install -e Google.Chrome
winget install -e Lexikos.AutoHotkey 
winget install -e Discord.Discord
winget install -e --id Adobe.Acrobat.Reader.64-bit 
winget install -e Notepad++.Notepad++
winget install -e VideoLAN.VLC
winget install -e 7zip.7zip
winget install -e Microsoft.VisualStudioCode --source winget
winget install -e Microsoft.WindowsTerminal
winget install -e Microsoft.PowerToys
winget install -e Git.Git 
winget install -e GitHub.GitHubDesktop 
winget install -e Balena.Etcher 
winget install -e ShareX.ShareX 
Enable-ComputerRestore -Drive "C:\"
    Checkpoint-Computer -Description "RestorePoint1" -RestorePointType "MODIFY_SETTINGS"
