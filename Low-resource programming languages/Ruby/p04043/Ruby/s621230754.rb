ABC = gets.split.map(&:to_i)

puts (ABC.count(5) == 2 && ABC.count(7) == 1) ? 'YES' : 'NO'