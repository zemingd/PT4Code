a,b,c = gets.split.map(&:to_i)
puts a * b < Rational(c-a-b, 2) ** 2 ? 'Yes' : 'No'
