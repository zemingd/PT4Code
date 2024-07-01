n,k = gets.chomp.split(" ").map(&:to_i)
h_arr = gets.chomp.split(" ").map(&:to_i)

# i番目にたどり着くまでのコストの総和の最小値
dp = [0, (h_arr[1] - h_arr[0]).abs]
(2..n-1).each do |i|
  step = k < i ? k : i
  min = 100000000000000
  (1..step).each do |j|
    tmp = dp[i-j] + (h_arr[i] - h_arr[i-j]).abs
    min = tmp if tmp < min
  end
  dp[i] = min
end
puts dp[n-1]