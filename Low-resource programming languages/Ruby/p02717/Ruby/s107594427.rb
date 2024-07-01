ar = gets.split
dd = gets.split

n = ar[0].to_i
m = ar[1].to_i
#p dd.map!{|x| x.to_i}
dsum = dd.map!{|x| x.to_i}.inject(:+)

cnt = 0
for j in 1..n do
  if (dd[j-1] > dsum/(4*m)) then
    cnt = cnt+1
  end
end
    
if (cnt<m) then
  puts( "no" )
elsif
  puts( 'yes')
end