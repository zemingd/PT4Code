data = gets.chomp.split(" ")
data[0] = data[0].to_i
data[1] = data[1].to_i
case data[0] <=> data[1]
when -1
	puts "a < b"
when 0
	puts "a == b"
when 1
	puts "a > b"
end