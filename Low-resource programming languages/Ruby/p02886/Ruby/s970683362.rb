gets.to_i
D = gets.chomp.split(" ").map(&:to_i)

puts D.combination(2).inject(0){|r, (a, b)| r + a * b}
