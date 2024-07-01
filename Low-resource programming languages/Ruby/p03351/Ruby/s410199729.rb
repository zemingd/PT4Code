line = gets.chomp.split(" ")
a = line[0].to_i
b = line[1].to_i
c = line[2].to_i
d = line[3].to_i

if (a - c).abs <= d || (a - b).abs <= d && (b - c).abs <= d
  puts "Yes"
else
  puts "No"
end