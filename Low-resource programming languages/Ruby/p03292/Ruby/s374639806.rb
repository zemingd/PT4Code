tasks = gets.split.map(&:to_i).sort
sum = 0

sum += tasks[1] - tasks[0]
sum += tasks[2] - tasks[1]

puts sum