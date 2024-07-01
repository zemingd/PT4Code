# N, M = gets.chomp.split.map(&:to_i)
# T = gets.chomp.chars
N = gets.chomp.to_i
A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
D = gets.chomp.to_i
E = gets.chomp.to_i

min = [A, B, C, D, E].min
additional = (N + min - 1)/min - 1
p 5 + additional