tasks = gets.split(" ").map(&:to_i).sort
sum = tasks[2] - tasks[1]
sum += tasks[1] - tasks[0]
puts sum