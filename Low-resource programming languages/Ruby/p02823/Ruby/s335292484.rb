n,a,b = gets.split.map(&:to_i)
d = (a-b).abs
if d%2==0
  p d
else
  a,b = [a,b].sort
  p [b-1, n-a].min
end
