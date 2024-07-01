target = gets.chomp
cnt = 0
while true
        input = gets.chomp.downcase
        break if input == "end_of_text"
        cnt += input.split(" ").find_all {|temp| temp == target}.size
end
puts cnt