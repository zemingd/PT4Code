n, m = gets.strip.split.map(&:to_i)
a = readlines.map {|line| line.strip.to_i }.sort

MOD = 10**9+7
#p n
#p a
dp=[0]*(n+1)

a.each do |hall|
  dp[hall] = -1
end

dp[0]=1
n.times do |index|
  next if dp[index]==-1

  if (0..n)===(index+1) && dp[index+1]>=0
    dp[index+1]=(dp[index]+dp[index+1])%MOD
  end
  if (0..n)===(index+2) && dp[index+2]>=0
    dp[index+2]=(dp[index]+dp[index+2])%MOD
  end
end

 p dp[n]%MOD