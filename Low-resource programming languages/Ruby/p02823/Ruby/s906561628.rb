n,a,b = gets.split.map(&:to_i)
if (a-b).abs%2 == 0
  puts ((a-b).abs)/2
else
  x = [([a,b].max)-1,n-([a,b].max)+1+((a-b).abs-1)/2].min
  y = [n-([a,b].min),([a,b].min)+((a-b).abs-1)/2].min
  puts [x,y].min
end