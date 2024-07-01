a, b, c = gets.split(" ").map(&:to_i)
k = gets.to_i
values = [a, b, c].sort {|a, b| b <=> a }
max_value =  values[0]
sum = max_value * 2 ** k + values[1] + values[2]
puts sum