x, k, d = gets.split.map(&:to_i)
min = x
if k.odd?
  pos = (x + k * d).abs
  neg = (x - k * d).abs
  pos < neg ? min = pos : min = neg
else
  pos = (x + 2 * k * d).abs
  neg = (x - 2 * k * d).abs
  pos < neg ? min = pos : min = neg
end
puts min