x, y = gets.chomp.split.map{|x| x.to_i(16)}
puts (x == y) ? "=" : (x > y) ? ">" : "<"