s = gets.chop.split('').map(&:to_i)
ans = []
0.upto(s.size-3) do |i|
  ans[i] = (753 - (s[i] * 100 + s[i+1] * 10 + s[i+2])).abs
end
puts ans.min