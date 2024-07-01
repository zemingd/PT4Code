A, B, C = gets.split.map &:to_i

divAB = A - B

puts (C < divAB)? 0 : C - divAB
