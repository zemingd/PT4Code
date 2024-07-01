n = gets.to_i
t = Array.new(n,0)
n.times do |i|
  t[i] = gets.to_i
end
dp = Array.new(n,0)
def gcd(a,b)
  n = a > b ? b : a
  m = a > b ? a : b
  while n != 0 && m != 1 do
    n,m = m%n,n
  end
  (a / m) * b
end
dp[0] = t[0]
1.upto(n-1) do |i|
  dp[i] = gcd(dp[i-1],t[i])
end
puts dp[n-1]