x,k,d = gets.split.map(&:to_i)
o = (x / d).abs #最小の移動で0に近づく移動回数
z = (x % d).abs #最小の移動で0に近づいた時の絶対値
ato = k - o #残りの移動回数

if k <= o
  ans = (x.abs - (k * d)).abs
elsif k > o
  if ato.even?
    ans = z
  else ans = (z - d).abs
  end
end

p ans