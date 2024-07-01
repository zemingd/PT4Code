n = gets.to_i
array = gets.split(' ').map {|a| a.to_i }

flag = true
change_times = 0

while flag do
    flag = false
    (n-1).downto(1) do |i|
        if array[i] < array[i-1] then
            array[i-1], array[i] = array[i], array[i-1]
            flag = true
            change_times = change_times + 1
        end
    end
end

puts array.join(' ')
puts change_times