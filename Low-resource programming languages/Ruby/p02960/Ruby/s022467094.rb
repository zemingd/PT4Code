mod=10**9+7
io = STDIN
s=io.gets.chomp
m,n=s.size,13
dp=Array.new(n,0)
nextdp=Array.new(n,0)
dp[0]=1
s.each_char do |c|
  nextdp.fill(0)
  if c=="?"
    10.times do |k|
      n.times do |j|
        nextdp[(10*j+k)%n]+=dp[j]
      end
    end
  else
    k=c.to_i
    n.times do |j|
      nextdp[(10*j+k)%n]+=dp[j]
    end
  end
  n.times{|j|dp[j]=nextdp[j]%mod}
end
p dp[5]
