s = gets.chomp.split("")
t = gets.chomp.split("")
puts 3.times.map{|i| s[i] == t[i] ? 1 : 0}.inject(:+)