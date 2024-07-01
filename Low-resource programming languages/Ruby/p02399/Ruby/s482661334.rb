a,b = gets.chomp.split(' ').map(&:to_i)
print (a/b)
print ' '
print (a%b)
print ' '
puts (a.to_f/b.to_f).round(6)