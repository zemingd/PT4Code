a = gets.split.map(&:to_f)
b = a[0] /a[1]
a=a.map(&:to_i)
print "#{a[0]/a[1]} #{a[0]%a[1]} "
puts sprintf( "%.5f", b )