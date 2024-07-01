#coding utf-8
t = ""
cnt = 0
w = gets.chomp.downcase
while input = gets.chomp
        break if input == "END_OF_TEXT"
        cnt = cnt + 1 if w == input.downcase
end
puts cnt