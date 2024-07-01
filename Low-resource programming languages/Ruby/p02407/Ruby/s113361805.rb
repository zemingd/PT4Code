n = gets.chomp.to_i
numbers = gets.chomp.split.map(&:to_i)
puts numbers.reverse.join(' ')

