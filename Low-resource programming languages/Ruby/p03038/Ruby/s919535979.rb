n, m = gets.chomp.split(" ").map {|item| item.to_i }
cardAList = gets.chomp.split(" ").map {|item| item.to_i }.sort!
bcList = []
m.times do |j|
    bcList[j] = gets.chomp.split(" ").map {|item| item.to_i }
end
bcList.sort!{|a, b| b[1] <=> a[1]}

replaced_index = 0
replaced_index2 = 0
bcList.each do |bc|
    (bc[0]).times do |i|
        index = i + replaced_index
        if cardAList[index] < bc[1]
            cardAList[index] = bc[1]
            replaced_index2 = index + 1
        else
            break
        end
    end
    if replaced_index2 > replaced_index
        replaced_index = replaced_index2
    end
end

puts cardAList.inject(:+)