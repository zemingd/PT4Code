w = gets.downcase
text = []
loop gets
    text << $_.split(" ")
    break if text == "END_OF_TEXT"
end

count = 0
for str in line.flatten
    if w == str.downcase
        count += 1
    end
end
 
puts cnt