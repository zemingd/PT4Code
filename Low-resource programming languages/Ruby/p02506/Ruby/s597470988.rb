#coding utf-8
t = ""
cnt = 0
w = gets.chomp
while input = gets.chomp
        break if input == "END_OF_TEXT"
        cnt = cnt + input.scan(/#{w}/i).size
end
puts cnt