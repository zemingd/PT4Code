word = gets.chomp.downcase
cnt = 0
while (input = gets.chomp) != "END_OF_TEXT"
    input.downcase.split.each {|w| cnt+=1 if w == word}
end
puts cnt