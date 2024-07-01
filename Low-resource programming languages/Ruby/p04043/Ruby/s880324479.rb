word = gets.split
seven_count = 0
five_count = 0
word.each do |w|
  seven_count += 1 if w == "7"
  five_count += 1 if w == "5"
end

if seven_count == 1 and five_count == 2
  puts "YES"
else
  puts "NO"
end