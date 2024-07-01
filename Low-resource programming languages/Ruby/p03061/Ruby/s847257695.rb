N = gets.to_i
as = gets.split.map(&:to_i)
ans = 0
as.combination(2).to_a.each do |a,b|
  ans = a.gcd(b) if a.gcd(b) > ans
end
p ans