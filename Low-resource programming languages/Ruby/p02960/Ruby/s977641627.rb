mod=10**9+7
io = STDIN
s=io.gets.chomp
N=13
dp=Array.new(N,0)
nextdp=Array.new(N,0)
enum= 10.times.flat_map do |k|
        N.times.map do |j|
          [(10*j+k)%N,j]
        end
      end
dp[0]=1
s.each_char do |c|
  nextdp.fill(0)
  if c=="?"
    enum.each do |i,j|
      nextdp[i]+=dp[j]
    end
  else
    k=c.to_i
    enum[N*k,N].each do |i,j|
      nextdp[i]+=dp[j]
    end
  end
  N.times{|j|dp[j]=nextdp[j]%mod}
end
p dp[5]
