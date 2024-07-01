BILLS = [10_000, 5_000, 1_000]

n, y = gets.split.map(&:to_i)

ns = [*0..n]
combs = ns.product(ns).lazy
tris = combs.map { |a, b| [a, b, n - a - b] }.reject { |abc| abc.last < 0 }
tri = tris.find do |cs|
  total = cs.zip(BILLS).map { |c, v| c * v }.reduce(:+)
  total == y
end

tri ||= [-1] * 3
puts tri.join(' ')
