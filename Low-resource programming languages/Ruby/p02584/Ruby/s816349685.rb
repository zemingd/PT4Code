x, k, d = gets.split.map(&:to_i)
if k.odd?
  kk = x < k * d ? d : k * d
else
  kk = x < k * d ? 2 * d : 2 * k * d
end
pos = (x + kk).abs
neg = (x - kk).abs
puts pos < neg ? pos : neg