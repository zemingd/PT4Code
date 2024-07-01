x,y=gets.split.map(&:to_i)
k=(x.abs-y.abs).abs
if x<=y && (x>=0 || y<=0)
  puts k
elsif y<x && (y>0 || x<0)
  puts k+2
else
  puts k+1
end
