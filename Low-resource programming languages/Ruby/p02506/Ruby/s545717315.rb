count = 0
word = STDIN.gets.chomp.upcase

while true do
    words = STDIN.gets.chomp
    if words == "END_OF_TEXT"
        puts count
        break
    else
        words = words.split
        for w in words do
            if w.chomp.upcase == word
                count += 1
            end
        end
    end
end