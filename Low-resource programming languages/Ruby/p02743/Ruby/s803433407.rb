require 'complex'

a, b, c = gets.split(" ").map(&:to_i)

a = Rational(Math.sqrt(a))
b = Rational(Math.sqrt(b))
c = Rational(Math.sqrt(c))

if a + b - c < 0
  puts('Yes')
else
  puts('No')
end