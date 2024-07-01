N=gets.chomp.to_i
task_matrix = []
N.times do
  task_matrix << gets.chomp.split.map(&:to_i)
end

flg = true
total_time = 0

task_matrix.sort_by(&:last).each do |task|
  total_time += task.first
  if total_time > task.last
    flg = false
    break
  end
end

if flg
  puts "Yes"
else
  puts "No"
end