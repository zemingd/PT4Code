a = gets.chomp.to_i
b = gets.chomp.to_i
puts [1,2,3].select{|n| n != a && n != b}