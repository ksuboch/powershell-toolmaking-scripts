$var = 'hello'

function MyFunction {
    Write-Host "In the function; var contains '$var'"
    $var = 'bye'
    Write-Host "In the function; var is now '$var'"
}

Write-Host "In the script; var is '$var'"
Write-Host "Running the function"
MyFunction
Write-Host "Function is done"
Write-Host "In the script; var is now '$var'"