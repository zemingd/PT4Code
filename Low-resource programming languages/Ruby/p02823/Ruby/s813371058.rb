n,a,b = gets.split.map(&:to_i)
d = b-a
if d%2==0
  p d/2
else
  x = [b-1, n-a].min
  y = [a+(d-a+1)/2, (n-b+1)+(d-(n-b+1+1))/2].min
  p [x,y].min
end
