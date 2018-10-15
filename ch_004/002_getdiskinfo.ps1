function Get-DiskInfo {
    param(
        [int]$MinimalFreePercent = 10
    )
    $disks = Get-WmiObject -Class Win32_Logicaldisk -Filter "Drivetype = 3"
    foreach ($disk in $disks) {
        $perFree = ($disk.FreeSpace / $disk.Size) * 100
        if ($perFree -ge $MinimalFreePercent) {$OK = $true}
        else {$OK = $false}
        $disk | Select-Object -Property DeviceID, VolumeName, Size, FreeSpace, @{Name = "OK"; Expression = {$OK}}
    }
}

Get-DiskInfo