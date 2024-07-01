n = gets.chomp.to_i
s = gets.chomp

h = (n-1) / 2
s[0..h] == s[(h+1)...n] ? print('Yes') : print('No')
