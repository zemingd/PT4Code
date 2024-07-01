n, a, b = gets.chomp.split(' ').map(&:to_i)
n * a >= b ? print(b) : print(n * a)