a = gets
b = a.split
c = b[0] + b[1]

if ((c.to_i) ** 0.5)%1 == 0 then
    print "Yes"
else
    print "No"
end