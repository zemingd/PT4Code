n,w = gets.chomp.split.map(&:to_i)
wv_arr = n.times.map{gets.chomp.split(" ").map(&:to_i)}

dp = Array.new(w+1, 0)

wv_arr.each do |wi, vi|
  w.downto(0) do |sum_w|
    if sum_w - wi >= 0 && dp[sum_w - wi] + vi > dp[sum_w]
      dp[sum_w] = dp[sum_w - wi] + vi
    end
  end
end

puts dp[w]