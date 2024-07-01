s = gets.chomp.split("")
if s.include?("a") && s.include?("b") && s.include?("c")
  puts "Yes"
else
  puts "No"
end