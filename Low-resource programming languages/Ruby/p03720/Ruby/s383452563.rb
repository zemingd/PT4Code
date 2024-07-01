n, m = gets.split.map(&:to_i)
a, b = m.times.map{ gets.strip.split.map(&:to_i) }.transpose

ab = (a + b)
foo = (1..n).to_a
result = []
for var in foo do
    baz = ab.count(var)
    result.push(baz)
end

puts result
