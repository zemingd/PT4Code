n, m, c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
r = 0
n.times do
  r += 1 if gets.split.map.with_index{|i, idx| i.to_i * b[idx]}.inject(:+) + c > 0
end
puts r