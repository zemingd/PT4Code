n,k = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)
h = [0] + h

dp = Array.new(n+1, 10**100)
dp[1] = 0

1.upto(n) do |ashiba|
  1.upto(k) do |jump|
    ashiba_index = ashiba + jump
    next if ashiba_index > n
    ashiba_now = h[ashiba]
    ashiba_new = h[ashiba_index]
    jump_cost = (ashiba_now - ashiba_new).abs
    tmp_cost = dp[ashiba] + jump_cost
    dp[ashiba_index] = [dp[ashiba_index], tmp_cost].min
  end
end

p dp.last
