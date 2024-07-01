n, m = gets.split.map(&:to_i)

a = Array.new(n)
b = Array.new(m)
print a.combination(2).to_a.size + b.combination(2).to_a.size