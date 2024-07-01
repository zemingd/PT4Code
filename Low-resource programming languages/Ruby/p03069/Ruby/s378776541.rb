n = gets.to_i
s = gets.chomp
bc = s.count('#')
wc = n - bc
wc -= 1 if s[0] == '.' && wc > 0
bc -= 1 if s[n-1] == '#' && bc > 0
puts [wc, bc].min.to_s
