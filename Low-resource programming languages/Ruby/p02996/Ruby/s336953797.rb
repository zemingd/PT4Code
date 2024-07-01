N = gets.to_i

tasks = N.times.map do
  cost, limit = gets.split.map(&:to_i)
  [cost, limit]
end

tasks = tasks.sort_by { |i| i[1] }

now_time = 0
flag = "Yes"
tasks.each do |task|
  now_time += task[0]
  if now_time > task[1]
    flag = "No"
    break
  end
end

puts flag