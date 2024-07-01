a, b, c = gets.chomp.split(" ").map(&:to_i)

tmp = a
a = b
b = tmp
tmp = a
a = c
c = tmp

print "#{a} #{b} #{c}\n"