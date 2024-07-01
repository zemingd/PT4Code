s = gets.chomp
# puts s[0..((s.size - 1) / 2) - 1]
# puts s[((s.size + 3) / 2) - 1..-1]
if s.reverse == s && s[0..((s.size - 1) / 2) - 1].reverse == s[0..((s.size - 1) / 2) - 1] && s[((s.size + 3) / 2) - 1..-1].reverse == s[((s.size + 3) / 2) - 1..-1]
  puts "Yes"
else
  puts "No"
end
