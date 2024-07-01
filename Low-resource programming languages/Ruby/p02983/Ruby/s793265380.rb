def min(a,b); a < b ? a : b; end

l,r = gets.split.map(&:to_i)
r = min(l + 2019, r)
ans = 2019
(l .. r).to_a.combination(2) do |i,j|
  ans = min(ans, (i * j) % 2019)
  break if ans.zero?
end
puts ans
