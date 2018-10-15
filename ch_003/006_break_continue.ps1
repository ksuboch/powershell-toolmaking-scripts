$i = 0
do {
    if ($i -eq 5) { Break }
    Write-Host $i
    $i++
} while ($i -lt 1000)

foreach ($i in 1..100) {
    if ($i -lt 1000) { Continue }
    Write-Host $i
}
