gets;
a=gets.split.map(&:to_i)

r = a.each_with_index .select{|e,i| e != i+1} .size

if r <=2
    print "YES"
else
    print "NO"
end 