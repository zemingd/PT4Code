k=gets.chomp.split(" ").map{|n|n.to_i}[1]
str = gets.chomp
str[k-1] = str[k-1].downcase
puts str