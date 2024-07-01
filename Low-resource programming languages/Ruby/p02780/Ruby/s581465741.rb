n, k = gets.split(" ").map(&:to_i)
array = gets.split(" ").map(&:to_i).map{|n| (1 + n) / 2.to_f }
rerult_sum = array[0..(k-1)].inject(:+)
array_add = [rerult_sum]

(n - k).times do |i|
    rerult_sum -= array[i]
    rerult_sum += array[i+k]
    array_add << rerult_sum
end

p array_add
puts array_add.max
