

# create an array
$strComputers = @("Server1", "Server2", "Server3")
$strComputers
$strComputers.length

# mutate an array
$strComputers[0]
$strComputers[2] = "Server3-1" # change value
$strComputers[3] = "Server4" # this trigger error (IndexOutOfRangeException)

# concat
$strComputers2 = @("server5", "server6")
$allComputers = $strComputers + $strComputers2 # merge array
$allComputers | ForEach-Object {$_}

# 빈 배열을 생성하고 추가 가능
$myArray = @()
$myArray += 1
$myArray += 2
$myArray += 3
foreach ($item in $myArray) {
    Write-Host "항목: $item"
}