b = gets.split.map(&:to_i)
#p b
if (b[0] - b[2]).abs <= b[3]
 puts "Yes"
elsif (b[0] - b[1]).abs <= b[3] &&  (b[2] - b[1]).abs <= b[3]
 puts "Yes"
else
 puts "No"
end

