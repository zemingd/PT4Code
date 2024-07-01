i = []
gets.split(" ").each do |n|
  i << n.to_i
end
if (i[0] - i[1]) > 1
  puts i[0] + (i[0] - 1)
elsif (i[0] - i[1]) < -1
  puts i[1] + (i[1] - 1)
else
  puts i[0] + i[1]
end

