line = readlines.map(&:chomp)

line[0] = line[0].split(" ")
line[1] = line[1].split(" ")
line[2] = line[2].split(" ")


red_nums = line[1][0].to_i
blue_nums = line[1][1].to_i

choice = line[2]

if choice == line[0][0]
  red_nums -= 1
else
  blue_nums -= 1
end

puts "#{red_nums} #{blue_nums}"
