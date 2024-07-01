@f = []
def dp_step(n)
  if @f[n]
    return @f[n]
  else
    @f[n] = dp_step(n-1) + dp_step(n-2)
  end
end

MOD = 1_000_000_007
N,M = gets.split.map(&:to_i)
A = []
(1..M).each{|m| A << gets.to_i}
@f[0],@f[1] = 1, 2
A.each{|a| @f[a]=0}
p dp_step(N) % MOD