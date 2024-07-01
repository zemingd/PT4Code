n = gets.to_i
datas = gets.split("")
dp = Array.new(n+100,0)
dp[0] = datas.count("E")
if datas[0] == "E"
  dp[0] -= 1
end
min = dp[0]
for i in 0..(n-2)
  dp[i+1] = dp[i]
  dp[i+1] += 1 if datas[i] == "W"
  dp[i+1] -= 1 if datas[i+1] == "E"
  if dp[i+1] < min
    min = dp[i+1]
  end
end
#ラスト一個はDPだと無理なので手動
dp[n-1] = dp[n-2]
dp[n-1] += 1 if dp[n-2] == "W"
if dp[n-1] < min
  min = dp[n-1]
end



puts min.to_s