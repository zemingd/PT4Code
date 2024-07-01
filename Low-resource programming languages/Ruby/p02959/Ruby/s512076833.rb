N = gets.to_i
As = gets.split.map(&:to_i)
Bs = gets.split.map(&:to_i)

res, x = 0, 0
(0 .. N).each do |i|
  b = Bs[i] || 0
  c1 = [As[i], x].min
  c2 = [(As[i] - c1), b].min
  res += (c1 + c2)
  x = b - c2
end
puts res