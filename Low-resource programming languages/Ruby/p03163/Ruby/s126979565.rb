n, w_max = gets.split.map(&:to_i)
items = Array.new(n){gets.split.map(&:to_i)}
dp = Array.new(w_max+1, 0)
items.each do |iw, iv|
  prev = dp.dup
  (iw..w_max).each do |w|
    v = prev[w - iw] + iv
    dp[w] = v if prev[w] < v
  end
end
puts dp.last
