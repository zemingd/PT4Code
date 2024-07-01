x, k, d = gets.chomp.split.map(&:to_i)

shou = x.abs.div(d)

if k < shou
  p (x - (x.abs/x)*d*k).abs
  exit
end

hugo = x >= 0 ? 1 : -1
x = x - hugo*d*shou
k -= shou
if k.even?
  p x.abs
else
  p (x - hugo*d).abs
end