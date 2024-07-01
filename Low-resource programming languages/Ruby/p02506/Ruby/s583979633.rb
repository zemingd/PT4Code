text = gets
cnt = 0
mes = ""
while mes != "END_OF_TEXT"
    a = gets.chomp.split(" ")
    a.each { |w|
        mes = w
        cnt += 1 if w.downcase == text
    }
end
puts cnt