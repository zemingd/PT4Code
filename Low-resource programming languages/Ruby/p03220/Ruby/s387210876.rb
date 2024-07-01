n = gets.to_i
t, a = gets.split.map(&:to_i)
ary = gets.split.map(&:to_i)
ans = []
n.times do |i|
  ans[i] = (a - (t - ary[i] * 0.006)).abs
end
puts ans.index(ans.min)+1