gets.chomp
N = gets.chomp.split(" ").map{|v|v=v.to_i}
puts N.reverse.join(" ")