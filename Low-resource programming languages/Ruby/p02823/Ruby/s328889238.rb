n,a,b = gets.split.map(&:to_i)

if (a-b).even?
  p [[a,b].max - 1, n - [a,b].min - 1, (a-b).abs/2].min
else
  a,b = b,a if a > b
  x = a + ((b-a) - 1)/2

  k = n-b+1 
  y = k + (n-(a+k))/2
  p [x,y].min
end