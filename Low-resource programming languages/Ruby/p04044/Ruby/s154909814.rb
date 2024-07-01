s,l = gets.split(" ").map(&:to_i)
array =[]
(0..l-1).each do |n|
    array[n] = gets.chomp.split("").sort.join
end
puts array.sort.join