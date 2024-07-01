N = gets.to_i
A = gets.to_i
B = gets.to_i
C = gets.to_i
D = gets.to_i
E = gets.to_i

puts sprintf("%f", (N/([A,B,C,D,E].min)).ceil+5)