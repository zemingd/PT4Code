n, m = gets.split.map(&:to_i)
a, b = m.times.map { gets.split.map(&:to_i) }.transpose

ans = Array.new(n + 1, 0)
m.times do |i|
  ans[a[i]] += 1
  ans[b[i]] += 1
end

puts ans[1..n]