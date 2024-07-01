a, b, c, d = gets.chomp.split(" ").map(&:to_i)
puts(c / b <= a / d?"Yes":"No")