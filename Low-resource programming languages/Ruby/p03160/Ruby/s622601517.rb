f = STDIN
n = f.gets.chomp.to_i
h_list = f.gets.split(" ").map(&:to_i)


dp = Array.new(n){|_| Float::INFINITY }
# 初期化
dp[0] = 0

(1..(n-1)).to_a.each do |i|
  if i == 1
    dp[1] = (h_list[0] - h_list[1]).abs
    next
  end

  d1 = (h_list[i] - h_list[i-1]).abs + dp[i-1]
  d2 = (h_list[i] - h_list[i-2]).abs + dp[i-2]
  if d1 < d2
    dp[i] = d1
  else
    dp[i] = d2
  end
end

puts dp.last
