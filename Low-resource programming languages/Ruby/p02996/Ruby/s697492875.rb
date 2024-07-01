n = gets.to_i
task = n.times.map {gets.split.map(&:to_i)}.sort_by {|e| e[1]}

t = 0
puts task.map {|a, b| (t += a) <= b}.all? ? "Yes" : "No"