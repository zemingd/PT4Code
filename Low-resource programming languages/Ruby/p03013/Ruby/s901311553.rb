n, m = gets.chomp.split.map(&:to_i)
a = [-1] + Array.new(m){gets.to_i} + [n + 1]
r = [0, 1]
rl = 1
cnt = 1
100000.times do |i|
  r[i + 2] = (r[-2] + r[-1]) % 1000000007
end
(m + 1).times do |i|
  range = a[i + 1] - a[i] - 1
  cnt = cnt * r[range] % 1000000007
end
puts cnt % 1000000007
