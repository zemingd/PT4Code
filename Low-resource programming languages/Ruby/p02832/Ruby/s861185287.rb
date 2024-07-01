n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
n.times do |i|
  ans += 1 if ans + 1 == a[i]
end
p ans == 0 ? -1 : n-ans