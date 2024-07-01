ab, bc, ca = gets.split(' ')
min = ab.to_i + bc.to_i;

min = bc.to_i + ca.to_i if min > bc.to_i + ca.to_i
min = ca.to_i + ab.to_i if min > ca.to_i + ab.to_i

p min