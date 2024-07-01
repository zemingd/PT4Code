N = gets.to_i
tasks = []
N.times do
  tasks.push(gets.split(' ').map(&:to_i))
end

tasks.sort_by! do |_, y|
  y
end

sum = 0

(0...N).each do |idx|
  sum += tasks[idx][0]
  if sum > tasks[idx][1]
    print 'No'
    exit
  end
end

print 'Yes'
