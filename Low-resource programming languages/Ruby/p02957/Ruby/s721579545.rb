a,b=gets.split.map(&:to_i)
if (b+a)%2==0 then
    print (b+a).abs/2
else 
    print "IMPOSSIBLE"
end 
