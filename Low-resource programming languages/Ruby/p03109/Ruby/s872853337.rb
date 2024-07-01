yyyy,mm,bb = gets.chop.split("/").map(&:to_i)

if yyyy == 2019 && mm < 05 
    print "Heisei"
elsif yyyy < 2019 
    print "Heisei"
else
    print "TBD"
end