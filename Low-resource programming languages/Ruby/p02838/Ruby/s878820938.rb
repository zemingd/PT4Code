N = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i).sort
MOD = 10**9 + 7

if A.last.zero?
  puts 0
  exit
end

mbit = Math.log2(A.last).ceil
bit_cnt = (0..mbit).map {|b| A.count{|a| a[b] == 1} }

ans = 0
0.upto(mbit) do |b|
  ans += (2 ** b) * bit_cnt[b] * (N - bit_cnt[b])
  ans %= MOD
end
puts ans
