def typical_stairs(n, memo)
  return 0 if n < 0
  return memo[n] if memo[n]

  1.upto(n) do |i|
    memo[i] = memo[i - 1] + memo[i - 2] unless memo[i]
  end
  memo[n] % 1000000007
end

n, m = gets.split.map(&:to_i)
memo = { -1 => 0, 0 => 1 }
m.times { memo[gets.chomp.to_i] = 0 }

puts typical_stairs(n, memo)