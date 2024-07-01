n, x = gets.split(" ").map{ |i| i.to_i }
m = []
sum = 0
for i in 0...n do
  m[i] = gets.to_i
  sum += m[i]
end

x -= sum
cnt = x / m.min

puts m.length + cnt
