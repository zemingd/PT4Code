s = gets.chomp
s.gsub!("eraser", "")
s.gsub!("erase", "")
s.gsub!("dreamer", "")
s.gsub!("dream", "")

if s.empty? then
  puts "YES"
else
  puts "NO"
end
