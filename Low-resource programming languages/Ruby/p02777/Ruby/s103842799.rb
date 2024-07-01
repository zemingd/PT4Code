line = []

line = readlines.map(&:chomp)

line[1] = line[1].split(" ")
line[2] = line[2].split(" ")

p line[1]

red_nums = line[1][0].to_i
blue_nums = line[1][1].to_i

choice = line[2]

if choice == "red"
  red_nums -= 1
else
  blue_nums -= 1
end

print "#{red_nums} #{blue_nums}"