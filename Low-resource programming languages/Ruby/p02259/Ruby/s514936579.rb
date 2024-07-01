n = gets.to_i
array=gets.chomp.split(" ").map(&:to_i)
count = 0
(0..(n-2)).each do |i|
    ((i+1)..(n-1)).to_a.reverse.each do |j|
        if array[j] < array[j-1]
            count += 1
            tmp = array[j]
            array[j] = array[j-1]
            array[j-1] = tmp
        end
    end
end
puts array.join(" ")
puts count
