n,x = gets.split.map(&:to_i)
m = []
n.times do
  m << gets.to_i
end

x -= m.inject(:+)
puts n + x / m.min
