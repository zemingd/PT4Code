x, k, d = gets.split.map(&:to_i)
dist = 0
if x.abs > k * d
  dist = x.abs - k * d
elsif x.abs % d == 0 && (k - x.abs / d).odd?
  dist = d
else
  t = (x.abs / d).ceil
  dist = x.abs - t * d
end

puts dist