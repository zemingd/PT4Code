a = gets.chomp
b = gets.chomp
puts [1,2,3].reject{|e| e == a || e == b}[0]
