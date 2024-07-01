n = gets.to_i
s = gets.chop.chars
ans = []
(1...n).each do |i|
  t = s.dup
  u = t.shift(i)
  ans << (t & u).size
end
p ans.max