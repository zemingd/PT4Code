n,a,b = gets.split.map(&:to_i)
if ((a-b).abs)%2 == 0
  puts ((a-b).abs)/2
else
  puts [([a,b].max)-1,n-([a,b].min)].min
end