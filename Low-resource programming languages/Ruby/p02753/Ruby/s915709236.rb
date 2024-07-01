sss = gets.chomp.strip
if sss.include?("A") then
  if sss.include?("B") then
    puts "Yes"
  else
    puts "No"
  end
else
  puts "No"
end