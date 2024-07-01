A,B,C,D = gets.chomp.split(" ").map(&:to_i)
#p [A,B,C,D]
not_div_C = B/C-(A-1)/C
not_div_D = B/D-(A-1)/D
lcm_CD = C.lcm(D)
not_div_C_D = B/lcm_CD-(A-1)/lcm_CD

puts (B-A+1) - (not_div_C + not_div_D - not_div_C_D)