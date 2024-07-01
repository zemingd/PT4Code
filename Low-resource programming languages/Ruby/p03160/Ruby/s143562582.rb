N = gets.to_i
h = gets.split(' ').map(&:to_i)

dp = Array.new(N, 10**4)
N.times do |i|
  next if i == 0
  if i == 1
    dp[i] = (h[1]-h[0]).abs
  elsif i >=2
    a = dp[i-1]+(h[i]-h[i-1]).abs
    b = (h[i]-h[i-2]).abs
    b += dp[i-2] if i > 2
    dp[i] = [a, b].min
  end
end

puts dp[N-1]