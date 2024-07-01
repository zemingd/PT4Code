require 'complex'
a, b, c = gets.split(" ").map(&:to_i)

if (2 * Math.sqrt(a * b)) - c + a + b < 0
  puts('Yes')
else
  puts('No')
end