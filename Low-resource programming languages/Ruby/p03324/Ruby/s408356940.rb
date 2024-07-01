D, N = gets.chomp.split.map(&:to_i)

x = 1
D.times do
  x *= 100
end

puts N * x