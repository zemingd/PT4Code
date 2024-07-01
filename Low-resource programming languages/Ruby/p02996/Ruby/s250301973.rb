def megalomania(tasks)
  tasks.sort_by! { |task| task[1] }
  time = 0
  tasks.each do |task|
    if time + task[0] <= task[1]
      time += task[0]
    else
      return 'No'
    end
  end
  'Yes'
end

n = gets.to_i
tasks = []
n.times{ tasks << gets.split.map(&:to_i) }

puts megalomania(tasks)