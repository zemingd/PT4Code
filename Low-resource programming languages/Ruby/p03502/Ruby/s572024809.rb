a = gets
b = a.split("").map(&:to_i)
c = b.length
fx = 0
d = a.to_i
for num in 0..c-1
  fx += b[num]
end
if d % fx == 0
  puts "Yes"
else
  puts "No"
end