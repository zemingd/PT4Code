A = gets.to_i
B = gets.to_i
a = A + B
b = A - B
c = A * B
if a>b && a>c
  puts a
elsif b>a && b>c
  puts b
else
  puts c
end