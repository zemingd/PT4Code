N = gets.chomp.to_i
puts gets.chomp.split.uniq.count == 3 ? : "Three" : "Four"