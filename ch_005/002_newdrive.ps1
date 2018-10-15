function New-Drives {
    param()

    New-PSDrive -Name AppData -PSProvider FileSystem -Root $env:APPDATA -Scope Global
    New-PSDrive -Name Temp -PSProvider FileSystem -Root $env:TEMP -Scope Global

    $mydocs = Join-Path -Path $env:USERPROFILE -ChildPath Documents
    New-PSDrive -Name Docs -PSProvider FileSystem -Root $mydocs -Scope Global
}

New-Drives
Get-ChildItem Temp: | Measure-Object -Property Length -Sum