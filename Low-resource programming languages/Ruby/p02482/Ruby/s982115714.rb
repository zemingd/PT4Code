inputLine = STDIN.gets

line = inputLine.splits(" ")

a = line[0].to_i
b = line[1].to_i

if a < b then
	print "a < b\n"
elsif a > b then
	print "a > b\n"
else
	print "a == b\n"
end