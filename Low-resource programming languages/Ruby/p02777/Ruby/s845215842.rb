S, T = gets.chomp.split(' ')
A, B = gets.chomp.split(' ').map(&:to_i)
U = gets.chomp

hash = {}
hash[S] = A
hash[T] = B
hash[U] -= 1

puts "#{hash[S]} #{hash[T]}"
