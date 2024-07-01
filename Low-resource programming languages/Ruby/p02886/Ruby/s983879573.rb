n = gets.to_i
d = gets.split.map(&:to_i)

ans = 0
d.combination(2).to_a.each do |a|
  ans += a[0] * a[1]
end
p ans