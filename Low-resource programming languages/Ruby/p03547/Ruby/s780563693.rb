x, y = gets.split.map(&:chomp)

puts %w(= > <)[x <=> y]
