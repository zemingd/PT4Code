A, B, C, D = gets.split.map(&:to_i)
puts [ 0, [B, D].min - [A, C].max ].max