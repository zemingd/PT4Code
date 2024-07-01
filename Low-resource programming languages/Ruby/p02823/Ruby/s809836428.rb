n,a,b = gets.split.map(&:to_i)
d = b-a
if d%2==0
  p d/2
else
  x = [[b-1, n-a].min]
  x << a+(d-a+1)/2 if (d-a+1)/2>0
  x << (n-b+1)+(d-(n-b+1+1))/2 if (d-(n-b+1+1))/2>0
  p x.min
end
