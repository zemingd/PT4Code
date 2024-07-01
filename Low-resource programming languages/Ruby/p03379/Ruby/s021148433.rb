median = (gets.chomp.to_i) / 2
x = gets.chomp.split(" ").map(&:to_i)
sortArray = x.sort
x.each do |i|
    if i < sortArray[median] then
        puts sortArray[median]
    else
        puts sortArray[median - 1]
    end
end