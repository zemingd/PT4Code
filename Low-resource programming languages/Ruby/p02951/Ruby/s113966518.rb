(A, B, C) = gets.chomp.split(/ /).map(&:to_i)
puts [0, B + C - A].max