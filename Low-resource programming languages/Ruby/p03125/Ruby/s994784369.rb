A, B = gets.chomp.split.map(&:to_i)

puts (B % A == 0 ? A + B : B - A)
