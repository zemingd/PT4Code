INF = 10**8
N = gets.to_i

arr = gets.split.map(&:to_i)
# p arr
dp = Array.new(N, INF)
dp[0] = 0
1.upto(N-1) do |i|
  if i-2 >= 0
    dp[i] = [dp[i-2] + (arr[i-2] - arr[i]).abs, dp[i-1] + (arr[i-1] - arr[i]).abs].min
  elsif i-1 >= 0
    dp[i] = dp[i-1] + (arr[i-1] - arr[i]).abs
  else
    puts "error!!"
  end
end
puts dp[N-1]