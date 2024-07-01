n = gets.to_i
s = gets.chomp.chars
puts (n % 2 == 0 && s[0...n / 2] == s[n / 2...n])? "Yes" : "No"