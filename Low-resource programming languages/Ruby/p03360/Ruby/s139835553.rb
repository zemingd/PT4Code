array = gets.chomp.split(" ").map(&:to_i)
n = gets.to_i
n.times do
array[2] = array[2] * 2
end
puts array.inject(:+)
