D, n = gets.chomp.split.map(&:to_i)

x = 1
D.times do
  x *= 100
end
n += 1 if n == 100

puts n * x