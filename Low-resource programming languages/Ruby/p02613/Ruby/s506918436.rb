s=gets.to_i
a=ARGF.map{|s|s.chomp}


print "AC x #{a.count'AC'}\n"
print "WA x #{a.count'WA'}\n"
print "TLE x #{a.count'TLE'}\n"
print "RE x #{a.count'RE'}\n"