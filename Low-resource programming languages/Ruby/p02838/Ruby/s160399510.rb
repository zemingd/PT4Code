N = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i).sort
MOD = 10**9 + 7

if A.last.zero?
  puts 0
  exit
end

mbit = Math.log2(A.last).ceil
bit_cnt = Array.new(mbit+1, 0)

0.upto(mbit) do |b|
  mask = (1 << b)
  A.each do |a|
    bit_cnt[b] += ((a & mask) >> b)
  end
end
ans = 0
0.upto(mbit) do |b|
  ans += (2 ** b) * bit_cnt[b] * (N - bit_cnt[b])
  ans %= MOD
end
puts ans
