line = gets.chomp.split("")

word = []
(0..line.length-1).each do |i|
    if line[i] == "1"
        word << "1"
    elsif line[i] == "0"
        word << "0"
    else
        unless word.empty?
         word.delete(line[i-1])
        end
    end
end

puts word.join