A,B = gets.chop.split(" ").map(&:to_i)

if (B%A) == 0
    print "#{A+B}"
else
    print "#{B-A}"
end