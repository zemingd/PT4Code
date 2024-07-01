_ = gets.to_i
arr = gets.chomp.split(' ')
arr.uniq!
puts arr.size == 4 ? 'Four' : 'Three'
