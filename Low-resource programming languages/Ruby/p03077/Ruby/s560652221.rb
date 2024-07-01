N = gets.to_i
A = gets.to_i
B = gets.to_i
C = gets.to_i
D = gets.to_i
E = gets.to_i

min = [A, B, C, D, E].min
rest = N - min
rest_count = (rest % min == 0) ? rest / min : (rest / min) + 1
ans = rest <= 0 ? 5 : 5 + rest_count
puts ans
