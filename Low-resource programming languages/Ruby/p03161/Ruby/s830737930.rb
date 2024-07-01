lines = $stdin.read
array = lines.split("\n")
N,K = array[0].split(" ").map(&:to_i)
H = [0].concat(array[1].split(" ").map(&:to_i))
INF = 10**9

def cost(hi, hj)
  (H[hi]-H[hj]).abs
end

dp = Array.new(N+1, INF)
dp[1] = 0

for i in 1..N
  for j in i+1..i+K
    next if j>N
    #puts "#{i},#{j}"
    #puts "min(#{cost(i, j) + dp[i]} , #{dp[j]})"
    dp[j] = [ cost(i, j) + dp[i], dp[j] ].min
    #p dp
  end
end

#p dp
puts dp[N]
