a,b = gets.chomp.split(" ").map{|x|x.to_i}
puts b if a>12
puts b/2 if a<=12 && a>=6
puts 0 if a<6