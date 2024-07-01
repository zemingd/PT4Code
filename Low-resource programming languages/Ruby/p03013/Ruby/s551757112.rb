n, m = gets.chomp.split.map(&:to_i)
a = [-1] + Array.new(m){gets.to_i} + [n + 1]
r = [0, 1]
rl = 1
cnt = 1
(m + 1).times do |i|
  range = a[i + 1] - a[i] - 1
  while rl < range
    r = r + [(r[-2] + r[-1])]
    rl += 1
  end
  cnt *= r[range]
end
puts cnt % 1000000007