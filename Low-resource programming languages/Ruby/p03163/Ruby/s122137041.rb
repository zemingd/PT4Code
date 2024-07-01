N, W = gets.split.map(&:to_i)
dp = Array.new(W+1, 0)
N.times do
  tmp = dp.dup
  w, v = gets.split.map(&:to_i)
  w.upto(W) do |ww|
    vv = dp[ww - w] + v
    tmp[ww] = vv if vv > dp[ww]
  end
  dp = tmp
end
puts dp.last
