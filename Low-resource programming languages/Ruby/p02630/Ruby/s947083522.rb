inputs = readlines

num_of_num = inputs[0].to_i
original_array = inputs[1].split(' ').map(&:to_i)
array = original_array

orders = inputs[3..-1]

orders.each do |o|
    order = o.split(' ').map(&:to_i)
    array.map! do |a|
        a == order[0] ? order[1] : a 
    end
    puts array.sum
end