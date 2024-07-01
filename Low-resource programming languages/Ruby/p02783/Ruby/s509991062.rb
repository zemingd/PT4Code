h,a=gets.chomp.split(" ").map(&:to_i);
c=0
while(1)
if h<=0
 p c
exit
end
h-=a
c+=1
end