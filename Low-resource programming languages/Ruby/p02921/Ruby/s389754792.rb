s = gets.chomp.split("")
t = gets.chomp.split("")

puts (0..2).count {|i| s[i] == t[i] }