lines = $stdin.read
array = lines.split("\n")
N,K = array[0].split(" ").map(&:to_i)
H = [0].concat(array[1].split(" ").map(&:to_i))
INF = 10**5

def cost(hi, hj)
  (H[hi]-H[hj]).abs
end

dp = Array.new(N+1).map{Array.new(N+1, INF)}
dp[1][1] = 0

for i in 1..N
  for j in 1..(i+K)
    next if j > N
    next if i==1 and j==1
    if i > j
      #puts "  dp[i][j] = dp[i-1][j](#{dp[i-1][j]})"
      dp[i][j] = dp[i-1][j]
    else
      dp[i][j] = [dp[i][i] + cost(i, j), dp[i-1][j] ].min
    end
  end
end

#dp.each{|l| p l}
puts dp[N][N]