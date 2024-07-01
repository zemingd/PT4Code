n = gets.to_i
t = []
for i in 0...n do
  t[i] = gets.to_i
end
puts t.reduce(:lcm)
