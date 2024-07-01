s = gets.chomp
t = gets.chomp
p (0..s.length).select{|i| s[i]==t[i]}