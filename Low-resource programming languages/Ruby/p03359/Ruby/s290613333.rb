month, date = gets.split.map(&:to_i)
puts month <= date ? month : month - 1
