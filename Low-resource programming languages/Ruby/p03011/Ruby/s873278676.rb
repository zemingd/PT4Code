ls = gets.split(" ").map(&:to_i).sort!
p ls[0]+ls[1]