def gls
  gets.chomp
end

s = gls
if s.include?("A") and s.include?("B")
  puts "Yes"
else
  puts "No"
end
