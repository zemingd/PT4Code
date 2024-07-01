x = gets
y = x.split.map(&:to_i)

print y[0]/y[1], "\s"
print y[0]%y[1], "\s"
puts sprintf( "%.5f", y[0].to_f/y[1] )