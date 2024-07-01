MOD = 10 ** 9 + 7
n = gets.to_s.to_i
a = gets.to_s.split.map { |v| v.to_i }
cnt = Array.new(60, 0)

a.each do |v|
  60.times do |i|
    cnt[i] += 1 if v >> i & 1 == 1
  end
end

ans = 0
cnt.each_with_index do |v, i|
  ans += 2 ** i * v * (n - v)
  ans %= MOD
end
puts ans
