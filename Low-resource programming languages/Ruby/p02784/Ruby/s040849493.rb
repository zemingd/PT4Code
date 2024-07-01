line = readlines
h = line[0].chomp.split(" ")[0].to_i
if line[1].chomp.split(" ").map(&:to_i).sum >= h
  puts "Yes"
else
  puts "No"
end