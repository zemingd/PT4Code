n = gets.to_i
a, b = 2.times.map { gets.split.map(&:to_i) }

answer = (0...n).reduce(0) do |s, i|
  x = [a[i], b[i]].min
  y = [a[i + 1], b[i] - x].min
  a[i + 1] -= [b[i] - x, a[i + 1]].min
  s += x + y
end

puts answer