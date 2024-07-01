input = gets.chomp.split
P = input[0].to_i
Q = input[1].to_i
R = input[2].to_i

abc = P + Q
acb = R + Q
bac = P + R
times = [abc, acb, bac]

puts times.min