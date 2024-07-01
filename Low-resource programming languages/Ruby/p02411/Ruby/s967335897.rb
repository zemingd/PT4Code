seiseki=Array.new()
while true do
mp=gets.split(' ').map(&:to_i)
if mp[0]==-1 && mp[1]==-1 && mp[2]==-1 then
   break
end
   if mp[0]+mp[1]>=80 then
   seiseki.push('A')
   elsif mp[0]+mp[1]>=65 then
   seiseki.push('B')
   elsif mp[0]+mp[1]>=50 || mp[2]>=50 then
   seiseki.push('C')
   elsif mp[0]+mp[2]>=30 then
   seiseki.push('D')
   else
   seiseki.push('F')
end
end

seiseki.each{|s|
   printf("%s\n",s)
}