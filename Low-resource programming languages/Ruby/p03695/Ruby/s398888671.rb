_ = gets
A = gets.split.map(&:to_i)
RATE = [400,800,1200,1600,2000,2400,2800,3200]

g = A.group_by {|a| RATE.find {|n| a < n } }
ans = [g.size, g.size]
if g[nil]
  ans[0] = [1, ans[0]-1].max
  ans[1] += g[nil].size - 1
end
puts ans.join(' ')