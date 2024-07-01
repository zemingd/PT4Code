MOD = 10**9 + 7

n = gets.chomp.to_i
a = gets.chomp.split

count = Array.new(61,0)
n.times do |i|
  ai = a[i].to_i
  61.times do |j|
    count[j] += 1 if (ai & 1<<j) != 0
  end
end

ans = 0
61.times do |i|
  ans += (1<<i) * (n - count[i]) * count[i]
end

puts(ans % MOD)