line = readlines.map(&:chomp)
half_num = line[0].to_i/2
front_str = line[1].slice(0,half_num)
back_str = line[1].slice(half_num,half_num)
 
if front_str == back_str
  puts "Yes"
else
  puts "No"
end