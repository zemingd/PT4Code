line = gets.chomp.split("")

word = []
(0..line.length-1).each do |i|
    if line[i] == "1" || line[i] == "0"
        word << line[i]
    elsif line[i] == "B"
        unless word.empty?
            word.delete(line[i-1])
        end
    end
end

puts word.join