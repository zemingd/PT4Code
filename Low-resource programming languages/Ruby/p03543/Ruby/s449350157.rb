integers = gets.split("")

if (integers[0] == integers[1] && integers[1] == integers[2]) || (integers[1] == integers[2] && integers[2] == integers[3]) then
    print "YES"
else
    print "NO"
end