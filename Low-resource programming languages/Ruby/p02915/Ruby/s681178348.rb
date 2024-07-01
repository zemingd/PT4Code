n = gets.to_i
p = gets.split(' ').map &:to_i
ans = []
(0..n-1).to_a.combination(2) do |a,b|
  ar = p[a..b].sort
  ans << ar[-2]
end
p ans.inject(:+)
