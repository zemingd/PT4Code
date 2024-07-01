a, b, c = gets.split.map(&:to_i)

sum = a + b + c
puts sum.even? && [a, b, c].include?(sum / 2) ? 'Yes' : 'No'
