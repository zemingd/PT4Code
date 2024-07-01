numbers = STDIN.gets.split.map(&:to_i)
numbers.sort!
puts numbers[0] numbers[1] numbers[2]