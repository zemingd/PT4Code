(d,t,s) = gets.split.map(&:to_i)

if d <= t*s
    print "Yes"
else
    print "No"
end