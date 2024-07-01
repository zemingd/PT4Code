str, k = gets.chomp, gets.chomp.to_i
str =~ /^(1+)/
i = $1 ? $1.length : 0
puts str[i >= k ? 0 : i]