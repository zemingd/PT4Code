a = gets.to_i
b = gets.split.map(&:to_i)
c = []
e = []
for num in 0..a-1 do
  if b[num].even?
    c << b[num]
  end
end
d = c.length
for num in 0..d-1 do
  if c[num] % 3 == 0 || c[num] % 5 == 0
    e << c[num]
  end
end
if d == e.length
  puts "APPROVED"
else
  puts "DENIED"
end