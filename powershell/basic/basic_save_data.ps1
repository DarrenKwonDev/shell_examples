
Get-Process | Out-File -FilePath "$(Get-Location)\process.txt"

Get-Process | ConvertTo-Html | Out-File -FilePath "$(Get-Location)\process.html"

Get-Process | Export-Csv -Path "$(Get-Location)\process.csv"