N, M = gets.split(' ').map(&:to_i)
A = gets.split(' ').map(&:to_i)
usable = [] # usable[i]: 数字iを使えるかどうか
A.each { |a| usable[a] = true }
nums = [1, 7, 4, 5, 3, 2, 9, 6, 8] # マッチの本数順にソートされた数字
mnums = [nil, 2, 5, 5, 4, 5, 6, 3, 7, 6] # mnums[i]: 数字iのマッチの本数
dp = [] # dp[i]: i本のマッチをちょうど使ってできる最大桁数

dp[0] = 0
1.upto(N) do |i|
  nums.each do |num|
    next if !usable[num] || i < mnums[num]
    dp[i] = [dp[i].to_i, dp[i - mnums[num]].to_i + 1].max
  end
end

n = N
dp.last.times do
  9.downto(1).each do |num|
    if usable[num] && n >= mnums[num] && dp[n - mnums[num]] == dp[n] - 1
      n -= mnums[num]
      print num
      break
    end
  end
end

puts