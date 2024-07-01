D, T, S = gets.split.map(&:to_i)
puts Rational(D,S) <= T ? 'Yes' : 'No'