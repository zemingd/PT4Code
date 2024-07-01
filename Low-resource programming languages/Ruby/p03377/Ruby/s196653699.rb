a, b, x = gets.split.map(&:to_i)
puts 0 <= x - a && x - a < b ? 'YES' : 'NO'