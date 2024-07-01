x, k, d = gets.split.map(&:to_i)
min = x
if x.abs < (k * d).abs
  cnt = k.odd? ? 1 : 2
  cnt.times do
    pos = (x + d).abs
    neg = (x - d).abs
    min = pos < neg ? pos : neg
  end
else
  pos = (x + k * d).abs
  neg = (x - k * d).abs
  min = pos < neg ? pos : neg
end
puts min