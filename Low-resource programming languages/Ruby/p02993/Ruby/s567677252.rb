srray=gets.split.map(&:to_i)
if srray[0] == srray[1]
  puts "Bad"
elsif srray[1] == srray[2]
  puts "Bad"
elsif srray[2] == srray[3]
  puts "Bad"
else
  puts "Good"
end
