s = gets.chomp.to_s + gets.chomp.to_s

if s == s.reverse
  puts "Yes"
else
  puts "No"
end