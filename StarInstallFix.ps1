$installerPath1 = "\\bos-monitor2\APPS\Apps\General Software\Star\2016.2.0.3\StarAdmin\Star Admin install path\Required objects\SQLSysClrTypes.msi"
$installerPath2 = "\\bos-monitor2\APPS\Apps\General Software\Star\2016.2.0.3\SSRS Reporting\SSRS Support pack\Run Second\ReportViewer.msi"
$installerPath3 = "\\bos-monitor2\APPS\Apps\General Software\Star\2016.2.0.3\CrystalRuntime\CRRuntime_32bit_13_0_5.msi"
$installerPath4 = "\\bos-monitor2\APPS\Apps\General Software\Star\2018 Spring\StarScheduling\setup.exe"
$installerPath5 = "\\bos-monitor2\APPS\Apps\General Software\Star\2023 Spring\StarPDM\Star Americas install path\Disk1\Disk1\US\StarPDM.msi"
$installerPath6 = "\\bos-monitor2\APPS\Apps\General Software\Star\sqlncli.msi"

#SQLSysClrTypes Install
If(Test-Path $installerPath1) {
    Write-Host "SQLSysClrTypes Found. Installing..."
    Start-Process -FilePath "msiexec.exe" -ArgumentList "/i `"$installerPath1`"" -Wait
    Write-Host "Setup Complete"
} else {
    Write-Host "Installer failed."
}

#ReportViewer Install
If(Test-Path $installerPath2) {
    Write-Host "ReportViewer Found. Installing..."
    Start-Process -FilePath "msiexec.exe" -ArgumentList "/i `"$installerPath2`"" -Wait
    Write-Host "Setup Complete"
} else {
    Write-Host "Installer failed."
}

#CRRuntime Install
If(Test-Path $installerPath3) {
    Write-Host "CRRuntime Found. Installing..."
    Start-Process -FilePath "msiexec.exe" -ArgumentList "/i `"$installerPath3`"" -Wait
    Write-Host "Setup Complete"
} else {
    Write-Host "Installer failed."
}

#StarScheduling Install
If(Test-Path $installerPath4) {
    Write-Host "StarScheduling Found. Installing..."
    Start-Process -FilePath $installerPath4 -Wait
    Write-Host "Setup Complete"
} else {
    Write-Host "Installer failed."
}

#StarPDM Install
If(Test-Path $installerPath5) {
    Write-Host "StarPDM Found. Installing..."
    Start-Process -FilePath "msiexec.exe" -ArgumentList "/i `"$installerPath5`"" -Wait
    Write-Host "Setup Complete"
} else {
    Write-Host "Installer failed."
}

#SQLNCLI Install
If(Test-Path $installerPath6) {
    Write-Host "SQLNCLI Found. Installing..."
    Start-Process -FilePath "msiexec.exe" -ArgumentList "/i `"$installerPath6`"" -Wait
    Write-Host "Setup Complete"
} else {
    Write-Host "Installer failed."
}
