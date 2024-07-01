N = gets.to_i

dist = {}

N.times do |i|
  dist[i + 1] = gets.to_i
end

queue = [[1, 0]]
check_list = {}

until queue.empty?
  id, d = queue.shift
  next if check_list[id]
  check_list[id] = d

  queue << [dist[id], d + 1]
end

if check_list[2]
  puts check_list[2]
else
  puts -1
end
