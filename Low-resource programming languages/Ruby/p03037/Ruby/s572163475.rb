n, m = gets.split.map &:to_i
l, r = 1, n
for i in 0...m
  li, ri = gets.split.map &:to_i
  l = li if li > l
  r = ri if ri < r
  if l > r
    p 0
    exit
  end
end

p r - l + 1