mod=10**9+7
io = STDIN
s=io.gets.chomp
m,n=s.size,13
dp=Array.new(n,0)
dp[0]=1
m.times do |i|
  nextdp=Array.new(n,0)
  digit=10**i
  n.times{|j|nextdp[j]=0}
  if s[-1-i]=="?"
    10.times do |k|
      n.times do |j|
        ix=(k*digit+j)%n
        nextdp[ix]+=dp[j]
        nextdp[ix]%=mod
      end
    end
  else
    k=s[-1-i].to_i
    n.times do |j|
      ix=(k*digit+j)%n
      nextdp[ix]+=dp[j]
      nextdp[ix]%=mod
    end
  end
  dp=nextdp
end
p dp[5]
