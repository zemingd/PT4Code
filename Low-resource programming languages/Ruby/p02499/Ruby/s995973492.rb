arry = ""
while (str = gets) != nil
	arry += "#{str}".downcase
end
("a".."z").each do |char|
	puts "#{char} : #{arry.count(char)}"
end