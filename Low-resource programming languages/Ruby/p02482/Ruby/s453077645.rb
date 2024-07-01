a , b = gets.split().map{|e| e.to_i}
if a < b
	puts "a < b"
elsif a > b
	puts "a > b"
elsif a == b
	puts "a == b"
end