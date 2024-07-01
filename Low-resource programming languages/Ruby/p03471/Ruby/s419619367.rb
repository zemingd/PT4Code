BILLS = [10_000, 5_000, 1_000]

n, y = gets.split.map(&:to_i)

ns = [*0..n]
combs = ns.product(ns).lazy.map { |a, b| [a, b, n - a - b] }
tris = combs.reject { |abc| abc.last < 0 }.select do |cs|
  total = cs.zip(BILLS).map { |c, v| c * v }.reduce(:+)
  total == y
end

tri = tris.first || [-1] * 3
puts tri.join(' ')
