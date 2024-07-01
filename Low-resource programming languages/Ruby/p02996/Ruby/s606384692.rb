task_num = gets.chomp.to_i
tasks = Array.new
task_num.times do
  tasks << gets.chomp.split(' ').map(&:to_i)
end

def abort
  puts 'No'
  exit
end

sorted_tasks = tasks.sort_by{|task| task[1]}
current_time  = 0
sorted_tasks.each do |difficulty, limit|
  abort if current_time + difficulty > limit
  current_time += difficulty
end
puts 'Yes'
