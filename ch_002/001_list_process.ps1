Get-Process | Format-Table -Property Name, @{
              n='VM(MB)'; e={$_.VM / 1MB -as [int]}}