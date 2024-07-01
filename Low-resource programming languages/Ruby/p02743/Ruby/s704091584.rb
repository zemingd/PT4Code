require 'complex'
a, b, c = gets.split(" ").map(&:to_i)

a = Math.sqrt(a)
b = Math.sqrt(b)
c = Math.sqrt(c)

if a + b < c
  puts('Yes')
else
  puts('No')
end