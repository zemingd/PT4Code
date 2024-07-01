array = gets.split.map(&:to_i)
arr.sort!
puts array[1] - array[0] + array[2] - array[1]