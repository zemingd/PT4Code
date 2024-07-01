a,b = gets.chomp.split(" ").map(&:to_i)
if a != 2 && b != 2
    print "Yes"
else
    print "No"
end