n,k=gets.chomp.split(" ").map{|i|i.to_i}
str = gets.chomp
str[k-1] = str[k-i].downcase
puts str