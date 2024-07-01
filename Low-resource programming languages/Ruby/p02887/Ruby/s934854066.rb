n = gets.to_i
s = gets.chomp.chars
p [*0..n-1].count{|i|s[i]!=s[i+1]}
