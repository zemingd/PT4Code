n = gets.to_i
t = []
n.times do
  t << gets.to_i
end

puts t.reduce(:lcm)
