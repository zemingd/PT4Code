MOD = 10 ** 9 + 7

n = $stdin.readline.to_i
a = $stdin.readline.chomp.split.map(&:to_i).sort!
k = a[-1].bit_length
dp = Array.new(k) { Array.new(2, 0) }

res = 0
k.times do |b|
  n.times do |i|
    dp[b][(a[i] >> b) & 1] += 1
  end
  res = (res + dp[b].inject(:*) * 2.pow(b, MOD) % MOD) % MOD
end
puts res