MOD = 1_000_000_007
n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

lim = 60
bit_count = Array.new(lim, 0)
de = false

a.each do |num|
  lim.times do |i|
    bit_count[i] += num[i]
  end
end

p ['init', bit_count] if de

ans = 0

lim.times do |i|
  ans += bit_count[i] * (n - bit_count[i]) * 2 ** i
  ans %= MOD #=
end

puts ans


