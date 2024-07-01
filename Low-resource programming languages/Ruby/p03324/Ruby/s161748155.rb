d, n = gets.chomp.split.map(&:to_i)
n += 1 if n == 100
puts 100 ** d * n
