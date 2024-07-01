line = gets.split(' ')
if line[0].to_i + line[1].to_i + line[2].to_i > 21 then
  puts "bust"
else
  puts "win"
end