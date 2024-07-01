n = gets.to_i

tasks = []

n.times { tasks << gets.split.map(&:to_i)}

current_time = 0

finished_tasks = []

while finished_tasks.size <= n do
    should_do_task_idx = -1
    min_diff_with_deadline = 10**10
    tasks.each_with_index do |task, idx|
        next if finished_tasks.include?(idx)
        cost, due = task
        diff = due - (current_time + cost)
        if min_diff_with_deadline > due && diff >= 0 
            min_diff_with_deadline = due
            should_do_task_idx = idx
        end
    end

    break if should_do_task_idx == -1
    current_time += tasks[should_do_task_idx][0]
    finished_tasks << should_do_task_idx
end
puts finished_tasks.size == n ? "Yes" : "No"