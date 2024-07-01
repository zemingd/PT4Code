N = gets.to_i
Tasks = [*0...N].map{ gets.split.map(&:to_i) }

tTasks = Tasks.transpose

sum = tTasks[0].inject(0, :+)
max_time = tTasks[1].max

puts sum <= max_time ? "Yes" : "No"
