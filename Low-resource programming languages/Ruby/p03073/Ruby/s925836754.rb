tiles = gets.chomp.chars
first = tiles.first
puts [first, first == '0' ? '1' : '0'].cycle.take(tiles.size).zip(tiles).select { |a, b| a != b }.size
