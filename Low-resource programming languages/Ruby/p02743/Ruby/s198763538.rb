
a, b, c = gets.split.map { |n| Math.sqrt(n.to_i) }

foo = a + b < c
bar = a**2 + b**2 + 2 * a * b < c**2

puts foo && bar ? 'Yes' : 'No'
