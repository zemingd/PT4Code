s,l = gets.split(" ").map(&:to_i)
array  = gets.split(" ").map(&:to_i).sort.reverse
sum = 0
(0..l-1).each do |n|
    sum += array[n]
end
puts sum