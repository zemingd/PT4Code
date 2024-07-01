S, T = gets.split
A, B = gets.split.map(&:to_i)
U = gets.chomp
balls = {}
balls[S] = A
balls[T] = B
balls[U]-= 1
puts [balls[S], balls[T]].join(" ")