s,l = gets.split(" ").map(&:to_i)
array =[]
(0..s-1).each do |n|
    array[n] = gets.chomp.split("")
end
puts array.sort.join