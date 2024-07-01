S, T = gets.chomp.split(" ")
A, B = gets.chomp.split(" ").map(&:to_i)
U = gets.chomp

printf("%d %d\n", U == S ? A - 1 : A, U == T ? B - 1 : B)
