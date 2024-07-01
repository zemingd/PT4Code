n,a,b = gets.split.map(&:to_i)
if (a-b).abs%2==0
  p (a-b).abs/2
else
  x = [b-1, n-a].min
  y = [a+(b-a)/2, (n-b+1)+((b-a)-(n-b+1))/2].min
  p [x,y].min
end
