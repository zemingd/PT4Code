n, x = gets.split.map(&:to_i)
m = []
s = 0
for i in 0...n do
  m[i] = gets.to_i
  s += m[i]
end
puts n + (x - s) / m.min
