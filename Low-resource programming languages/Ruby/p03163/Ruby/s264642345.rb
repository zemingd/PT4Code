n, W_LIMIT = gets.to_s.split.map{|t| t.to_i }
wv = Array.new(n){ gets.to_s.split.map{|t| t.to_i } }.sort_by{|w, _| w }

inf = 10 ** 12
dp = Array.new(W_LIMIT+1){ -inf }
dp[0] = 0

w_sum = 0
wv.each do |(w_i, v_i)|
  w_sum = W_LIMIT < w_sum + w_i ? W_LIMIT : w_sum + w_i
  w_sum.downto(w_i) do |w|
    dp[w] = dp[w-w_i] + v_i if dp[w] < dp[w-w_i] + v_i
  end
end

p dp.max