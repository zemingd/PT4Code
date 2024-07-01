n, w_max = gets.split.map(&:to_i)
items = Array.new(n){gets.split.map(&:to_i)}
dp = Hash.new(0)
dp[0] = 0
ans = 0
items.each do |w, v|
  dp.dup.each do |pw, pv|
    nw = pw + w
    nv = pv + v
    ans = dp[nw] = nv if nw <= w_max && dp[nw] < nv
  end
end
puts ans
