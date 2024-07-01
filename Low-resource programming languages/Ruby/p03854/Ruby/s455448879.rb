string = gets.chomp.to_s

string.gsub!("dreamer","")
string.gsub!("dream","")
string.gsub!("eraser","")
string.gsub!("erase","")

if string.empty?
  puts "YES"
else
  puts "NO"
end
