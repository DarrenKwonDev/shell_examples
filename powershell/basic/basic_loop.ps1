

# 1부터 10 까지 iter
1..10

# ForEach-Object
# foreach = ForEach-Object
1..5 | ForEach-Object {$_ * 2}
1..5 | ForEach-Object {"this is $($_ * 2)"}
1..5 | ForEach-Object {"*" * $_} # string * int -> string * int 만큼 반복이 된다.
1..5 | ForEach-Object {if($_ % 2 -eq 0) { "$_ is even" }}