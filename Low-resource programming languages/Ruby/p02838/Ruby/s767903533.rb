MOD = 1_000_000_007
io = STDIN
n=io.gets.to_i
a=io.gets.split.map(&:to_i)
ans=0
60.times do |i|
  bitcnt=0
  n.times do |j|
    bitcnt+=1 if a[j][0]==1
    a[j]=a[j]>>=1
  end
  ans=(ans+((bitcnt*(n-bitcnt))<<i)) % MOD
end
p ans
