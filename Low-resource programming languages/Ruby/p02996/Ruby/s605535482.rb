n = gets.to_i
task = n.times.map {gets.split.map(&:to_i)}.sort_by {|e| e[1]}

t = 0
puts task.all? {|a, b| (t += a) <= b} ? "Yes" : "No"