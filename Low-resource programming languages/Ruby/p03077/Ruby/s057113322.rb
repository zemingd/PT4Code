N = gets.to_i
A = gets.to_i
B = gets.to_i
C = gets.to_i
D = gets.to_i
E = gets.to_i
min = [A, B, C, D, E].min
m = N / min
c = N % min == 0 ? m : m + 1
puts(c + 4)
