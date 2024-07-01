def draw
   mp=gets.split(' ').map(&:to_i)
   if mp[0]==0 && mp[1]==0 then return -1 end
   for y in 1..mp[0] do
      for x in 1..mp[1] do
         print "#"
      end
      print "\n"
   end
   return 0
end

ret=draw
until ret==-1 do
    ret=draw
end