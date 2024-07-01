n, x = gets.split.map(&:to_i)
m = []
n.times do
  m << gets.to_i
end

puts n + (x - m.inject(:+)) / m.min 
