n = gets.chomp.to_i

l = [1]

tmp = 6
while tmp < 10**5
  l.push(tmp)
  tmp *= 6
end

tmp = 9
while tmp < 10**5
  l.push(tmp)
  tmp *= 9
end

l.sort!


dp = Array.new(n+1, 10**10)

dp[0] = 0

def min(a,b)
  a < b ? a : b
end


1.upto(n) do |i|
  l.each do |num|
    next if i - num < 0
    dp[i] = min(dp[i], dp[i-num] + 1)
  end
end

p dp[n]
