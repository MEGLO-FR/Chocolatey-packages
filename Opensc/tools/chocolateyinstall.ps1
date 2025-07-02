$packageArgs = @{
	packageName = $Env:ChocolateyPackageName
	url = 'https://github.com/OpenSC/OpenSC/releases/download/0.26.1/OpenSC-0.26.1_win32.msi'
	fileType = 'msi'
	silentArgs = '/qn /norestart'
	checksumType = 'sha512'
	checksum = '130C328BFC4204EDE7DB3BE963E867522E495DE5DB82CA93278470C9C92B991010C874EC045273ACAA298FC998E0AC9A089D54498440524C87E9463C3F3E4D08'
}

Install-ChocolateyPackage @packageArgs

if ((Get-OsArchitectureWidth) -eq 64) {
	$packageArgs.url = 'https://github.com/OpenSC/OpenSC/releases/download/0.26.1/OpenSC-0.26.1_win64.msi'
	$packageArgs.checksum = '7E7208CAE5BC0FCFDE9FDC557AEF47A8039DAF0E84B7ED6134EAEEBB860721E04C2F5151DCC5D5F588FC4BBCDF92720989499C88B9BB60BFD2C533C5B4EDF2A9'
	Install-ChocolateyPackage @packageArgs
}