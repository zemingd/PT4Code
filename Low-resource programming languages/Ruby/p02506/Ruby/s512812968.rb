#coding utf-8
t = ""
cnt = 0
w = gets.chomp
while input = gets.chomp
        break if input == "END_OF_TEXT"
        t = t + " "+ input
end
puts t.scan(/\A#{w}\z/i).size