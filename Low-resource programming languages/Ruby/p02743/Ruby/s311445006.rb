abc = gets.split(' ').map(&:to_i)

a = abc[0]
b = abc[1]
c = abc[2]

if Math.sqrt(a) + Math.sqrt(b) < Math.sqrt(c) then 
    print "yes"
else
    print "no"
end