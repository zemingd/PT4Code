x, k, d = gets.split.map(&:to_i)
dist = 0
if x.abs >= k * d
  dist = x.abs - k * d
else
  t = (x.abs / d.to_f).ceil # 座標が0以下到達する移動回数
  if (k - t).even?
    dist = x.abs - t * d
  else
    dist = x.abs - (t-1) * d
  end
end

puts dist.abs