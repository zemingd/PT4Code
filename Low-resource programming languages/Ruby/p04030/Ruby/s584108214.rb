line = gets.chomp.split("")
 
word = []
word.each do |i|
    if i == "1" || i == "0"
        word << i
    elsif i == "B"
        unless word.empty?
            word.pop
        end
    end
end
 
puts word.join