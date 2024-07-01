s = gets.chomp
s = s.gsub(/hi/, '')
if s.length == 0
  puts "Yes"
else
  puts "No"
end