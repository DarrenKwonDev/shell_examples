
$file = Get-ChildItem

$file | Format-List
$file | Format-Wide -property length
$file | Format-List -Property name, length

Get-Process | Format-Table -Property name, id, @{Name="Memory (MB)"; Expression={$_.WorkingSet/1MB}} | head
# Name                                                             Id  Memory (MB)
# ----                                                             --  -----------
# ApplicationFrameHost                                           3724  21.16015625
# audiodg                                                        5156  11.85546875