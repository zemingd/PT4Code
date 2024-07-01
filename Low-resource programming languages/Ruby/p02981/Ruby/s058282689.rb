N, A, B = gets.chomp.split(' ').map(&:to_i)
a = N * A
puts a > B ? B : a
