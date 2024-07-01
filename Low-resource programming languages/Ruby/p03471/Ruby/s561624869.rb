n, y = gets.split.map(&:to_i)

ns = [*0..n]
combs = ns.product(ns).lazy

tris = combs.map { |a, b| [a, b, n - a - b] }
r = tris.find do |a, b, c|
  next if c < 0 # hack
  total = 10000 * a + 5000 * b + 1000 * c
  total == y
end
r ||= [-1] * 3

puts r.join(' ')
