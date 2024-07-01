f = STDIN
n,k = f.readline.split(" ").map(&:to_i)
h_list = f.readline.split(" ").map(&:to_i)
  
dp = Array.new(n){|_| Float::INFINITY }
# 初期化
dp[0] = 0
 
(1..(n-1)).to_a.each do |i|
  if i == 1
    dp[1] = (h_list[0] - h_list[1]).abs
    next
  end
 
  (1..k).to_a.each do |j|
    diff = (h_list[i] - h_list[i-j]).abs + dp[i-j]
    if dp[i] > diff
      dp[i] = diff
    end
  end
end
 
puts dp.last