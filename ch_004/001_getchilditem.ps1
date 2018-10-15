function Get-ListOfFiles {
    param(
        [string]$path = 'C:\'
    )
    Get-ChildItem -Path $path
}

Get-ListOfFiles -path 'D:\'