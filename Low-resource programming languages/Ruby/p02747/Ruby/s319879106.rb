s = STDIN.gets.strip
if s.gsub(/hi/, "").empty?
  puts "Yes"
else
  puts "No"
end