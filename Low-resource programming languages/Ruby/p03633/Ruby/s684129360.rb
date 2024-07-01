n = gets.to_i

a = []
n.times do
  a << gets.to_i
end

a.uniq!

puts a.inject{|a,b| a.lcm(b) }
