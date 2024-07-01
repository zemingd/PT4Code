N = gets.to_i
tasks = []
N.times do
  tasks.push(gets.split(' ').map(&:to_i))
end

tasks.sort_by! do |_, y|
  y
end

(1...N).each do |idx|
  tasks[idx][0] += tasks[idx - 1][0]
  if tasks[idx][0] > tasks[idx][1]
    print 'No'
    return
  end
end

print 'Yes'
