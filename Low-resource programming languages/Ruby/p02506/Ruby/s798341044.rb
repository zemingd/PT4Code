target = gets.chomp
cnt = 0
while true
        input = gets.split(" ")
        break if input[0] == "END_OF_TEXT"
        cnt += input.find_all {|temp|
                temp =~ /\A#{target}\Z/i
        }.size
        #p cnt
end
puts cnt