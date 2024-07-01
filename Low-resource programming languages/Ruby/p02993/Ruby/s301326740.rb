s = gets.chomp.split.map(&:to_i)
#    8       0       0       8       8       0
if s[0] != s[1] && s[1] != s[2] && s[2] != s[3]
  puts "Bad"
else
  puts "Good"
end