T, X = gets.chomp.split.map(&:to_i)
 
puts (T * Rational(1, X)).to_f