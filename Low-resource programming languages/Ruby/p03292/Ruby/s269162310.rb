tasks = gets.split(" ").map(&:to_i)
tasks.sort!
puts (tasks[1] - tasks[0]) + (tasks[2] - tasks[1])