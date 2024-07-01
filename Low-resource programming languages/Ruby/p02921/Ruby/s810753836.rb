s = gets.chomp
t = gets.chomp
p (0...s.length).count{|i| s[i]==t[i]}