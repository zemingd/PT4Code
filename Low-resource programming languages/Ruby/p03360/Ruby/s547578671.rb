array = gets.chomp.split(" ").map(&:to_i)
n = gets.to_i
n.times {
array[0] = array[] * 2
}
puts array.inject(:+)
