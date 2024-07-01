n, m = gets.split.map(&:to_i)
l, r = 1, n
m.times do
  ln, rn = gets.split.map(&:to_i)
  l = ln if l <= ln
  r = rn if r >= rn
end
 
puts [r - l + 1, 0].max