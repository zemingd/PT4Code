x, y = gets.split.map{ |a| a.hex }
puts (x < y ? "<" : (x > y ? ">" : "="))
