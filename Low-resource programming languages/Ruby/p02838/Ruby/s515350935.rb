MOD = 1_000_000_007
io = STDIN
n=io.gets.to_i
a=io.gets.split.map(&:to_i)
ans=0
60.times do |i|
  bitcnt=a.count do |aa|
    aa[i]==1
  end
  ans+=bitcnt*(n-bitcnt)*(1<<i)
end
p ans % MOD
