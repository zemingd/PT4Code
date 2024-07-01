s = gets.chomp.split(&:to_i)
if s[0] == s[1] && s[1] == s[2]
  puts "No"
else
  puts "Yes"
end