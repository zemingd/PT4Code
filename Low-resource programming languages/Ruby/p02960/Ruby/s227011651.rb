mod=10**9+7
io = STDIN
s=io.gets.chomp
m,n=s.size,13
dp=Array.new(n,0)
nextdp=Array.new(n,0)
dp[0]=1
m.times do |i|
  nextdp.fill(0)
  digit=10**i
  if s[-1-i]=="?"
    10.times do |k|
      n.times do |j|
        nextdp[(k*digit+j)%n]+=dp[j]
      end
    end
  else
    k=s[-1-i].to_i
    n.times do |j|
      nextdp[(k*digit+j)%n]+=dp[j]
    end
  end
  n.times{|j|dp[j]=nextdp[j]%mod}
end
p dp[5]
