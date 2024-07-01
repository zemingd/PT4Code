N = gets.to_i

tasks = N.times.map do
  cost, limit = gets.split.map(&:to_i)
  {cost: cost, limit: limit, start_limit: limit - cost}
end

tasks.sort_by! { |i| i[:limit] }

now_time = 0
flag = 'Yes'
tasks.each do |task|
  now_time += task[:cost]
  if now_time > task[:limit]
    flag = 'No'
    break
  end
end

p flag