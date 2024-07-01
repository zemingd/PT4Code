N = gets.chomp.split('')
puts N.first(3).uniq.size == 1 || N.last(3).uniq.size == 1 ? 'Yes' : 'No'