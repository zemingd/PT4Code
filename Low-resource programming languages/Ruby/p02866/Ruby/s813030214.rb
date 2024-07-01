n = gets.to_i
d = gets.split.map(&:to_i)

if d[0] != 0
  puts 0
  exit
end

mod = 998244353

node_cnt = Array.new(n, 0)
n.times do |i|
  node_cnt[d[i]] += 1
end

if node_cnt[0] > 1
  puts 0
  exit
end

ans = 1
sum = 0
1.upto(n - 1) do |i|
  ans *= node_cnt[i - 1] ** node_cnt[i]
  ans %= mod
  sum += node_cnt[i]
  break if sum == n
end

puts ans