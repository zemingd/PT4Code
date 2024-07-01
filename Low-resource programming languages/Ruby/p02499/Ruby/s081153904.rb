arry = []
arry = gets.downcase
("a".."z").each do |char|
	puts "#{char} : #{arry.count(char)}"
end