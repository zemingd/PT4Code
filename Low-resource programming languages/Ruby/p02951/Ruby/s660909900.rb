line = gets.split(" ").map(&:to_i)
a = line[0]
b = line[1]
c = line[2]

if a - b <= 0
  	puts 0
else
	puts c - (a - b)
end