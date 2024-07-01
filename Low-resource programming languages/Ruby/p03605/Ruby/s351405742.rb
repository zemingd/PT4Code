n = gets.strip.split.map(&:to_s)
if n.include?("9")
  puts "Yes"
else
  puts "No"
end