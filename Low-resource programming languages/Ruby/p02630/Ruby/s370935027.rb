inputs = readlines
original_array = inputs[1].split(' ').map(&:to_i)
array = original_array

orders = inputs[3..-1].map{|o| o.split(' ').map(&:to_i)}

orders.each do |o|
    sum = 0
    array.map! do |a|
        if a == o[0]
            s = o[1]
        else
            s = a
        end
        sum += s
        s
    end
    puts sum
end