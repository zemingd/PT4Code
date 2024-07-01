n=gets.to_i
mp=gets.split(' ').map(&:to_i).sort!
n.downto(1){ |i|
   if i==1 then
   printf("%d\n",mp[i-1])
   else
   printf("%d ",mp[i-1])
   end
}