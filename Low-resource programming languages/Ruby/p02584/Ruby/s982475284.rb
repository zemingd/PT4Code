x, k, d = gets.split.map(&:to_i)
# スタートが負の場合でも正の時と同様に考えてOK
x = x.abs
# 絶対値が変わらなくなるまでに必要な移動回数(t)とその時のx座標(m)
t, m = x.divmod(d)
if t >= k
  # x座標が0まで到達しない場合はより0に近い値を出力
  puts (x-k*d).abs
elsif (k-t).even?
  # t回目から偶数回移動する場合はmで止まる
  puts m
else
  # t回目から奇数回移動する場合はmの反対側で止まる
  puts (m-d).abs
end