N = gets.chomp
a = N.gsub('1', '0')
b = a.gsub('9', '1')
c = b.gsub('0', '9')
puts(c)