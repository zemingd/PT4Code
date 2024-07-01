s = gets.chomp
if (s.to_i % s.chars.map{|d| d.to_i }.sum) == 0
  puts "Yes"
else
  puts "No"
end
