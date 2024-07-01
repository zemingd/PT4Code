a,b,c = gets.split(" ")
ls = [a.to_i, b.to_i, c.to_i]

ls.sort!

print "#{ls[2]-ls[0]}\n"