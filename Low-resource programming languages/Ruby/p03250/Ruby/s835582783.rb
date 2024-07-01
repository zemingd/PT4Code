a = gets.split.map(&:to_i)
b = a.sort.reverse
p b[0]* 10 + b[1]+b[2]