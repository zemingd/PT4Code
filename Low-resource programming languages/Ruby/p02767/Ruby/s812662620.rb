n = gets.to_i
x = gets.split.map(&:to_i)
p = Array.new(101) { 0 }
p[0] = Float::INFINITY
for i in 1..100
  for j in 0..n-1
    p[i] += (x[j] - i) ** 2
  end
end
puts p.min
