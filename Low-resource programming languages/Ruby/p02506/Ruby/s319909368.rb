#coding utf-8
t = ""
cnt = 0
w = gets.chomp
while input = gets.split(" ")
        break if input[0] == "END_OF_TEXT"
        cnt = cnt + input.grep(/\A#{w}\Z/i).size
end
puts cnt