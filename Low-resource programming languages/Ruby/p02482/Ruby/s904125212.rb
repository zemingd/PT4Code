x = gets
y = x.split.map(&:to_i)
a = y[0]
b = y[1]

if a > b
	puts "a > b"
elsif a < b
	puts "a < b"
else a == b
	puts "a == b"
end