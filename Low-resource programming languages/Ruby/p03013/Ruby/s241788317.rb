def typical_stairs(n, memo)
  return 0 if n < 0
  return memo[n] if memo[n]

  memo[n] = (typical_stairs(n - 1, memo) + typical_stairs(n - 2, memo)) % 1000000007
end


n, m = gets.split.map(&:to_i)
memo = { 0 => 1 }
m.times{ memo[gets.chomp.to_i] = 0 }
 
puts typical_stairs(n, memo)