a, b, c = gets.chomp.split(" ").map(&:to_i)
K = gets.to_i
t = 0
u = 0
if a >= b
 t = a
 u = a
  if  c >= a
 t = c
 u = c
  end
else
 t = b
 u = b
  if c >= b
 t = c
 u = c
  end
end
for i in 1..K
 t = t * 2
end
puts "#{a+b+c+t-u}"