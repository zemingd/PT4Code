line = gets.chomp.split("")
p line

word = []
(0..line.length-1).each do |i|
    if line[i] == "1" || line[i] == "0"
        word << line[i]
    else
        word.pop
    end
end

puts word.join