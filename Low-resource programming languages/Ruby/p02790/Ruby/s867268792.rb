a, b = gets.chomp.split
i=1
A = ""
B = ""
while i<=b.to_i do
  A += a
  i += 1
end
i = 1
while i<=a.to_i do
  B += b
  i += 1
end
if A > B 
  puts B
else
  puts A
end