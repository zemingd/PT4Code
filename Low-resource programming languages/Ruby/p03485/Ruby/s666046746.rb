a, b = gets.chomp.split(" ").map(&:to_f)
c = (a + b) / 2

puts(c.ceil)