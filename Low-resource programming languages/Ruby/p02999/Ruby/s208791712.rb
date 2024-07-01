info=gets.chomp.split(" ").map(&:to_i)
puts((info[0]<info[1]) ? "0" : "10")