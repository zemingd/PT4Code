n,a,b = gets.split.map(&:to_i)
if (a-b)%2 == 0
  p ((a-b).abs)/2
  exit
end
p [[a-1,b-1].max,[n-a,n-b].max].min
