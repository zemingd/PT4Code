word = gets.chomp
count = 0
temp = ""
while temp != "END_OF_TEXT"
	a = gets.chomp.split(" ")
	a.each { |w|
		temp = w
		count += 1 if w.downcase == word
	}
end
puts count