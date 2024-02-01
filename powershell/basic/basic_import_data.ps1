
$names = Import-Csv -Path "C:\Users\darrenkwon\shell_examples\Census1000.csv"
$names | Get-Member
$names.count
$names | Format-Table -Property name, age # csv column 별로 출력