N = gets.chomp.to_i
A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
D = gets.chomp.to_i
E = gets.chomp.to_i

min_num = [A, B, C, D, E].min
group_num = N / min_num + (N % min_num == 0 ? 0 : 1)
minutes = group_num + 4
p minutes
