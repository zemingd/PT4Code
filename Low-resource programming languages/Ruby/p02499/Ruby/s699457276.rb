arry = []
arry = gets.downcase
while arry != nil
	("a".."z").each do |char|
		puts "#{char} : #{arry.count(char)}"
	end

arry = gets.downcase
end