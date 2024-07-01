N = gets.to_i
a = 1
N.times do
  a = a.lcm(gets.to_i)
end

puts a