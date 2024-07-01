A1, A2, A3 = gets.chomp.split.map(&:to_i)

tasks = [A1, A2, A3].sort

puts (tasks[1] - tasks[0]) + (tasks[2] - tasks[1])
