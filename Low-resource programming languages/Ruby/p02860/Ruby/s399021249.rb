n = gets.to_i / 2
s = gets.chomp
puts(s[0,n]==s[n,n] ? :Yes : :No)