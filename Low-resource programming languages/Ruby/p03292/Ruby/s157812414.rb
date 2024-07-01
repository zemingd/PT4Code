tasks = gets.split.map(&:to_i).sort
print tasks[2] - tasks[1]