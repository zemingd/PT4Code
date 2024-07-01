A, B, X = gets.split.map(&:to_i)

puts X.between?(A, A + B) ? 'YES' : 'NO'
