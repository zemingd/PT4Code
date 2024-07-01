a, b, n = gets.chomp.split.map(&:to_i)
i = [n, b - 1].min
puts (a * i) / b - a * (i / b)
