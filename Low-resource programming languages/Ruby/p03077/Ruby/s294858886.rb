N = STDIN.gets.chomp.to_i
A = STDIN.gets.chomp.to_i
B = STDIN.gets.chomp.to_i
C = STDIN.gets.chomp.to_i
D = STDIN.gets.chomp.to_i
E = STDIN.gets.chomp.to_i

mini = [A, B, C, D, E].min

# 5は都市１から都市６までのステップ
puts ((N.to_f / mini.to_f).ceil - 1 + 5