a, b, c = gets.chomp.split.map(&:chars)
puts a.last == b.first && b.last == c.first ? 'YES' : 'NO'
