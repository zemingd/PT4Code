input = gets.split('').reverse

dp = Array.new(input.length+1){|| Array.new(13, 0)}
dp[0][0] = 1

for i in 0..input.length-1 do
  if input[i] != '?' then # 固定桁
    # その桁の剰余
    m = (input[i].to_i)*(10**i) % 13
    for n in 0..12 do
      # dp[i]をdp[i+1]にシフト
      dp[i+1][(n+m)%13] += dp[i][n]
    end
  else                    # 可変桁
    for v in 0..9 do
      m = v * (10**i) % 13
      for n in 0..12 do
        # dp[i]をdp[i+1]にシフト
        dp[i+1][(n+m)%13] += dp[i][n]
        dp[i+1][(n+m)%13] %= ((10**9)+7)
      end
    end
  end
end

#p dp
print dp[input.length][5]
