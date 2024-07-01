n = gets.to_i
d = gets.split.map(& :to_i)
ans = 0
n.times do |i|
  (i + 1).upto(n - 1) do |j|
    ans += d[i] * d[j]
  end
end
p ans