a,b = gets.split.map(&:to_i).sort
puts a == b ? b**2 : b**2 -1