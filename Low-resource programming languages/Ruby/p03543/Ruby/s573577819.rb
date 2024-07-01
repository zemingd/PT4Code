n=gets.to_i
a=n/1000
b=(n-a*1000)/100
c=(n-a*1000-b*100)/10
d=n-a*1000-b*100-c*10
if b==c
  puts a==c||b==d ? :Yes : :No
else puts :No
end
