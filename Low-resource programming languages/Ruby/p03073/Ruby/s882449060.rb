s=gets.chomp.chars
a=s.size.times.select{|i| (s[i] == '0' && i % 2 == 0) || (s[i] == '1' && i % 2 == 1)}.size
b=s.size.times.select{|i| (s[i] == '1' && i % 2 == 0) || (s[i] == '0' && i % 2 == 1)}.size
p [a,b].min