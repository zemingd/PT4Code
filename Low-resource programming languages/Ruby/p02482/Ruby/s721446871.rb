input = gets
str = input.split(" ")
a = str[0].to_i
b = str[1].to_i

if a < b
	puts "a < b"
elsif a > b
	puts "a > b"
elsif a == b
	puts "a == b"
end