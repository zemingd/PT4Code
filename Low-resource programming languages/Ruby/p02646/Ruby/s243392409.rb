require 'bigdecimal'
require 'bigdecimal/util'

A, V = gets.chomp.split(" ").map(&:to_d)
B, W = gets.chomp.split(" ").map(&:to_d)
T = gets.chomp.to_d
d = (A-B).abs
v = (V-W)*T
if (v >= d)
    print "YES"
else
    print "NO"
end
