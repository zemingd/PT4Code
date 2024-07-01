#coding utf-8
t = ""
w = gets.chomp
while input = gets.chomp
        break if input == "END_OF_TEXT"
        t = t + " " + input
end
#puts t
puts t.scan(/#{w}/i).size