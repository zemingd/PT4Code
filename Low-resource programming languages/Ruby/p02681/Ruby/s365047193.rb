s = gets.chomp
t = gets.chomp

if (s.size + 1 == t.size and t.start_with? s)
  puts "Yes"
else
  puts "No"
end
  