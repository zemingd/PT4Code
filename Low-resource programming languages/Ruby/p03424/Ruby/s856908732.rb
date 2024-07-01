n=gets.to_i
ss=gets.split(" ")

print "Three\n" if ss.uniq.size==3
print "Four\n" if ss.uniq.size==4
