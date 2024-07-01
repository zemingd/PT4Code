x, k, d = gets.split.map(&:to_i)
min = x
if k.odd?
  pos = (x + d).abs
  neg = (x - d).abs
  pos < neg ? min = pos : min = neg
else
  pos = (x + 2 * d).abs
  neg = (x - 2 * d).abs
  pos < neg ? min = pos : min = neg
end
puts min