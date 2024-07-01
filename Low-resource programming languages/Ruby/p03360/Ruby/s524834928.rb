array = []
array = gets.split(" ").map(&:to_i)
n = gets.to_i
array.sort!
n.times {
array[2] = array[2] * 2
}
puts  array.inject(:+)
