line = gets.chomp.split(" ").map{|n| n.to_i}
a=line[0]
b=line[1]
c=line[2]
d=line[3]

if ((a-c).abs <= d) || ((a-b).abs<=d && (b-c).abs<=d)
  puts 'Yes'
else
  puts 'No'
end

