line = gets.split.map(&:to_i)
#puts line
d = line[0]
t = line[1]
s = line[2]

if t * s >= d then
	puts "Yes"
else 
	puts "No"
end