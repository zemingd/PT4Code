A, B, X = gets.split(' ').map(&:to_i)

puts A + B > X && A <= X ? 'YES' : 'NO'