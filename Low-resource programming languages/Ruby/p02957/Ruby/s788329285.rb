(a,b)=gets.split.map(&:to_i).sort

if (b-a)%2 == 1
    print "IMPOSSIBLE"
else
    print a + (b-a)/2
end