A, B, X = gets.chomp.split(" ").map(&:to_i)

puts A <= X && X <= (A+B) ? 'YES' : 'NO'
