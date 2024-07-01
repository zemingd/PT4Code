A, B, C, D = gets.chomp.split(' ').map(&:to_i)
p [[B, D].min - [A, C].max, 0].max
