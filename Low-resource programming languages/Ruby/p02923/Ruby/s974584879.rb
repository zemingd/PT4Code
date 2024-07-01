n = gets.to_i
h = gets.split.map &:to_i
ans = 0
c = 0
d = -1
(0...n).each do |i|
  c = 0 if d < h[i]
  c += 1
  ans = c if ans<c
  d = h[i]
end
p ans