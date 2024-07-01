s = gets.chomp
t = gets.chomp
l = s.length

if s == t[0...l]
  puts "Yes"
else
  puts "No"
end
