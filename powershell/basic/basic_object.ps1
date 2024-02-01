

# 어디에서 실행하는가에 따라 결과가 달라지므로 실제 활용할 땐 절대경로로 치환할 것
$file = Get-ChildItem
$file[0].name

# sort
# Sort-Object = sort
$file | Sort-Object -property length
$file | Sort-Object -property length -descending

# filter
# Where-Object = where
$file | Where-Object length -gt 60
$file | Where-Object name -like "*m*" # *는 0개 이상의 문자를 의미

# $_는 현재 반복 중인 개체. . 보통 ForEach-Object 또는 Where-Object와 같은 cmdlet과 함께 사용됩니다.
$file | Where-Object {($_.length -gt 60) -and ($_.name -like "*g*")} # -and 조건의 필터링. 

