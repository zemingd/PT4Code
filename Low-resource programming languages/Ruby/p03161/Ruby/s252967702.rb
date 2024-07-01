file = File.exist?('in.in') ? File.new('in.in','r') : STDIN
n, k = file.gets.chomp.split.map(&:to_i)
vec = file.gets.chomp.split.map(&:to_i)
INF = 4611686018427387903
dp = []
dp << 0
dp << (vec[0] - vec[1]).abs
for i in 2...n
  dp << INF
  j=1
  while(j<=k && i-j >= 0)
    dp[i] = [dp[i], dp[i-j]+(vec[i-j]- vec[i]).abs].min
    j+=1
  end
end
puts dp.last

