s = gets.to_s.chomp

r = s.count('R')

if r != 2
  puts r
else
  puts (s[1] == 'R' ? 2 : 1)
end
