task_count = gets.to_i

a = task_count.times.map do
  gets.split.map(&:to_i)
end.sort_by{|task| task[1]}

time = 0
res = true

a.each do |task|
  time += task[0]
  
  res = false if time > task[1]
end

puts (res ? "Yes" : "No")