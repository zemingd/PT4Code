a = gets.split.map
puts a.sort{|x, y| x.to_i <=> y.to_i}*" "
