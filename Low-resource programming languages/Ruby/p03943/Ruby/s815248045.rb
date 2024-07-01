a,b,c = gets.split.map(&:to_i)
d = a+b
e = b+c
f = c+a
if a == e || b == f || c == d
  puts("Yes")
else puts("No")
end