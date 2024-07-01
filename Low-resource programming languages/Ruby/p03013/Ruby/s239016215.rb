MOD = 10**9+7
n,m = gets.chomp.split(" ").map(&:to_i)
a = []
m.times do |i|
  a[i] = gets.to_i
end
dp = [1,1,2]
for i in 3..n
  dp[i] = dp[i-1] + dp[i-2]
end
indi = 0
count = 1
m.times do |i|
  count = count * dp[a[i]-1 - indi]
  count %= MOD
  indi = a[i]+1
  if i>0
    if a[i]-1 == a[i-1]
      puts 0
      exit
    end
  end
end
count = count * dp[n - indi]
count %= MOD
puts count