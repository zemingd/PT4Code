input = gets.split(" ").map(&:to_i)
input.sort!
print input[0] +input[1]