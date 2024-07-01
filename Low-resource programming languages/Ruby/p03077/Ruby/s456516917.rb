require 'bigdecimal'
require 'bigdecimal/util' 
N = gets.to_d
A = gets.to_d
B = gets.to_d
C = gets.to_d
D = gets.to_d
E = gets.to_d

puts sprintf("%d", (N/([A,B,C,D,E].min)).ceil+4)