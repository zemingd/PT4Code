n, w_max = gets.split.map(&:to_i)
items = Array.new(n){gets.split.map(&:to_i)}
dp = Array.new(w_max+1, 0)
items.each do |wi, vi|
  prev = dp.dup
  (wi..w_max).each do |w|
    v = vi + prev[w-wi]
    dp[w] = v if v > prev[w]
  end
end
puts dp.last
