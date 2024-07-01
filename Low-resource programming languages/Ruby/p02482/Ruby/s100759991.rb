x = gets.chomp.split(" ")
a = x[0].to_i
b = x[1].to_i
if a < b
	puts "a < b"
elsif a>b
	puts "a > b"
elsif a == b
	puts "a == b"
end
	