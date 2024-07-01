n, w_max = gets.split.map(&:to_i)
items = Array.new(n){gets.split.map(&:to_i)}
dp = Hash.new(0)
dp[0] = 0
ans = 0
items.each do |w, v|
  dp.dup.each do |pw, pv|
    if pw+w <= w_max && dp[pw+w] < pv+v
      ans = dp[pw+w] = pv+v
    end
  end
end
puts ans
