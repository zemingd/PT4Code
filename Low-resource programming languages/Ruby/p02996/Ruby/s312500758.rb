n = gets.chomp.to_i
task = []
n.times do
    task << gets.chomp.split(" ").map(&:to_i)
end
task.sort_by!{|a, b| b}

sum_time = 0
ans = true
task.each do |a, b|
    sum_time += a
    ans = false if sum_time > b
end
puts ans ? "Yes" : "No"