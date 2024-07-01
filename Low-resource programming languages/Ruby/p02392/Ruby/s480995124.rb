i=gets
a=i.split[0].to_i
b=i.split[1].to_i
c=i.split[2].to_i
if (a < b) && (b < c)
    print "Yes\n"
else
    print "No\n"
end
