c = gets.chomp.split.map(&:to_i).sort!
if c[0] + c[1] == c[2]
  puts "Yes"
else
  puts "No"
end
