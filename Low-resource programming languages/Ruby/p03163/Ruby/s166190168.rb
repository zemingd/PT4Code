n, w_max = gets.split.map(&:to_i)
items = Array.new(n){gets.split.map(&:to_i)}
dp = Array.new(w_max+1, 0)
items.each do |item|
  wi, vi = item
  tmp = dp.dup
  (wi..w_max).each{|w| tmp[w] = [dp[w], vi + dp[w-wi]].max}
  dp = tmp
end
puts dp.last
