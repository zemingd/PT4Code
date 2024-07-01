text = gets
cnt = 0
temp = ""
while temp != "END_OF_TEXT"
    a = gets.split(" ")
    a.each { |w|
        temp = w
        cnt += 1 if w.downcase == word
    }
end
puts cnt