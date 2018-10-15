$var = 'hello'
$var | Get-Member

$svc = Get-Service
$svc[0].Name
$name = $svc[1].Name
$name.Length
$name.ToUpper()