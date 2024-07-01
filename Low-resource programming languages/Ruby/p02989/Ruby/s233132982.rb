N = gets.chomp.to_i
input = gets.chomp.split.map(&:to_i).sort
a = input[(N / 2) - 1]
b = input[N / 2]
p b - a
