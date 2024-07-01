N = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i).sort
MOD = 10**9 + 7

mbit = Math.log2(A.last).ceil
bit_cnt = Array.new(mbit+1, 0)

0.upto(mbit) do |b|
  mask = (1 << b)
  A.each do |a|
    bit_cnt[b] += 1 if ((a & mask) >> b) == 1
  end
end
ans = 0
0.upto(mbit) do |b|
  ans += (2 ** b) * bit_cnt[b] * (N - bit_cnt[b])
  ans %= MOD
end
puts ans
