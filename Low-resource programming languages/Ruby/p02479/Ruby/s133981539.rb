r = gets.to_i
pi = Math.acos(-1)
puts ["%.7f" % (pi*r*r),"%.7f" % (2*pi*r)].join(" ")