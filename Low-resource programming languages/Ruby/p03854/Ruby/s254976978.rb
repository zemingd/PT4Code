s = gets.chomp
s.gsub!("dreameraser", "")
s.gsub!("dreamerase", "")
s.gsub!("dreamdream", "")
s.gsub!("dreamer", "")
s.gsub!("eraser", "")
s.gsub!("erase", "")
s.gsub!("dream", "")
if s.empty? then
  puts "YES"
else
  puts "NO"
end
