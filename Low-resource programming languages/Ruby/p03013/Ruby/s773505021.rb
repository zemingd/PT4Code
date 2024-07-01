n, m = gets.split(" ").map(&:to_i)
broken = Array.new(m){gets.to_i}

inf = 999999999999
dp = Array.new(n, inf)

if broken.include?(1) && broken.include?(2)
  puts 0
  exit
elsif broken.include?(1)
  dp[0] = 0 ; dp[1] = 0 ; dp[2] = 1
elsif broken.include?(2)
  dp[0] = 0 ; dp[1] = 1 ; dp[2] = 0
else
  dp[0] = 0 ; dp[1] = 1 ; dp[2] = 2
end

3.upto(n) do |i|
  if broken.include?(i)
    dp[i] = 0
  else
    dp[i] = (dp[i-2] + dp[i-1]) % (10 ** 9 + 7)
  end
end

puts dp[-1]