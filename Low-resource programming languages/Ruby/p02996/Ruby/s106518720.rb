n = gets.to_i
tasks = []
n.times do
  a, b = gets.chomp.split(' ').map(&:to_i)
  tasks.push([a, b])
end
tasks.sort_by!{ |i| i[1] }
current_time, is_ok = 0, true
tasks.each do |i|
  current_time += i[0]
  is_ok &= current_time <= i[1]
end
puts is_ok ? 'Yes' : 'No'