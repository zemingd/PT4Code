lines = $stdin.read
array = lines.split("\n")
N = array[0].to_i
H = array[1].split(" ").map(&:to_i)
INF = 10**9

def cost(hi, hj)
  #puts "|#{H[hi]}-#{H[hj]}|=#{(H[hi]-H[hj]).abs}"
  ans = (H[hi]-H[hj]).abs
  ans
end

dp = Array.new(N, INF)
dp[0] = 0

for j in 1...N
  dp[j] = [ dp[j-1] + cost(j-1, j), dp[j] ].min
  dp[j] = [ dp[j-2] + cost(j-2, j), dp[j] ].min if j>1
end

puts dp[N-1]
