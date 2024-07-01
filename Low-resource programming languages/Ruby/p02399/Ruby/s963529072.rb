a,b = gets.chomp.split.map(&:to_i)
d = a / b
r = a % b
f = a.to_f / b.to_f
print "#{d} "
print "#{r} "
puts sprintf("%.5f", f)