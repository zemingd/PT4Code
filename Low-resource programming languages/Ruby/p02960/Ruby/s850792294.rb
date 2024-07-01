s = gets.chomp
div = 1000000007

dp = []
100005.times do |i|
  dp[i] = [0,0,0,0,0,0,0,0,0,0,0,0,0]
end
dp[0][0] = 1

len = s.size
len.times do |i|
  c = s[i].to_i if s[i] != "?"
  c = -1        if s[i] == "?"
  10.times do |j|
    next if (c != -1 && c != j)
    13.times do |ki|
      dp[i+1][(ki*10+j)%13] += dp[i][ki]
    end
  end
  13.times do |j|
    dp[i+1][j] %= div
  end
end

puts dp[len][5]
