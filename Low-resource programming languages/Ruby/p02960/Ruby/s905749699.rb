M=10**9+7
S=gets.chop
dp=Array.new(S.size+1){Array.new(13){0}}
dp[0][0]=1
pow=1
S.reverse.chars.each.with_index do |c,i|
  if c==??
    10.times do |k|
      13.times do |j|
        n=(j+k*pow)%13
        dp[i+1][n]=(dp[i+1][n]+dp[i][j])%M
      end
    end
  else
    13.times do |j|
      n=(j+c.to_i*pow)%13
      dp[i+1][n]=(dp[i+1][n]+dp[i][j])%M
    end
  end
  pow=(pow*10)%13
end
p dp[-1][5]