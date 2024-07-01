M=10**9+7
dp=Array.new(13){0}
dp[0]=1
pow=1
gets.chop.reverse.chars.each do |c|
  nex=Array.new(13){0}
  if c==??
    10.times do |k|
      13.times do |i|
        n=(i+k*pow)%13
        nex[n]=(nex[n]+dp[i])%M
      end
    end
  else
    13.times do |i|
      n=(i+c.to_i*pow)%13
      nex[n]=(nex[n]+dp[i])%M
    end
  end
  pow=(pow*10)%13
  dp=nex
end
p dp[5]