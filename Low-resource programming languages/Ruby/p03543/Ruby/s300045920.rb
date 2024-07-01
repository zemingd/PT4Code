s = gets.chomp.chars.map(&:to_i)
if s[1] == s[2] && (s[0] == s[1] || s[2] == s[3])
  puts "Yes"
else
  puts "No"
end
