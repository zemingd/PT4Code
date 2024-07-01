n = gets.to_i
s = gets.chomp
ans = 'No'
ans = 'Yes' if s[0..(n - 1) / 2] == s[(n - 1) / 2 + 1..n - 1]
p ans