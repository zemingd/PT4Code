r = [0, 2, 5, 5, 4, 5, 6, 3, 7, 6]

n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

dp = Array.new(n + 1, -99999)
dp[0] = 0
n.times do |i_|
  i = i_ + 1
  m.times do |j|
    dp[i] = [dp[i], dp[i - r[a[j]]] + 1].max if i - r[a[j]] >= 0
  end
end
a.sort!
a.reverse!
ans = []
while n > 0
  m.times do |j|
    if n - r[a[j]] >= 0 && dp[n - r[a[j]]] == dp[n] - 1
      ans.push(a[j])
      n -= r[a[j]]
      break
    end
  end
end
puts ans.join