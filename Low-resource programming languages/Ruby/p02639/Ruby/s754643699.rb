arr = gets.chomp.split().map(&:to_i)
puts arr.find_index(0) + 1