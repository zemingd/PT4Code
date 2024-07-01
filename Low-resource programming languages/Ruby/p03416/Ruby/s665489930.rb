A, B = gets.split

puts (A..B).count { |x| x == x.reverse }
