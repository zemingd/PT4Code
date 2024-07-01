n=gets.to_i
d=gets.split.map(&:to_i)
kumi = d.combination(2)

ans = 0
kumi.each do |(x, y)|
  ans += x*y
end
p ans