$processnames = Get-Process
$prompt = "The first process is using $($processnames[0].VM) bytes of VM."
Write-Host $prompt
