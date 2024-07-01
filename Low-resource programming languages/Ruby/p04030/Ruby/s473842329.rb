line = gets.chomp.split("")
 
word = []
line.each do |i|
    if i == "1" || i == "0"
        word << i
    elsif i == "B"
		word.pop
    end
end
 
puts word.join