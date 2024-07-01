MOD = 10**9 + 7

count = Array.new(61, 0)
n = gets.chomp.to_i
a = gets.chomp.split.map { |item| item.to_i }

61.times do |j|
  count[j] = a.count { |item| item[j] == 1 }
end

ans = 0

61.times do |i|
  ans += ( 2**i * (n - count[i]) * count[i] ) % MOD
end

puts ans % MOD