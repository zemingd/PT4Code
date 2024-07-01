n, m = gets.chomp.split.map(&:to_i)
cnt = Array.new(n + 1, 0)
m.times do |_|
  l, r = gets.chomp.split.map(&:to_i)
  cnt[l - 1] += 1
  cnt[r] -= 1
end

(1..n).each do |i|
  cnt[i] += cnt[i - 1]
end

puts cnt.count(m)