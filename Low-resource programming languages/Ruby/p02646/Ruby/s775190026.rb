require 'bigdecimal'
require 'bigdecimal/util'

A, V = gets.chomp.split(" ").map(&:to_d)
B, W = gets.chomp.split(" ").map(&:to_d)
T = gets.chomp.to_d
a = A+V*T
b = B+W*T
if (a >= b)
    print "YES"
else
    print "NO"
end