words = gets.chomp

array = words.chars

wordsum = " "

for value in array do
    
    case value
        when "1"
            wordsum += value
        when "0"
            wordsum += value
        when "B"
            wordsum= wordsum.chop
        else
            exit!
    end

end

print wordsum