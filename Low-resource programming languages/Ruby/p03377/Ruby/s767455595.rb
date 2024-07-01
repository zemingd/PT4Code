A, B, X = gets.split.map(&:to_i)

puts (A .. A+B).include?(X) ? 'YES' : 'NO'