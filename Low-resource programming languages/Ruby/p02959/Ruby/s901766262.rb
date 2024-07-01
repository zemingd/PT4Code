N = gets.to_i
As = gets.split.map(&:to_i)
Bs = gets.split.map(&:to_i)

res, x = 0, 0
(0 .. N).each do |i|
  x += (Bs[i] || 0)
  c = [As[i], x].min
  res += c
  x -= c
end
puts res