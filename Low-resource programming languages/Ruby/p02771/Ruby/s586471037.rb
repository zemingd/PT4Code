line = gets.split(' ').map(&:to_i)
if line[0]==line[1] && line[1]!=line[2] then
  puts "Yes"
elsif line[0]==line[2] && line[0]!=line[1] then
  puts "Yes"
elsif line[1]==line[2] && line[0]!=line[1] then
  puts "Yes"
else
  puts "No"
end