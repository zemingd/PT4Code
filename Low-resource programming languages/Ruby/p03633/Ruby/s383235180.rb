n = gets.chomp.to_i
t = []
n.times do |i|
  t[i] = gets.chomp.to_i
end

p t.reduce(:lcm)
