N, M = gets.chomp.split.map(&:to_i)
A = Array.new(N, 0)  # 0 means no trap, 1 means existence of trap
M.times do
  i = gets.chomp.to_i
  i -= 1  # 0-indexed
  A[i] = 1
end

MOD = 1000000007

# p N, M
# p a

def solve
  dp = Array.new(N, 0)  # 0 initialized
  dp[0] = 1 if A[0] == 0
  dp[1] = 1 + dp[0] if A[1] == 0
  if (N <= 2) 
    p dp[N-1]
    return
  end

  0.upto(N-3).each do |i|
    if A[i+2] == 0
      dp[i+2] = dp[i+1] + dp[i]
      dp[i+2] %= MOD
    end
  end
  
  p dp[N-1]
end

solve