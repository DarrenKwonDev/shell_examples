
# 권한 확인 및 변경
Get-ExecutionPolicy
Set-ExecutionPolicy Unrestricted

# 모든 cmdlet 출력
Get-Command | head

# 모든 서비스 출력
Get-Service | head

# 모든 프로세스 출력
Get-Process | head

# help(Get-Help)로 인자 확인
help Get-Process
help Get-Process -online # 웹 document로 확인

# alias 확인
Get-Alias ls
Get-Alias dir
# CommandType     Name                                               Version    Source
# -----------     ----                                               -------    ------
# Alias           ls -> Get-ChildItem

# alias 추가
Set-Alias
# cmdlet Set-Alias(명령 파이프라인 위치 1)
# 다음 매개 변수에 대한 값을 제공하십시오.
# Name: blah
# Value: Get-ChildItem

Set-Alias blah2 Get-ChildItem