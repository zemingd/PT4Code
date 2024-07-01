S = gets.chomp.to_s.gsub!(/hi/, "")
if S == ""
  puts "Yes"
else
  puts "No"
end
