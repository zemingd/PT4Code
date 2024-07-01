INF = 10**6

def coin(amount,kind,coins)
  coins = [0].concat(coins)
  dp = Array.new(kind+1).map{Array.new(amount+1, INF)}
  dp.each{|line| line[0]=1}

  for i in 1..kind
    for j in 1..amount
      if coins[i] > j
        dp[i][j] = dp[i-1][j]
      else
        count = (j-coins[i]/coins[i]) > 0 ? 1: 0
        dp[i][j] = [dp[i-1][j], dp[i][j-coins[i]] + count].min
      end
    end
  end
  dp
end

def pow_arr(n, max)
  arr = [n]
  cur = n
  while cur <= max
    cur = cur * n
    arr << cur
  end
  arr.delete(cur)
  arr
end

lines = $stdin.read
array = lines.split("\n")
N = array[0].to_i
six_pow = pow_arr(6, N)
nine_pow = pow_arr(9, N)

coins = [1]
coins = coins.concat(six_pow)
coins = coins.concat(nine_pow)
coins.sort!

dp = coin(N, coins.length, coins)
puts dp[coins.length][N]
