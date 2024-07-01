arry = ""
arry = gets.downcase
while true
arry += gets.downcase
end

("a".."z").each do |char|
	puts "#{char} : #{arry.count(char)}"
end