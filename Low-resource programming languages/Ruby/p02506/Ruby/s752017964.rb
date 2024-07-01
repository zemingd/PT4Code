target = gets.chomp
cnt = 0
while true
        input = gets.chomp
        break if input == "END_OF_TEXT"
        cnt += input.split(" ").find_all {|temp| temp == target}.size
end
puts cnt