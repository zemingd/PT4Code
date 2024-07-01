array = gets.split.map(&:to_i)
array.each_index do |i|
    if array[i] == 0
        puts i + 1
    end
end
